-- 1. sorunun cevabı, 489
select count(*) from film
where length > 
(
   select avg(length) from film
);

-- 2. sorunun cevabı, 336
select count(*) from film
where rental_rate = 
(
   select max(rental_rate) from film
);

-- 3. sorunun cevabı
select title, (select min(rental_rate) from film) from film
where replacement_cost =
(
    select min(replacement_cost) from film
);

-- 4. sorunun cevabı
select customer_id, sum(amount) from payment
group by customer_id
order by sum desc;
