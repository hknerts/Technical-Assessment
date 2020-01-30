
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
[#f03c15]   Terraform (for provisioning resources of all providers)
[#f03c15]	- GitLab CI/CD - or  - Jenkins and Git -  (for SCM and CI/CD pipelines)
[#f03c15]	Docker (Container)
[#f03c15]	Kubernetes (Container Orchestration)
[#f03c15]	Ansible (for Configuration Management)
```

