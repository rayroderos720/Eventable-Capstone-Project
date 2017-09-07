Matrix <- matrix(,nrow=50,ncol=2)
##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 7
a <- "results7.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}
Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 8
a <- "results8.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}

Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 9
a <- "results9.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}

Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 10
a <- "results10.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}

Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)





##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 11
a <- "results11.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}

Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 12
a <- "results12.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}

Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 13
a <- "results13.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}
Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 14
a <- "results14.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}
Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 15
a <- "results15.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}
Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 16
a <- "results16.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}
Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 17
a <- "results17.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}
Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 18
a <- "results18.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}
Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 19
a <- "results19.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}
Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)




##-----------------------------------------------------------------------------##
#kproto.char.4

k <- 20
a <- "results20.csv"

data.char.kproto.4 <- kproto(na.omit(full.data4[,4:17]),k=k)


# data.char.gg.4 <- ggplot(full.data4, aes(calendar_views,deliveries_count , color = as.factor(data.char.kproto.4$cluster))) + geom_point()
# data.char.gg.4

kproto.char.4.centers <- data.char.kproto.4$centers


full.data4$kproto.char.4 <- data.char.kproto.4$cluster 

for(i in 1:k){
  
  kproto.char.4.centers$calendar_views[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$calendar_views))
  kproto.char.4.centers$deliveries_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$deliveries_count))
  kproto.char.4.centers$cluster_size[i] <- data.char.kproto.4$size[[i]]
  kproto.char.4.centers$views_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$views_per_subscriber))
  kproto.char.4.centers$ping_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_count))
  kproto.char.4.centers$pings_per_subscriber[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$ping_per_subscriber))
  kproto.char.4.centers$superuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superusers_count))
  kproto.char.4.centers$lowuser_count[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowusers_count))
  kproto.char.4.centers$superuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$superuser_ratio))
  kproto.char.4.centers$lowuser_ratio[i] <- mean(na.omit(full.data4[full.data4$kproto.char.4==i,]$lowuser_ratio))
  
}
Matrix[k,1] <- k
Matrix[k,2] <- data.char.kproto.4$tot.withinss
write.table(kproto.char.4.centers,a)


