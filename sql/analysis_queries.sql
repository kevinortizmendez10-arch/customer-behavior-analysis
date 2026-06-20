

select sum(subtotal) 
as totalFacturado  
FROM detalle_orden;

select
sum(total) as totalOrdenes 
from ordenes;

select COUNT (*) as totalOrnes
FROM ordenes;

select 
ROUND(avg(TOTAL),2) as ticketPromedio
FROM ordenes;

select c.cliente_id,
c.nombre||' '||c.apellido as cliente,
sum(o.total) as totalGastos
from clientes c
JOIN ordenes o
on c.cliente_id = o.cliente_id
group by c.cliente_id, c.nombre, c.apellido
order by totalGastos DESC;

select d.nombre_producto,
sum(a.cantidad) TOTAL_VENDIDO
FROM detalle_orden a
join productos d 
on a.producto_id = d.producto_id
group by  d.nombre_producto
order by total_vendido desc


select c.nombre_categoria,
sum(d.subtotal) ingresos 
from detalle_orden d
join productos p
on d.producto_id = p.producto_id
join categorias c 
on p.categoria_id = c.categoria_id
group by c.nombre_categoria
order by ingresos desc 


select metodo_pago, 
sum(total) as TotalSegunMetodo 
from ordenes 
group by metodo_pago
order by TotalSegunMetodo desc

