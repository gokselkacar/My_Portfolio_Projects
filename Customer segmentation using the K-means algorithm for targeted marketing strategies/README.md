# Customer Segmentation and Targeted Marketing Strategy

## Objective
Developing a customer segmentation model to categorize customers into distinct groups based on their purchasing behavior and personal characteristics. Using this model to recommend targeted marketing strategies for a retail company.

## Dataset
“ Mall Customers ” dataset. This dataset typically includes customer information like age, gender, annual income, and spending
score.
 
## Steps
#### Data Exploration:
- Import the dataset and perform basic exploratory data analysis (EDA).

- Check for missing values, outliers, and understand the distribution of key
variables like age, income, and spending score.

#### Data Preprocessing:
- Clean the dataset by handling missing values and outliers.

- Normalize the data.

#### Customer Segmentation:
- Use the K-means algorithm to segment customers into groups.

- Determine the optimal number of clusters using methods like the elbow
method.

- Analyze the characteristics of each cluster.

#### Data Visualization:
- Visualize the clusters using scatter plots, highlighting different segments
with distinct colors.

- Use bar charts or pie charts to show the distribution of categorical
variables like gender within each cluster.

#### Insights and Strategy Formulation:
- Derive insights from the clustering results.

- Recommend targeted marketing strategies for each customer segment.


## Results

### Insights and Strategy Formulation from the Segmentation Model No.1

