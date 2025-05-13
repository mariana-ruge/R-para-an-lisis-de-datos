library(dplyr)


data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth,dose==0.5)
view(filtered_tg)

arrange(filtered_tg,len)

filtered_toothgrowth <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len, na.rm = TRUE)) %>% 
  arrange(mean_len) # Ordenar por mean_len en lugar de len

