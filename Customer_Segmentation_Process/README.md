## CUSTOMER SEGMENTATION PROCESS (Rule Based Classifications)

- The customer segmentation process aims to group customers depending on similar characteristics, needs, and behaviors, then create customer segments, and create marketing strategies based on each group.

- We can create our rules using customers' age, gender, city or country they live in, and their spending amount.
  
- The goal of customer segmentation is to create new customer segmentations, support marketing decisions, and predict the potential revenue of new customers based on their potential segments.

______________________________

### 1. BUSINESS PROBLEM / PROJECT OBJECTIVES   

A gaming company aims to create new customer segmentations based on rule-based classification using customers' characteristics, needs, and behaviors.

Then, they want to predict the average potential revenue of these segments, such as predicting the average revenue of a 25-year-old male IOS user from Turkey.

Project Goals:
- To divide customers into segments based on common characteristics
- To predict the potential revenue of each customer segment
- To provide informative insights to support the company's marketing strategies


______________________________

### 2. PROJECT STEPS

- Examination and understanding of the dataset.
- Data manipulation.
- Creation of segments based on customer personas (Segmentation process).
- Estimation of average revenue for each segment.
- Classification of new customers based on results and prediction of potential revenue.

______________________________

### 3. PROJECT RESULTS

#### DataFrame Before the Process:
<img width="412" alt="300795980-328f1002-8a69-4134-b45c-da60bb2fa84d" src="https://github.com/user-attachments/assets/618f23d8-d2fe-469e-b7d0-f386c7ec0c9a">



#### DataFrame After the Process:
New columns like AGE_CAT for age categorization, CUSTOMERS_LEVEL_BASED for customer personas, and SEGMENT for customer segments were created.

<img width="771" alt="300796609-2fcc0545-f0d5-4eb2-856d-6b1ad7f03b59" src="https://github.com/user-attachments/assets/125391b5-81a0-4af8-96ac-6b6a04568338">

#### Analysis of Average Price & Segment by Customer Group:
Average purchase price and price segments for each customer persona group.

<img width="441" alt="300797980-a25a862f-54c7-402a-84b1-1a4339403aa2" src="https://github.com/user-attachments/assets/e1f7dd3f-ee62-4a45-a9bf-2178a2225772">


#### Price Analysis by Customer Segment:
Average purchase price, total revenue, min, and max prices for each segment.

<img width="433" alt="300797994-6ae280d3-c04e-4fce-b162-f28992f2b9f5" src="https://github.com/user-attachments/assets/82170924-770c-4676-ab56-0f3d6f149412">


#### Segment and Revenue Prediction for New/Potential Customers:
**Example:**

For a 33-year-old Turkish female Android user, the analysis shows they belong to the "TUR_ANDROID_FEMALE_31_40" customer group, which falls under segment A, with an estimated average revenue of 41.83 units per purchase.


<img width="763" alt="300804340-d84b497c-d2a2-4cb1-94ca-d601a61a8010" src="https://github.com/user-attachments/assets/9425f2c3-ca4d-41a1-9cd0-29a6c352b9ae">


<img width="173" alt="300805478-9402e5fd-9767-4ccd-bc57-4fec072a5e21" src="https://github.com/user-attachments/assets/e8bd1248-a0fa-46f8-92f9-cac4a9dcbf3b">



#### Project Results:

- Understanding Customers: Analyzing customer data provided valuable insights into their preferences and behaviors.
- Revenue Prediction: Predicting revenue potential for new customers can help optimize resource allocation by focusing on high-value customers.
- Overall, this project highlighted the power of data-driven decision-making in understanding customer behavior and driving business growth.



