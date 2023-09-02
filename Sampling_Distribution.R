# **Sampling distribution** 
#Obtain the sampling distribution of some statistic using repeated samples and represent it by a histogram.
#Population
#Observations on ‘mpg’ variable in ‘mtcars’ data set is taken as population values.
x<-mtcars$mpg
#Generating all possible random samples
#From the above vector of values a random sample of size 4 with replacement is generated using sample() function in R.
sample<-sample(x,size=4,replace = TRUE)
sample
#Now, we need more samples from this population to plot the sampling distribution of the statistic under study. replicate() function is used to generate some 1000 samples from this population
#samples<-replicate(1000,sample(x,size=4,replace  =  TRUE))
#Statistics such as sample mean, range, etc. can be computed for each sample using 
#replicate() function in R. For example,
sample_means<-replicate(1000,mean(sample(x,size=4,replace  = TRUE)))
#A plot of sampling distribution of sample mean is obtained using
hist(sample_means,main="sample  means")
#The sampling distribution of sample range is obtained as follows
sample_ranges<-replicate(1000,diff(range(sample(x,size=4,replace= TRUE))))
hist(sample_ranges,main="sample  range")
