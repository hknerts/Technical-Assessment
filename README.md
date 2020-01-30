
# Technical-Assessment
```json
Technical Assessment Answers for DevOps Position
```

## ANSWERS
**1-) Describe / design the perfect automation pipeline using Jenkins
    a.	Look for what is included in the pipeline, DevSecOps, Code checks, Functional testing, Performance testing, release sign off.**
```json
Something here
```
**2-) Create a sample IaaC template using Terraform to provision a single server in availability zone a, with a 20gb operating system volume, and a 100g locally attached data volume. The server will be used to calculate complex equations.**
```json
You can check the Terraform folder in this repository.
```
**3-) Using ansible, create a sample playbook to install Oracle Java onto a Linux host.**
```json
You can check the Ansible folder in this repository.
```
**4-) In Unix, how do you find which process is using a file ?**
```json
fstat example.txt
```
**5-) How would you run a SQL command in your script? Provide a sample script ?**
```json
CONNECTION_STATEMENT="$USERNAME/$PASSWORD@$SERVICE"

OUTPUT=$(sqlplus -s $CONNECTION_STATEMENT <<-END-OF-SQL
           select count(*) from table;
exit;
END-OF-SQL)
echo "COMPLETED GATHER STATS $OUTPUT";
```
**6-) How would you go about showing non-printable characters in a text file ?**
```json
cat -v example.txt
```
**7-) Name five important DevOps tools that organizations should consider adopting when undergoing a DevOps transition ?**
```json
•	Terraform (for provisioning resources of all providers)
•	- GitLab CI/CD - or  - Jenkins and Git -  (for SCM and CI/CD pipelines)
•	Docker (Container)
•	Kubernetes (Container Orchestration)
•	Ansible (for Configuration Management)
```
**8-) What does it mean to shift left in DevOps ?**
```json
Shift left means encountering errors earlier. When we say earlier, we are talking about the left side of SDLC. 
The main goal is reduce possibility of unpleasant surprises at the end of the development cycle. 
```
