-- Gera dados dos 10 produtos mais caros!

select product_name nome_do_produto, unit_price preço
from products
order by unit_price desc
limit 10
