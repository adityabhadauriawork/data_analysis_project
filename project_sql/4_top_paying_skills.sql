SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary

FROM job_postings_fact
INNER JOIN skills_job_dim 
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim 
    ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' -- AND job_work_from_home = 'True'
    AND salary_year_avg IS NOT NULL

GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25;

/* Machine Learning frameworks (PyTorch, TensorFlow, Keras, Hugging Face)
 appear among the highest-paying 
skills, indicating that data analysts with
 ML capabilities command higher salaries.

Data engineering and infrastructure tools 
(Kafka, Airflow, Cassandra, Terraform) are common
 in top-paying 
roles, showing a trend toward analysts working with 
data pipelines and large-scale systems.

Many high-salary roles include programming and DevOps
 tools (Golang, Scala, GitLab, Atlassian), suggesting 
that modern data analysts are expected to collaborate
 closely with engineering teams and write production-level code.*/