download.file("http://www.openintro.org/stat/data/kobe.RData", destfile = "kobe.Rdata")
 load("kobe.Rdata")
 head(kobe)
 outcomes <- c("head", "tails")
 sample(outcomes, size = 1, replace = TRUE)
 sime_unfair <- sample(outcomes, size = 100, replace = TRUE, prob = c(0.2, 0.8))
 sim_unfair_coin <- sample(outcomes, size = 100, replace = TRUE, prob = c(0.2, 0.8))
 sim_unfair_coin
 table(sim_unfair_coin)
 sim_unfair_coin
 otcomes <- c("H", "M")
 outcomes <- c("H", "M")
 sim_basket <- sample(outcomes, size = 30, replace = TRUE)
 sim_basket <- sample(outcomes, size = 133, replace = TRUE, prob = c(0.45, 0.55))
 sim_basket
 kobe$basket