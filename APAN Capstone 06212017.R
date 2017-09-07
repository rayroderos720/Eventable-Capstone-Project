#APAN 5900 - Capstone Team Proposal
#Columbia University - MS Applied Analytics Program
#Start Date: 06/21/2017
#Created  by Ray Anthony Roderos
#Modified and Added by
#
#
#
##-----------------------------------------------------------------------------##
#Set-Up

ptm <- proc.time() #start time
set.seed(1) #set seed for reproduction

#Getting working drive and setting the working drive

getwd()
setwd("C:/Users/Knight Roderos/Google Drive/Masters Studies/11 Columbia University/3 Summer Semester/APAN 5900 - Capstone/5 Dataset")

#Create function "packages" that installs the package or require if already installed
packages<-function(x){
  x<-as.character(match.call()[[2]])
  if (!require(x,character.only=TRUE)){
    install.packages(pkgs=x)
    require(x,character.only=TRUE)
  }
}

packages(plyr)
packages(dplyr)
packages(ggplot2)
packages(corrplot)
packages(clustMixType)

#Load CSVs
API.Delivered <- read.csv("API Delivered Event.csv")
API.Subscriber <- read.csv("API Subscriber.csv")
API.Subscriber$subscriber_id <- API.Subscriber$id
API.Event <- read.csv("API Event.csv")
API.CalendarView <- read.csv("API Calendar View.csv")
API.SocialShare <- read.csv ("API Social Share.csv")

API.Ping <- read.csv ('API Ping.csv')

#Merge API.Deliverd and API.Subscriber
API.Del.Sub <- merge(API.Delivered, API.Subscriber, by = "subscriber_id",all = TRUE)
#Create new column that says if subscriber got delivered events or not
API.Del.Sub$Delivered <- ifelse(is.na(API.Del.Sub$id.x),"No","Yes")

#Merge API.Delivered and API.CalendarView
API.Del.View <- merge(API.Delivered,API.CalendarView, by = "subscriber_id", all = TRUE)


API.Delivered.Summary <- API.Delivered[c('event_id','subscriber_id')]
API.Cal.Del <- merge(API.Delivered.Summary,API.CalendarView, by= "subscriber_id", all= TRUE)

Sub_views <- as.data.frame(table(API.CalendarView$subscriber_id))
lowuser_number <- summary(Sub_views$Freq)[[2]]
superuser_number <- summary(Sub_views$Freq)[[5]]

summary(Sub_views$Freq)

Sub_views$superuser <- ifelse(Sub_views$Freq >= superuser_number,TRUE,FALSE)
Sub_views$lowuser <- ifelse(Sub_views$Freq <= lowuser_number,TRUE,FALSE)
colnames(Sub_views)[1] <-'subscriber_id'


API.Cal.Del$match <- ifelse(is.na(API.Cal.Del$event_id.x)|is.na(API.Cal.Del$created),FALSE,TRUE)

API.Cal.Del2 <- API.Cal.Del[API.Cal.Del$match==TRUE,]
API.Delivered_Subs <- merge(API.Delivered,Sub_views, by='subscriber_id', all=TRUE)

API.Del.Superuser <- API.Delivered_Subs[API.Delivered_Subs$superuser==TRUE,]
API.Del.Lowuser <- API.Delivered_Subs[API.Delivered_Subs$lowuser==TRUE,]

 
unique_event <- as.data.frame(unique(API.Cal.Del2$event_id.x))
colnames(unique_event)[1] <- 'event_id.z'
unique_event <- as.data.frame(table(API.Cal.Del2$event_id.x))
colnames(unique_event)[1] <- 'event.id'
colnames(unique_event)[2] <- 'calendar_views'
unique_delivered <- as.data.frame(table(API.Delivered$event_id))
colnames(unique_delivered)[1] <- 'event.id'
colnames(unique_delivered)[2] <- 'deliveries_count'
unique_superuser <- as.data.frame(table(API.Del.Superuser$event_id))
colnames(unique_superuser)[1] <- 'event.id'
colnames(unique_superuser)[2] <- 'superusers_count'
unique_lowuser <- as.data.frame(table(API.Del.Lowuser$event_id))
colnames(unique_lowuser)[1] <- 'event.id'
colnames(unique_lowuser)[2] <- 'lowusers_count'



