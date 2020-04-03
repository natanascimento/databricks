/*Exercise 1 

Create a temporary view called Top10FemaleFirstNames that contains the 10 most common female first names in the People10M table. The view must have two columns:

firstName - the first name
total - the total number of rows with that first name


*/

/*Creating Temporary View*/
%sql
CREATE OR REPLACE TEMPORARY VIEW Top10FemaleFirstNames
AS SELECT firstName, count(firstName) as total 
FROM People10M 
where gender = 'F' 
group by firstName 
order by total desc, firstName
limit 10

/*Display the results*/
%sql
select firstName, total from Top10FemaleFirstNames order by firstName

