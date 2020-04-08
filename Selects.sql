select nrPedido, cnpjEmit, situacao /* Projeção */
from pedido							/* Origem */
where idEmpresa = 4 and situacao = 3; /* Condição */

select *
from pedido, pedido_item
where pedido.idEmpresa = pedido_item.idEmpresa and pedido.nrPedido = pedido_item.nrPedido;

select *
from pedido
inner join pedido_item on pedido.idEmpresa = pedido_item.idEmpresa and pedido.nrPedido = pedido_item.nrPedido;

select *
from pedido
where idEmpresa = 4 and cnpjEmit like "%669%";

select * 
from pedido
where idEmpresa = 4 order by nrPedido desc;

