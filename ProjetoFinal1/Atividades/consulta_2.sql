-- Foi solicitado gerar os dados que relatam a performance dos vendedores, ou seja, foi exibido o nome e a quantidade vendida por cada vendedor no ano 2022.

select e.first_name + ' ' + e.last_name nome,
sum(od.unit_price * od.quantity - od.discount) total
from order_details od
inner join orders o on o.order_id = od.order_id
inner join employees e on e.employee_id = o.employee_id
where DATE_PART(year, o.order_date) = 2022
group by nome
order by total desc
