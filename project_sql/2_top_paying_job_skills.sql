

WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM   
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC

    LIMIT 10
)
SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC


        /* 1️⃣ Most Frequent Skills in Top Paying Roles

        From the rows you shared, these appear the most.

        Skill	Frequency (approx)	Insight
        SQL	Very High	Required in almost every job
        Python	Very High	Second most important
        Tableau	High	Major visualization tool
        Excel	Medium	Still widely required
        R	Medium	Used for statistical analysis
        Snowflake	Medium	Modern data warehouse
        Pandas / Numpy	Medium	Python data analysis libraries

        ✅ Conclusion:
        The core stack for high-paying data analysts is:

        SQL + Python + Tableau
        2️⃣ Cloud & Big Data Skills

        Many high-salary roles also mention cloud/data platforms:

        Skill	Meaning
        AWS	Cloud infrastructure
        Azure	Microsoft cloud
        Databricks	Big data processing
        Hadoop	Distributed data system
        Snowflake	Cloud data warehouse

        📌 Insight:

        High-paying jobs increasingly require cloud data tools.

        3️⃣ Data Analysis Libraries

        These appear in Python-heavy roles:

        Library	Purpose
        Pandas	Data manipulation
        NumPy	Numerical computing
        PySpark	Big data processing
        Jupyter	Notebook environment

        📌 Insight:

        Companies expect analysts to work with Python data libraries.

        4️⃣ Visualization Tools

        These tools appear frequently:

        Tool	Usage
        Tableau	Most common
        Power BI	Microsoft BI tool
        Excel	Basic reporting

        📌 Insight:

        Even in $180k+ analyst jobs, visualization is essential.

        5️⃣ Engineering / Collaboration Tools

        Some roles include:

        Git

        GitLab

        Bitbucket

        Jenkins

        Jira

        Confluence

        Atlassian

        📌 Insight:

        Senior roles expect analysts to work with engineering teams and version control.

        6️⃣ Skill Categories in These Jobs

        If we group the skills:

        Core Analyst Skills

        SQL

        Python

        R

        Excel

        Visualization

        Tableau

        Power BI

        Data Processing

        Pandas

        NumPy

        PySpark

        Cloud / Big Data

        AWS

        Azure

        Snowflake

        Databricks

        Hadoop

        Dev / Collaboration

        Git

        Jira

        Jenkins

        Bitbucket

        7️⃣ The BIG Insight From This Dataset

        Almost every high-paying role includes:

        SQL
        Python
        Tableau

        This combination appears in most jobs above $180k.
        
        [
  {
    "job_id": 226942,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "650000.0",
    "job_posted_date": "2023-02-20 15:13:33",
    "company_name": "Mantys"
  },
  {
    "job_id": 547382,
    "job_title": "Director of Analytics",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "336500.0",
    "job_posted_date": "2023-08-23 12:04:42",
    "company_name": "Meta"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18 16:03:12",
    "company_name": "AT&T"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "232423.0",
    "job_posted_date": "2023-12-05 20:00:40",
    "company_name": "Pinterest Job Advertisements"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "217000.0",
    "job_posted_date": "2023-01-17 00:17:23",
    "company_name": "Uclahealthcareers"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09 11:00:01",
    "company_name": "SmartAsset"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07 15:00:13",
    "company_name": "Inclusively"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05 00:00:25",
    "company_name": "Motional"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11 16:00:05",
    "company_name": "SmartAsset"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184000.0",
    "job_posted_date": "2023-06-09 08:01:04",
    "company_name": "Get It Recruit - Information Technology"
  }
]*/
    