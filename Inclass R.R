library(dplyr)
library(ggplot2)

chol <- read.csv("~/Desktop/In class exercise/Book3.csv")
gluc <- read.csv("~/Desktop/In class exercise/Book4.csv")

ggplot(chol, aes(x=cholesterol))+
  geom_histogram(binwidth = 30)+
  facet_wrap(~ gender, ncol=1)+
  theme_bw()

ggsave("chol.hist.png")


ggplot(chol, aes(x=gender, y=cholesterol))+
  geom_boxplot() 

ggsave ("chol.box.png")
 

t.test(cholesterol ~ gender, data=chol)

# We tested the hypothesis that there is a difference in the cholesterol levels
# of males and females. Our results found no significant difference in 
# cholesterol levels (t-stat= 0.31, df=351.22, p=0.76), with males and females not
# having different levels of cholesterol. 

ggplot(gluc, aes(x=glucose))+
  geom_histogram(binwidth =30)+
  facet_wrap(~ location, ncol=1)+
  theme_bw() 

ggsave("gluc.hist.png")

ggplot(gluc, aes(x=location, y=glucose))+
  geom_boxplot() 

ggsave("gluc.box.png")



t.test(glucose ~ location, data=gluc)

# We tested the hypothesis that there is a difference in the glucose levels
# of people from different locations. Our results found no significant difference  
# in glucose levels (t-stat= 0.10, df=398.45, p=0.92), with people from Louisa 
# and Buckingham, not having different levels of glucose. 


