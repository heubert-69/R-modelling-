#sequence of values from -20 to 20 with difference of .1f
x <- seq(-20, 20, by=0.1)

y <- dnorm(x, mean(x), sd(x))


png(file="normal_dist.png")

plot(x, y)

dev.off() #saving the file
