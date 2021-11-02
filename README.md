# Pewlett Hackard Analysis

## Overview

This analyis was created to determine the number of retiring employees per title as well as identify all employees eligible to participate in a mentorship program. To do so, we used SQL queries within PGAdmin in order to gather the necessary data and create new tables for legibility. 

## Results

We started by pulling employee numbers, names, position titles, and dates of employment from the "Employees" and "Titles" tables. Before merging this data into a new table, we also filtered by birth date in order to specifically gather info on eligible retirees. We then used this new data table to remove duplicates created from emplyees entering new positions throughout their career with a DISTINCT ON employee number function. From the new "Unique Titles" table, we were then able to quantify the total amount of employees leaving each department. As you can see below, senior engineers and senior staff will be losing the largest amount of personnel. 

![image](https://user-images.githubusercontent.com/90646961/139949376-3455499d-2a0e-49cb-9897-13aa9c13c188.png)

The second goal of this analysis was to determine mentorship eligibility in order to train replacements. This was done by gathering and merging three data sets - "Employees", "Department Employee", and "Titles". We again used DISTINCT ON employee number to remove duplicates and filtered by birth date. With this new mentorship eligibility table, we are now able to see everyone as well as their corresponding departments. 

[retiring_titles.csv](https://github.com/brefrank/pewlett_hackard_analysis/files/7463949/retiring_titles.csv)

[unique_titles.csv](https://github.com/brefrank/pewlett_hackard_analysis/files/7463950/unique_titles.csv)

[mentorship_eligibilty.csv](https://github.com/brefrank/pewlett_hackard_analysis/files/7463952/mentorship_eligibilty.csv)

[retirement_titles.csv](https://github.com/brefrank/pewlett_hackard_analysis/files/7463954/retirement_titles.csv)


## Summary

From the analysis above, we are able to make a few assumptions. To start, the company will soon be losing about 90,398 employees to retirement. Of those retiring, 1,549 are eligible to mentor, none of which are managers. This seems like a pretty small number compared to the total retirees. Before we come to any concrete conclusions, it would be beneficial to pull a few more queries to detemine the ratio of mentors to mentorees per department as well as how many of the eligible retirees will actually be retiring at age 65.
