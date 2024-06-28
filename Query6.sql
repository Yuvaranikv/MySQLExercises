#How many copies of the film Hunchback Impossible exist in the inventory system?
select title,count(*)number_in_inventory from film F join inventory I on F.film_id=I.film_id where title='Hunchback Impossible' group by F.film_id;

#The music of Queen and Kris Kristofferson have seen an unlikely resurgence.As an unintended consequence, films starting with the letters K and Q have also soared in popularity. Use subqueries to display the titles of movies
#starting with the letters K and Q whose language is English.

select title from film F join language L on F.language_id=L.language_id where title like 'K%' or title like 'Q%' and L.name='English';

#Insert a record to represent Mary Smith renting the movie ‘Academy Dinosaur’ from Mike Hillyer at Store 1 today. Then write a query to capture the exact row you entered into the rental table.
select * from rental where inventory_id=1 and customer_id=1 and staff_id=1;

insert into rental (rental_date,inventory_id, customer_id,staff_id,last_update )values(Now(),1,1,1,Now());

