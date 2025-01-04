use Ecommerce;

Select count(*) from clients;

Select Fname,Lname,IdOrder,orderStatus from clients c, orders o where c.idCliente = IdOrderClient;
