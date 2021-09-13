# Data-Science-Intern-Challenge

## Question 1:
Given some sample data, write a program to answer the following: https://docs.google.com/document/d/13VCtoyto9X1PZ74nPI4ZEDdb8hF8LAlcmLH1ZTHxKxE/edit#

On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis. 

1. Think about what could be going wrong with our calculation. Think about a better way to evaluate this data. 
2. What metric would you report for this dataset?
3. What is its value?

## Answers
1. I believe the mistake that was made when calculating the average order value (AOV) was that, the number of items per order was not considered. We can see in the data, order_id 16 has a total of 2000 items for $704000, while the other orders had 1-8 items per order.

2. For this report instead I would take into consideration the total items that are purchased per order to calculate the AOV. So instead of getting the .count() from the total_items column I would retrieve the .sum() value instead.

3. The values are now:
oa_total = 15725640
final_total = 42926
oa_total/final_total = 357.92 (rounded to two decimal places)

LINK TO CODE: https://github.com/manderzz/Data-Science-Intern-Challenge/blob/main/data/solution.ipynb


## Question 2: For this question you’ll need to use SQL. Follow this link to access the data set required for the challenge. Please use queries to answer the following questions. Paste your queries along with your final numerical answers below.

1. How many orders were shipped by Speedy Express in total?
2. What is the last name of the employee with the most orders?
3. What product was ordered the most by customers in Germany?

## Answers
1. 54 orders were shipped from Speedy Express
2. The employee with the most order is Peacock, Margaret with 40 orders.
3. Boston Crab Meat was most ordered by customers in Germany, 256 quantities of these were sold. 

LINK TO CODE: https://github.com/manderzz/Data-Science-Intern-Challenge/blob/main/data/solution.sql

