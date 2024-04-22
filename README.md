To set up this DBT project I used Visual Studio Code and the built in terminal to install dbt and initialize a project. 
I then set up a database in snowflake and updated the profiles.yml file to include the following to ensure everything would be stored in snowflake. 

Cascade_test:
  outputs:
    dev:
      account: eutvskl-js54046
      database: CASCADE_TEST
      password: Cascadetest1
      role: ACCOUNTADMIN
      schema: Analytics
      threads: 1
      type: snowflake
      user: acamp191
      warehouse: Cascade
  target: dev


Schema Diagram: 

<img width="323" alt="image" src="https://github.com/acampb191/Cascade_tests/assets/88842322/a5d3de84-e754-483d-bb94-42200380d807">

Question 1: 
I assumed that by month that you did not mean January - December but month-year and that by region you meant you wanted to see which "city agent" Carmen was most likely to be in. In a few of the months Carmen was equally in more than 1 location so I aggregated the locations together. 
See query results for answer. 

Question 2:
I assumed that by month that you did not mean January - December but month-year. See query results for answer.
From this data I can observe that Carmen is rarely armed while wearing a coat and not wearing a hat as the average probablility is at most 5%. 

<img width="583" alt="image" src="https://github.com/acampb191/Cascade_tests/assets/88842322/a89a4d91-7e07-4709-b079-5d86c5539413">

Question 3:
Carmen's top 3 behaviors are 
1. out-of-control
2. complaining
3. happy

Question 4: 
I assumed that by month that you did not mean January - December. See query results for answer. 

