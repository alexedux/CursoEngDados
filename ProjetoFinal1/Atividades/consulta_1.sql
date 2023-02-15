-- Foi solicitado gerar os dados que mostrem a quantidade da vendas e as vendas com as diferenças entre o preço de tabela do produto, com o preço praticado na venda, 
-- ordenando pela diferença.

select o.order_id idpedido, p.product_name produto, o.quantity quantidade,
p.unit_price preco_tabela, o.unit_price preco_pedido, 
p.unit_price - o.unit_price diferenca
from order_details o
inner join products p on o.product_id = p.product_id
where o.unit_price < p.unit_price 
order by diferenca desc