events1 <- merge(unique_event,unique_delivered, by = "event.id",all=TRUE)
View(events1)

unique_socialshare <- as.data.frame(table(API.SocialShare$event_id))
colnames(unique_socialshare) <- c('event.id','share_count')
events2 <- merge(events1, unique_socialshare, by = 'event.id',all=TRUE)

unique_sub_ping <- as.data.frame(table(API.Ping$subscriber_id))
unique_sub_del <- as.data.frame(table(API.Delivered.Summary$subscriber_id))
colnames(unique_sub_ping) <- c('subscriber_id','ping_count')
API.Delivered.Ping <- merge(API.Delivered.Summary,unique_sub_ping, by = "subscriber_id", all=TRUE)
API.Delivered.Ping2 <- aggregate(API.Delivered.Ping$ping_count, by= list(event.id=API.Delivered.Ping$event_id),FUN=sum)

colnames(API.Delivered.Ping2)[2] <- 'ping_count'

events3 <- merge(events2,API.Delivered.Ping2, by ='event.id',all=TRUE)


events3$views_per_subscriber <- round(events3$calendar_views/events3$deliveries_count,2)
events3$ping_per_subscriber <- round(events3$ping_count/events3$deliveries_count,2)

events4 <- merge(events3,unique_superuser, by='event.id', all=TRUE)
events4 <- merge(events4,unique_lowuser, by = 'event.id', all=TRUE)

events4$superuser_ratio <- round(events4$superusers_count/events4$deliveries_count,2)
events4$lowuser_ratio <- round(events4$lowusers_count/events4$deliveries_count,2)

View(events4)

write.table(events4,"performancevents.csv")
performance <- events4
colnames(performance)[1] <- 'id'


characteristics <- read.csv("characteristicevent.csv")
characteristics2 <- merge(characteristics,API.Event.char2, by="id",all.x=TRUE)
View(characteristics)



full.data <- merge(characteristics2,performance, by = "id")

API.Event.char <- API.Event

API.Event.char$nchardescription <- nchar(as.character(API.Event.char$description))
API.Event.char$ncharsummary <- nchar(as.character(API.Event.char$summary))

API.Event.char2 <- API.Event.char[c('id','nchardescription','ncharsummary')]


API.TestEvents <- API.Event

API.TestEvents1 <- API.TestEvents[grep("Test",API.TestEvents$description),]
API.TestEvents2 <- API.TestEvents[grep("Test",API.TestEvents$summary),]

API.TestEvents3 <- rbind(API.TestEvents1,API.TestEvents2)
API.TestEvents4 <- as.data.frame(table(API.TestEvents3$id))
API.TestEvents4$Freq <- "TRUE"
colnames(API.TestEvents4) <- c("id","is_test")

full.data2 <- merge(full.data,API.TestEvents4, by="id",all.x=TRUE )

full.data3 <- full.data2[is.na(full.data2$is_test)==TRUE,]

full.data3$is_test <- NULL

##-----------------------------------------------------------------------------##
#Check for missing values


no_col <- length(colnames(full.data3))

diagnostics <- data.frame(matrix("", ncol = 2, nrow = no_col))
colnames(full.data3)[1]
diagnostics[1,1] <- colnames(full.data3)[1]

for(i in 1:no_col){
  
  print(table(is.na(full.data3[,i])))
  print(colnames(full.data3)[i])
}

write.table(full.data3,"fulldata2.csv")



# View(API.Del.Sub)
# View(API.Del.View)
# View(API.Delivered)
# View(API.CalendarView)
# View(API.SocialShare)
# View(API.CalendarView.Delivery)
# View(API.SocialShare)
# View(API.Delivered.Summary)
# View(API.Calendar.Delivery2)
##-----------------------------------------------------------------------------##
#Do KNN

full.data4 <- full.data3
test <- na.omit(full.data3[,4:5])

test <- as.data.frame(test)
test$start_day <- as.numeric(test$start_day)
test$start_day_in_week <- as.numeric(test$start_day_in_week)

test <- scale(test)

knn.char <- kmeans(test,4,nstart=5)
knn.char$cluster


test <- na.omit(full.data3[,4:5])

