#1

x <- 3
p <- 0.2

#a
peluang <- dgeom(x, 1 - p)
print(peluang)

#b
n <- 10000
ratarata <- mean(rgeom(n, p) == 3)
print(ratarata)

#d
set.seed(1)
hist(rgeom(n, p), main = "histogram geometrik")

#e
rataan = 1 / p
paste("Nilai rataan:", rataan)

varian = (1 - p) / (p ^ 2)
paste("Nilai varian:", varian)


#2

n <- 20
p <- 0.2

#a
x <- 4
binom = dbinom(x, n, p)

print(binom)

#b
hist(rbinom(x, n, p))

#c
rataan <- n * p
variansi <- n * p * (1 - p)

print(rataan)
print(variansi)

#3

lamda <- 4.5

#a
x <- 6
pel <- dpois(x, lamda)
print(pel)

#b
n <- 365
hist(rpois(n, lamda))

#d
rataan <- lamda
variansi <- lamda
print(rataan)
print(variansi)

#4

x <- 2
v <- 10

#a
peluang <- dchisq(x, v)
print(peluang)

#b
n <- 100
hist(rchisq(n, v))

#c
rataan <- v
variansi <- 2 * v

print(rataan)
print(variansi)


#5

lamda <- 3

#a
prob <- rexp(1, rate = lamda)
print(prob)

#b

hist(rexp(10, rate = lamda))
hist(rexp(100, rate = lamda))
hist(rexp(1000, rate = lamda))
hist(rexp(10000, rate = lamda))

#c
n <- 100
set.seed(1)

rataan <- mean(rexp(n, rate = lamda))
variansi <- (sd(rexp(n, rate = lamda)))^ 2
print(rataan)
print(variansi)


#6

n <- 100
mean <- 50
sd <- 8

#a
set.seed(1)
var <- rnorm(n, mean, sd)
rataan <- mean(var)

x1 <- floor(rataan)
x2 <- ceiling(rataan)

print(x1)
print(x2)
print(rataan)

zscore <- (var - rataan) / sd(var)
plot(zscore)

#b
breaks <- 50
hist(var, breaks, main = "5025211147_Rr. Diajeng Alfisyahrinnisa Anandha_Probstat_{A}_DNhistogram")

#c
variansi <- (sd(var)) ^ 2
print(variansi)