![download](https://github.com/user-attachments/assets/36231173-a1bd-43de-a778-35fabe54bb50)

**Cluster 1: Young customers in their late 20s (mean age 27) with average spending scores (~49), approximately 38% male and 62% female.**

- Our main goal for Cluster 1 should be to increase the spending score and bring it to Cluster 3 levels. Since the target audience for this cluster is young and mostly female, this cluster could be a potential regular customer for the mall. To retain and engage with this cluster, the strategies must motivate them to increase their spending score and lead them to spend more time in the mall should be implemented.

- These strategies could include increasing the number of brands that aimed more at young female people, special campaigns aimed at high school and university students, making some agreements with the food chains that the younger generation likes, creating some valuable and creative deals to engage with young female customers and turning the mall into a more appealing place for the younger generation. This demographic values social and experiential aspects of shopping, enjoying activities, dining, and social interactions at the mall. The mall should highlight affordable yet trendy products that cater to the fashion-forward nature of this demographic.

**Cluster 2: Middle-age customers (mean age 43) with average spending scores (~15), equally divided as 50% male and 50% female.**

- Our main goal for Cluster 2 should be to increase the spending score dramatically because it is too low compared to the other clusters. This cluster contains mostly middle-aged customers between 35 to 60 so they could be a good target for high-value and family spending.

- With this cluster, the age group typically values stability, quality, and comfort in their purchases. Also, customers in this age group often prioritize value and quality over trendiness and they make less impulsive purchases. We could say they are likely to spend on reliable and durable products. According to this age gap, we need to find strategies to attract this cluster to spend more. These strategies could include special offers for middle-aged customers, and opening new brands that middle-aged people would love and engage with. They can also offer discounts on bulk purchases, loyalty rewards, and senior discounts.

**Cluster 3: Young customers in their early 30s (mean age 30) with average spending score (~82), approximately 42% male and 58% female.**

- For this cluster, the most important thing should be a low churn rate. This cluster must be an important target for the future of the mall because of its constant spending and age. Since their spending score is already high and their age is young we need to find strategies to keep them spending.

- Because of their high spending habits, we should offer this cluster special offers and discounts to keep them engaged. This demographic is likely to have brand preferences and loyalty, especially toward brands that align with their values and lifestyles. The mall should leverage digital marketing channels and ads, including social media, influencer partnerships, and targeted online ads to reach them. Mall management should make some moves that show these customers are special to them and make their relationship stronger. Thus, we could highlight trendy products, events, and experiences to make a stronger connection with them.

**Cluster 4: Middle-age to old customers (mean age 56) with average spending score (~48), approximately 46% male and 56% female.**

- Like cluster 1, we also need to increase this cluster's spending score to at least 70% to gain their engagement. Since their age dispersion is older than other clusters, they are potential customers for more premium and expensive products.

- Some tactics should be implemented according to their age such as making the mall cleaner and more organized, creating some entertaining activities, and special offers and discounts for elderly people. With this cluster, the age group typically values stability, quality, and comfort in their purchases. Also, customers in this age group often prioritize value and quality over trendiness and they make less impulsive purchases. We could say they are likely to spend on reliable and durable products. With this age group, customers may have established brand loyalties and trust in certain brands, making them more likely to stick with familiar products. The mall basically should highlight promotions that emphasize value, quality, and reliability. They can also offer discounts on bulk purchases, loyalty rewards, and senior discounts.

### Targeted Marketing Strategies for each Customer Segment in Segmentation Model No.1

**Young, Low spending score (Cluster 1):**

-  For this cluster, we could mainly use social media marketing through Instagram and TikTok ads that would attract the younger generation's attention. Additionally, we could hire an influencer as the mall's brand face who can communicate and engage with the younger generation. We could establish some partnerships with influencers who resonate with young customers to promote products and events. Thus influencer content reaches a broader audience and builds brand credibility for the mall. Through these digital marketing campaigns, the mall could do targeted discounts and special offers for their younger customer cluster.  If the mall can be conscious of this cluster's income dispersion, providing student discounts and special offers for them would be an encouragement to spend more.

**Young, High spending score (Cluster 3):**

- For this regular young customer cluster, we could use targeted email marketing strategies to send them special offers and weekly reminders. With these special offers, they could make some tailored product recommendations for their regular customers. Thus the mall could encourage this cluster's spending. The mall can create exclusive promotions and events such as product launches, pop-up shops, and in-store events to attract and engage young customers. We should also offer some special discounts for this young generation with events and time-limited offers to create a sense of urgency. We could develop loyalty programs that offer points, rewards, and personalized offers based on shopping behavior. The mall should maintain active and engaging social media profiles on platforms popular with this age group. To make them feel more engaged, we can share user-generated content, run contests, and engage with customers through comments and direct messages. Also along with these strategies, we could build a sense of community through events, social media groups, and collaborations with local influencers and brands.

**Middle-age, Low spending score (Cluster 2 and 4):**

- Because of this cluster's age dispersion, we should use general marketing strategies that could attract a wide range of customers. We could create marketing campaigns for adults who have children to draw them together into the mall, such as entertaining activities for kids. Since they are older generation, we should utilize a mix of traditional and digital marketing channels to reach this demographic. On the other hand, we could use digital marketing campaigns and email marketing to show special offers and tailored product recommendations to middle-aged customer profiles. With the benefits of email and SMS marketing, the mall can build trust and emphasize the reliability and durability of their products. The mall should also create some educational content that informs customers about the benefits of products and services. The mall must engage with the community through events, sponsorships, and partnerships with local organizations since these things are important to them.

**Old, Low spending score (Cluster 4):**

- Based on this age group, we could develop marketing campaigns focused on health and wellness products. We should emphasize the benefits of products that cater to their health, comfort, and well-being. With the benefits of email and SMS marketing, the mall can build trust and emphasize the reliability and durability of their products.  Since they are older generation, we should utilize a mix of traditional and digital marketing channels to reach this demographic. We can use digital marketing channels such as direct mail, email newsletters, and social media platforms - especially Facebook which is popular amongst this age group - with older adults. The mall should also create some educational content that informs customers about the benefits of products and services. The mall must engage with the community through events, sponsorships, and partnerships with local organizations since these things are important to them. To increase this older generation's spending score, we could use email marketing and Facebook ads to engage with this cluster. We could also create some Facebook pages and turn them into a community-like place for older generations which they all like and feel more engaged. Another marketing strategy could be creating some coupons and flyers that allow them to use discounted items.

### Insights and Strategy Formulation from the Segmentation Model No.2

![download](https://github.com/user-attachments/assets/08250a36-fc2a-4a27-bcdc-4accfea44645)

**Cluster 1: Lower class customers (mean 26k$) with average spending scores (~79), approximately 41% male and 59% female.**

-  Despite their lower income, this cluster has high spending scores. This indicates that they are willing to spend a significant portion of their income at the mall, possibly prioritizing arbitrary spending. This cluster's gender skew suggests that marketing strategies might need to be slightly more focused on female customers, but without neglecting the male segment.

-  The high spending score suggests that these customers are engaged shoppers who likely appreciate value for money, deals, and promotions. They might also be attracted to experiences and products that provide perceived higher value.  Given their income level, they are likely sensitive to pricing and may prefer discounts, sales, and loyalty rewards programs.  Implementing targeted discounts and promotional campaigns could be a good choice for this cluster. Also, we could offer time-limited sales and bundle deals to encourage purchases.

**Cluster 2: Lower-middle class to middle-class customers (mean 55k$) with average spending scores (~49), approximately 41% male and 59% female.**

- This cluster indicates a moderate disposable income level. They may prioritize savings and essential purchases over arbitrary spending. Marketing strategies should consider a slight focus on female customers while still appealing to male customers. They might be more selective and deliberate in their purchasing decisions.

- We could offer promotions that emphasize value, such as buy-one-get-one-free deals, bundled packages, and cashback offers. We should strengthen loyalty programs by offering exclusive deals, early access to sales, and referral bonuses since these customers are willing to spend but need some encouragement. Because this cluster is a base customer profile and the most common one,  personalized shopping experiences through recommendations based on past purchases, personalized offers, and attentive customer service must be implemented. Since this cluster might include families, we could also offer services and products that cater to family needs, such as family-friendly dining options and children's play areas.

**Cluster 3: Middle-class to upper-class customers (mean 86k$) with average spending score (~82), approximately 46% male and 54% female.**

- This cluster indicates a higher disposable income compared to the other clusters. Since the average spending score is pretty high, these customers are high spenders who are likely to prioritize luxury and premium products. The high spending score indicates that these customers are willing to spend more on quality, luxury, and premium products. They may be less price-sensitive and more focused on brand reputation and product quality.

- Given their income and spending behavior, they are likely to be attracted to premium brands, luxury items, and exclusive shopping experiences. We could create exclusive offers, VIP programs, and personalized promotions to make these customers feel valued. The mall could inform them about early access to sales, special events, and unique experiences. Also, they need to provide exceptional customer service with well-trained staff who can offer personalized assistance and recommendations. They would want to see that the shopping environment is comfortable, safe, and luxurious.

**Cluster 4: Middle-class to upper-class customers (mean 88k$) with average spending score (~17), approximately 54% male and 46% female.**

- This cluster also has high income but as we can see with their low spending score, these customers are very cautious with their spending at the mall. They might be more selective in their purchases, potentially preferring to spend their money elsewhere or saving it. These customers may prioritize quality and necessity over impulse purchases and may prefer making fewer, high-value purchases.

-  If the mall wants to attract these customers and encourage them to spend more, it should focus marketing efforts on the value, quality, and necessity of products. The mall must ensure that the brands use testimonials and detailed product descriptions to emphasize long-term benefits and quality. We could use targeted advertising to reach this demographic with messages that emphasize value, quality, and necessity since they look like they are looking for more high-end service and product quality.

**Cluster 5: Lower class customers (mean 26k$) with average spending score (~21), approximately 39% male and 61% female.**

-  Based on their low income and cautious spending cycle, this cluster is highly sensitive to pricing and prefers significant discounts, sales, and value-for-money products. With approximately 39% male and 61% female, there is a notable skew towards female customers. Therefore, marketing strategies should focus slightly more on female customers while still appealing to male customers.

-  The mall should offer frequent deep discounts and sales events to attract this budget-conscious demographic. They need to keep highlighting significant savings and value deals that offer the best value for money. to draw them. They can use signage, flyers, and promotions to draw attention to these items. If they want to attract these customers, they need to use targeted advertising to reach this demographic with messages emphasizing affordability, savings, and essential purchases.

### Targeted Marketing Strategies for each Customer Segment in Segmentation Model No.2

**Low income, High spending score (Cluster 1 and 2):**

- We should enhance the shopping experience with interactive and engaging store layouts, free samples, and demonstrations for this cluster since they are regular customers and spend a lot. We could create events and workshops that can attract and retain this customer group. Marketing campaigns based on food courts, affordable cafes, and budget-friendly entertainment options like movie discounts can attract these customers. Also, the mall could leverage social media platforms to reach out to this demographic with targeted ads, promotions, and engagement campaigns. We could also utilize SMS and email marketing and app-based notifications for promotions, sales events, and loyalty rewards.

**Low and Middle income, Moderate spending score (Cluster 2 and 1):**

- For this cluster's marketing strategy, we could organize periodic sales events that offer significant discounts on popular and essential items.  Also, we should use data-driven insights to create targeted advertising campaigns that highlight value, quality, and savings. The mall could utilize social media, email newsletters, and in-app notifications to reach this demographic effectively. Through social media, the mall could develop informative and interactive content that educates customers about the benefits of quality products, long-term savings, and smart shopping tips. We could also use blogs, social media posts, and video content to engage and increase the bond with this customer segment.

**Middle to High income, High spending score (Cluster 3):**

- Since this cluster has high income and their spending is also high, we should follow a marketing strategy that includes high-end advertising channels such as luxury magazines, premium social media influencers, and targeted digital ads to reach this demographic. Through special ads, stores could highlight the exclusivity and quality of the products and services. Establishing partnerships with luxury brands to offer exclusive products and limited-edition items could attract customers looking for unique and high-end products. We should develop tailored marketing campaigns that emphasize quality, exclusivity, and luxury. The mall can also use customer data to create personalized messages and email marketing offers. They should create content that highlights the luxury lifestyle, premium products, and exclusive experiences available at the mall. For this, the mall can use blogs, social media, and video content to engage and inform customers.

**Middle to High income, Low spending score (Cluster 4):**

- We should offer exclusive promotions on essential and high-quality products that appeal to this demographic's cautious spending habits. Limited-time offers on premium goods can also entice them to spend.  Implement educational marketing campaigns that inform customers about the value and benefits of investing in quality products, which may align with their cautious spending behavior. The mall should also utilize data analytics to refine targeting and personalize communication for this specific customer base. They can create some content that educates customers on the benefits of quality products and smart spending. Additionally, they can use blogs, videos, and social media posts to share tips on making informed purchasing decisions. The most important thing with this cluster seems like engaging with the community through events, workshops, and seminars that provide value and information. To create better relationships and increase their spending score incrementally, the mall should focus on topics such as financial planning, smart shopping, and product quality.

**Low income, Low spending score (Cluster 5):**

- To be able to attract this cluster we should create bundled deals that offer essential products at a lower combined price. So the marketing strategy should also follow based on these discounted items. Implementation of loyalty programs that offer points, discounts, and rewards for frequent shoppers could be beneficial too. Utilizing social media, local newspapers, and community boards for effective reach could be also very important. Moreover developing content that focuses on budgeting tips, savings strategies, and the value of essential products could be helpful. Since their income level is not high, the mall should offer flexible payment options such as layaway plans, interest-free installments, and buy now pay later services. This can make higher-value purchases more manageable for budget-conscious shoppers like this cluster.

### Insights and Strategy Formulation from the Segmentation Model No.3

![download](https://github.com/user-attachments/assets/034a56a6-7ae7-4a62-a9c1-857de3927501)

**Cluster 1: Young customers in their early 30s (mean age 32) with average annual income (73k$), approximately 47% male and 53% female.**

- As we can see from the data, cluster 1's age group is young and this age group is typically characterized by a dynamic lifestyle, career-focused mindset, and social engagement. These customers have a moderate to high disposable income, which allows for a mix of essential and arbitrary spending.

- We could say that young customers are often tech-savvy and trend-conscious, seeking the latest products and experiences. Thus we should focus on this as a marketing campaign to attract them. This demographic is likely to have brand preferences and loyalty, especially toward brands that align with their values and lifestyles.  The mall should leverage digital marketing channels and ads, including social media, influencer partnerships, and targeted online ads to reach this tech-savvy demographic. We could highlight trendy products, events, and experiences to make a stronger connection with them.

**Cluster 2: Middle-aged to old customers (mean age 58) with average annual income (52k$), equally divided as 50% male and 50% female.**

- With this cluster, the age group typically values stability, quality, and comfort in their purchases. These customers have moderate disposable income, so we can say that they likely prioritizing essential and high-value purchases. Also, customers in this age group often prioritize value and quality over trendiness and they make less impulsive purchases. We could say they are likely to spend on reliable and durable products.

- With this age group, customers may have established brand loyalties and trust in certain brands, making them more likely to stick with familiar products. The mall basically should highlight promotions that emphasize value, quality, and reliability. They can also offer discounts on bulk purchases, loyalty rewards, and senior discounts.

**Cluster 3: Middle age customers (mean age 39) with average annual income (106k$), approximately 42% male and 58% female.**

- This cluster's age group is often established in their careers and may have families, influencing their spending habits. Also, cluster 3 has a very high disposable income compared to the other cluster, allowing for both essential and luxury purchases. This demographic is likely to spend on a wide range of products, from essentials to luxury items, and may prioritize quality and brand reputation. Given their age, these customers may have families and thus, their purchases might include a mix of individual, family, and child-related products. Therefore, the mall should create promotions that cater to both individual and family needs.

- They could offer some special discounts on family-oriented products, as well as high-end individual items. Because of their income, the mall should also offer personalized services such as personal shoppers, customized recommendations, and exclusive previews of new products. Using customer data to tailor the shopping experience for them would be a wise move for the mall since it is an essential part of their shopping experience as well.

**Cluster 4: Young customers in their early 30s (mean age 31) with average annual income (29k$), approximately 35% male and 65% female.**

- This cluster is likely to be at an early stage in their careers, possibly facing financial constraints but also open to exploring new trends and experiences. As we can see from their income range, these customers have a limited disposable income and are likely to be budget-conscious. Based on our gender data, marketing strategies should primarily target female customers while still appealing to male customers.

- Given their limited income, these customers are likely to prioritize affordable and value-for-money products. Despite budget constraints, this young generation often seeks trendy and fashionable items, looking for deals on stylish products. This demographic values social and experiential aspects of shopping, enjoying activities, dining, and social interactions at the mall. The mall should highlight affordable yet trendy products that cater to the fashion-forward nature of this demographic. We could also use promotions and sales to make these items accessible according to their budget.

### Targeted Marketing Strategies for each Customer Segment in Segmentation Model No.3

**Young, Middle Income (Cluster 1):**

- The mall can create exclusive promotions and events such as product launches, pop-up shops, and in-store events to attract and engage young customers. We should also offer some special discounts for this young generation with events and time-limited offers to create a sense of urgency. We could develop loyalty programs that offer points, rewards, and personalized offers based on shopping behavior. The mall should maintain active and engaging social media profiles on platforms popular with this age group. To make them feel more engaged, we can share user-generated content, run contests, and engage with customers through comments and direct messages. Particularly we should focus on topics such as fashion, tech, fitness, and social activities. Also along with these strategies, we could build a sense of community through events, social media groups, and collaborations with local influencers and brands.

**Middle age to old, Low and Middle Income (Cluster 2):**

- Based on this age group and income, we could develop marketing campaigns focused on health and wellness products. We should emphasize the benefits of products that cater to their health, comfort, and well-being. With the benefits of email and SMS marketing, the mall can build trust and emphasize the reliability and durability of their products.  Since they are older generation, we should utilize a mix of traditional and digital marketing channels to reach this demographic. We can use digital marketing channels such as direct mail, email newsletters, and social media platforms - especially Facebook which is popular amongst this age group - with older adults. The mall should also create some educational content that informs customers about the benefits of products and services. The mall must engage with the community through events, sponsorships, and partnerships with local organizations since these things are important to them.

**Middle age, High Income (Cluster 3):**

- Most importantly, the mall should implement loyalty programs that offer rewards, points, and exclusive offers for frequent and high-income customers. Include family-friendly perks such as discounts on children's products, entertainment, and services. We could utilize both digital and traditional marketing channels to reach this demographic. The mall could use social media, email newsletters, and targeted online ads, as well as direct mail and in-mall advertising. Additionally, collaboration with influencers who resonate with this demographic, particularly those who focus on family, lifestyle, and wellness topics could be engaging. With these influencers, developing content that addresses the interests and needs of middle-aged customers is also an important part. The mall should mainly utilize blogs, videos, and social media posts to engage these high-end customers.

**Young, Low Income (Cluster 4):**

- For starters, we should implement discount programs and loyalty cards that offer rewards for frequent shopping. Also, providing exclusive discounts for loyalty program members and special deals for young customers could be an engaging move for them. We definitely utilize social media platforms as much as we can among young adults to run marketing campaigns. Moreover, collaborating with influencers to reach a wider audience and create engaging content is an indisputable part of this strategy. Maintaining an active digital presence and digital profile on platforms like Instagram, TikTok, and Facebook is a must. We could establish some partnerships with influencers who resonate with young customers to promote products and events. Thus influencer content reaches a broader audience and builds brand credibility for the mall. If the mall can be conscious of this cluster's income dispersion, providing student discounts and special offers for them would be an encouragement to spend more.