test <- as.data.frame(test)
test$start_day <- as.numeric(test$start_day)
test$start_day_in_week <- as.numeric(test$start_day_in_week)


full.da
#plot clustering

k <- ggplot(full.data4, aes(lowuser_ratio,deliveries_count , color = knn.char$cluster)) + geom_point()
k


View(knn.char)
test2 <- as.data.frame(knn.char$cluster)

View(test2)
test2
##-----------------------------------------------------------------------------##
#kproto.char.4

k=4

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  
  }
View(kproto.char.4.centers)

data.char.kproto.4$tot.withinss

# kproto.char.4.centers$calendar_views[1] <- mean(na.omit(full.data4[full.data4$kproto.char.4==1,]$calendar_views))
# kproto.char.4.centers$calendar_views[2] <- mean(na.omit(full.data4[full.data4$kproto.char.4==2,]$calendar_views))
# kproto.char.4.centers$calendar_views[3] <- mean(na.omit(full.data4[full.data4$kproto.char.4==3,]$calendar_views))
# kproto.char.4.centers$calendar_views[4] <- mean(na.omit(full.data4[full.data4$kproto.char.4==4,]$calendar_views))
# 
# kproto.char.4.centers$deliveries_count[1] <- mean(na.omit(full.data4[full.data4$kproto.char.4==1,]$deliveries_count))
# kproto.char.4.centers$deliveries_count[2] <- mean(na.omit(full.data4[full.data4$kproto.char.4==2,]$deliveries_count))
# kproto.char.4.centers$deliveries_count[3] <- mean(na.omit(full.data4[full.data4$kproto.char.4==3,]$deliveries_count))
# kproto.char.4.centers$deliveries_count[4] <- mean(na.omit(full.data4[full.data4$kproto.char.4==4,]$deliveries_count))
# 
# kproto.char.4.centers$cluster_size[1] <- data.char.kproto.4$size[[1]]
# kproto.char.4.centers$cluster_size[2] <- data.char.kproto.4$size[[2]]
# kproto.char.4.centers$cluster_size[3] <- data.char.kproto.4$size[[3]]
# kproto.char.4.centers$cluster_size[4] <- data.char.kproto.4$size[[4]]

##-----------------------------------------------------------------------------##
#kproto.char.4

k=5

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  
}

data.char.kproto.4$tot.withinss

##-----------------------------------------------------------------------------##
#kproto.char.4

k=6

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  
}

data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,"results.csv",sep = ";")

##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 7
a <- "results7.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster




for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  
}

data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)

help(corrplot)



data.kmeans <- as.data.frame(na.omit(full.data4[,c(1,18,19,22,24,25,26,27)]))
model.kmeans <- kmeans(data.kmeans[,-1],7)
data.kmeans2 <- bind_cols(data.kmeans,as.data.frame(model.kmeans$cluster))


full.data5 <- merge(full.data4,data.kmeans2, by='id', ALL=TRUE)
View(full.data5[full.data5$`model.kmeans$cluster`==1,])


model.kmeans.centers <- as.data.frame(model.kmeans$centers)
model.kmeans.centers$cluster_size <- as.data.frame(model.kmeans$size)

write.csv(model.kmeans.centers,"kmeans.csv")



lm.event <- lm(full.data4$calendar_views~.,data=full.data4[,4:17])
summary(lm.event)

lm.event2 <-lm(full.data4$deliveries_count~.,data=full.data4[,4:17])
summary(lm.event2)



##--------------
---------------------------------------------------------------##
#Create visualizations

# #Historgram
# API2 <- API.Del.Sub[API.Del.Sub$id.x>0,]
# hist.api <- ggplot(data=API2,aes(x=API2$subscriber_id)) + geom_histogram(binwidth = 5)
# hist.api
# 
# # #Correlation Matrix
# # corrplot(API3,method="number")
# # 
# # API3 <- API2[,c(API2$active,API2$reaction,API2$events_per_month,API2$has_alerts,API2$Delivered)]
# 
# #Regression
# 
# ggplot(data=API3,aes(y='Delivered',
#                       x='active',color=Country))+geom_jitter()+geom_smooth(method=lm)

##-----------------------------------------------------------------------------##

proc.time() - ptm #check the computation time

##-----------------------------------------------------------------------------##
