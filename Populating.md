###Creating your exam database:

* Create your database (for this test, company-test1) with _createdb_
* Pull the repo to get fresh files
* Copy the company-populated.sql file __outside__ of your repo space
* Edit the file
    * Replace every instance of brianc with your Postgres username
* Populate your new database _psql -d company-test -f company-populated.sql_

###To "hand in" your work:
* Create a new repo cmp341-test1
* Use _pg_dump_ to create company-test1.sql
* Push the file to the repo
* Put the link to the repo on the exam

###To change ownership of .sql dump
* Load in vi
* :1,$s/brianc/<your pg name>/g
* save
