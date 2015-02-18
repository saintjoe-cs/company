###Creating your exam database

* Create your database (for the test, company_test) with createdb
* Pull the repo to get fresh files
* Move the company_populated.sql file __outside__ of your repo space
* Edit the file
** Replace every instance of brianc with your Postgres username
* Populate your new database psql -d company_test -f company_populated.sql

To "hand in" your work:
* Create a new repo cs41-test1
* Use pg_dump to create company_test1.sql
* Push the file to the repo
* Put the link to the repo on the exam
