use sakila;
#Display the first and last name of each actor in a single column in upper casee letters. Name the column Actor Name.

Select upper(concat(first_name,last_name)) as fullname from actor;

#You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe." 

select * from actor where first_name='Joe';

#Find all actors whose last name contain the letters GEN.

select * from actor where last_name like '%GEN%';

#Find all actors whose last names contain the letters "LI". This time, order the rows by last name and first name, in that order.

select * from actor where last_name like '%LI%' order by last_name,first_name;

#Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China.
select country_id,country from country where country in ('Afghanistan', 'Bangladesh',  'China');

#List last names of actors and the number of actors who have that last name,but only for names that are shared by at least two actors
select last_name ,count(*)Actor_count from actor group by last_name having count(*)>2;

#The actor HARPO WILLIAMS was accidentally entered in the actor table as GROUCHO WILLIAMS. Write a query to fix the record, and another to verify the change.
select * from actor where actor_id=172;
update actor set first_name='HARPO',last_name='WILLIAMS' WHERE actor_id=172;

#Update actor with firstname harpo to GROUCHO
update actor set first_name='GROUCHO' WHERE actor_id=172;
select * from actor where first_name='GROUCHO';

#Use JOIN to display the total amount rung up by each staff member in August of 2005. Use tables staff and payment.
select first_name,last_name,sum(P.amount) from staff  S join payment P on S.staff_id=P.staff_id where month(p.payment_date)=8 and YEAR(P.payment_date) group by S.staff_id; 

#List each film and the number of actors who are listed for that film. Use tables film_actor and film. Use inner join.
select title,count(FA.actor_id)number_of_actors from film F join film_actor FA on f.film_id=FA.film_id group by F.film_id,f.title;