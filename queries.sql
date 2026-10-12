# а) Написать SQL запрос, который выводит имя и рост всех Ибрагимов выше 170см, рождённых после 1998 года. Итоговая выгрузка должна быть ограничена 10 записями.

SELECT Name, Height 
FROM people 
WHERE Name = 'Кирилл' AND Height > 170 AND Born > 1998 
LIMIT 10;

#б) Написать SQL запрос для вставки строки со следующими данными: Имя – Ибрагим, Рост – 179, Год рождения – 1998.  

INSERT INTO people (Name, Height, Born) 
VALUES ('Ибрагим', 179, 1998);

в) Написать SQL запрос, который выводит средний рост для каждого из имён. Итоговая выгрузка должна быть отсортирована по имени.

SELECT Name, AVG(Height) AS avg_height 
FROM people 
GROUP BY Name 
ORDER BY Name;

г) Необходимо написать SQL запрос с использованием JOIN, который для каждого ресторана выводит его название и стоимость самой дорогой пиццы в этом ресторане

SELECT r.name, MAX(p.price) AS max_price 
FROM restaurants r 
JOIN pizzas p ON r.id = p.restaurant_id 
GROUP BY r.id, r.name;
