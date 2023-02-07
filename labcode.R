

#run linear regression

mod1 = lm(yvar ~xvar, data = data)

summary(mod1)

#yvar is kid_inc_rank
#xvar is parent_inc_Rank

#calculate each of the four stats
#stat 1: absolute mobility at the 25 percentile
31.4183 + 25*.3728
#anser is 40.74

#stat 2: relative mobility
100*.3728

#stat 3: the prob that if you are born at the bottom 5th what is the prob that you will be top 5th as an adult
data$top20 <- ifelse(data$yvar > 80, 1, 0)

data$bottom20 <- data |> filter(xvar <20)
mean(data$bottom20)

#stat 4: proportion fo 30 year odls that make more money than their parents when they were age 30 

data$more_than_parents = ifelse(data$kid_income >data$parent_inc, 1, 0)

#67.7% of kids make more than their parents

#check the same for Black males
#then run the linear regresison

