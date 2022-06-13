# Pewlett-Hackard-Analysis
PostgreSQL

## Retirement Plan Analysis
#### Goal
PH requested to create a Employees DataBase in SQL. Then, as first analysis, evaluate possible retirement candidates, so the company may be ahead on hiring new positions.

### Strategy
#### ERD
First step: Develop a ERD Schema to structurized the DataBase.

![EmployeeDB](https://user-images.githubusercontent.com/103459820/173400515-3ecc7a34-41a2-4ad4-9f3c-3cda5e2cbfb2.png)

#### Create the SQL Tables and Keys
By getting the first 6 CSV files, the schema was used to create the tables in the database. E.g.:

  CREATE TABLE departments (
	    dept_no VARCHAR(4) NOT NULL,
	    dept_name VARCHAR(40) NOT NULL,
	PRIMARY KEY (dept_no),
	UNIQUE(dept_name)
  );

#### Filtering info into new tables:
Following the managers intructions:
  - Employees birthdates from 1952 to 1955,
  - Still in the company,
  - Number of employees in the retirement condition.
 
 The number of employees is 41,380. 
 
 #### Detailing the employees
 Some directors asked a list of the retirement employees in their areas.
 Then, we created a table to show the number o r-e from each area.
 And, a table of those r-e titles.

##### Number of Sales Employees to Retire: 5860.
 ![Screen Shot 2022-06-13 at 1 39 00 PM](https://user-images.githubusercontent.com/103459820/173402592-c5d2b9bb-da7f-490d-a029-a17c9ec2624b.png)

#### R-E per area:
 ![Screen Shot 2022-06-13 at 1 41 11 PM](https://user-images.githubusercontent.com/103459820/173403008-28246116-0fb6-4f6a-9af3-c7d1be5c47de.png)

##### Table of R-E by Title:
 ![Screen Shot 2022-06-13 at 1 38 17 PM](https://user-images.githubusercontent.com/103459820/173402461-30e84db3-41da-4778-8587-cdf788112b63.png)

 
### The Mentorship Program

  Gather data from employees who were born in 1965 to become mentors for the next generation of new hires for the PH.
  Following the criteria, there are currently: 1,549 employees available for the program.
  

##### All the tables with the details and info of each R-E is in the DataBase and CSV files.
##### All the files are acessible by the directors and HR Team.

Analysis by Bruno B Neves
