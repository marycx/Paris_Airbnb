---
title: "Simulate data for Paris Airbnb"
author: "Mary Cheng"
purpose: "Simulate data on information about airbnb in Paris."
---

```{r}
# Set seed for reproducibility
set.seed(123)

# Number of Airbnb listings
num_listings <- 50

# data features are listing id, host id, response time, review score, superhost
data <- data.frame(
  listing_id = 1:num_listings,
  host_response_time = sample(c("Within an hour", "Within a few hours", "Within a day", "A few days or more"), num_listings, replace = TRUE, prob = c(0.4, 0.3, 0.2, 0.1)),
  review_score = round(runif(num_listings, min = 0, max = 5), 0),
  host_id = sample(1000:2000, num_listings, replace = TRUE),
  superhost = sample(c("Yes", "No"), num_listings, replace = TRUE, prob = c(0.3, 0.7))
)

head(data)
```

```{r}
# plot average review score vs number of properties

# Create a histogram
ggplot(data, aes(x = review_score)) +
  geom_histogram(binwidth = 0.5) +
  labs(title = "Distribution of Average Review Scores",
       x = "Average Review Score",
       y = "Number of Properties") +
  theme_minimal()

```
