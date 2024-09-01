RW <- function(N, x0, mu, variance){
	z <-cumsum(rnorm(n=N, mean=0, sd=sqrt(variance)))
	t<-1:N
	x<-x0+t*mu+z
	return(x)
}

#mu is the drift of the drunkards walk

#simulation of the drunkards walk
P1<-RW(100, 10, 0, 0.00004)
P2<-RW(100, 10, 0, 0.00004)

plot(P1, main="Random Walk without drift as a parameter", xlab="t", ylab="Price", ylim=c(9.7, 10.3), typ='l', col="red")

#to keep drawing on the same visualization
par(new=TRUE) 
plot(P2, axes=FALSE, ann=FALSE, ylim=c(9.7, 10.3), typ='l', col="blue")
dev.off()
