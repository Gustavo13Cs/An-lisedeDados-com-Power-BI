use Ecommerce;

-- IdClient,Fname,Minit,Lname,CPF,Address

insert into Clients(Fname,Minit,Lname,CPF,Address)
values("Maria","M","Silva",123456789,"Rua A"),
("Gustavo","G","Cunha",047531269,"Rua B"),
("Lucas","L","Lima",928371604,"Rua C"),
("Roberta","R","Santos",930526784,"Rua D"),
("Rosa","R","Santos",304516278,"Rua E"),
("Fabi","F","Silva",759418320,"Rua F");

Select * From product;
desc product;
Insert Into product(Pname,Classification_kids,category,avaliação,size) values
("Fone de Ouvido",False,'Eletronico','4',null),
("Barbie Elsa",true,'Brinquedos','3',null),
("Body Carters",true,'Vestimento','5',null),
("Microfone Vedo - Youtuber",False,'Eletronico','4',null),
("Sofá",False,'Moveis','3',null),
("Farinha de arroz",False,'Alimentos','2','3x57x80'),
("Fire Stick Amazon",False,'Eletronico','3',null);

delete from orders where IdOrderClient in (1,2,3,4);
insert into orders(idOrderClient,orderStatus,orderDescription,sendValue, paymentCash) values
(1,default,'compra via app', null,1),
(2,default,'compra via app', 50,0),
(3,'Confirmado',null, null,1),
(4,default,'compra via web site',150,0);

Select * From orders;
Select * From product;
insert into productOrder (idPOproduct,idPOrder,poQuantity,poStatus) values
(8,5,2,null),
(9,5,1,null),
(10,6,1,null);

insert into productEstoque (StorageLocation,quantity) values
('Rio de janeiro',1000),
('Rio de janeiro',500),
('São Paulo',10),
('São Paulo',100),
('São Paulo',10),
('Brasilia',60);


insert into StorageLocation (idLproduct,idLstorage,location) values
(8,2,'RJ'),
(9,6,'GO');

insert into Supplier (SocialName,CNPJ, contact) values
('Almeida e Filhos',62627638000104,'12345678'),
('Eletronicos Silva',27674837000172,'89693256'),
('Almeida e Filhos',51087388000140,'12353565');

select * from seller;

insert into seller (SocialName,AbstName,CNPJ,CPF,location,Contact) values
('Tect eletronics',null,68064112000140,null,'Rio de janeiro',123456339),
('Botique Durgas',null,null,479100895,'Rio de janeiro',1323456339),
('Kids World',null,85325342000134,null,'Sao Paulo',123646339);

insert into productSeller (idPseller,IdPproduct,quantity) values
(4,8,500),
(5,9,400),
(6,10,633);

select * from productSeller;



