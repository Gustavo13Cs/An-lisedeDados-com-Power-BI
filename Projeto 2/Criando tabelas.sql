use Ecommerce;

-- Criar Tabela Cliente
Create table Clients(
idCliente int auto_increment primary key,
Fname varchar(10),
Minit char(3),
Lname varchar(20),
CPF char(11) not null,
Address varchar(30),
constraint unique_cpf_client unique (CPF)
);

alter table Clients auto_increment=1;

-- Criar Tabela produto
-- Size = dimensão do produto
Create table Product(
idProduct int auto_increment primary key,
Pname varchar(10),
Classification_kids bool default false,
category enum("Eletronico","Vestimento","Brinquedos","Alimentos","Moveis") not null,
Avaliação float default 0,
Size varchar(10)
);

alter table Product auto_increment=1;


-- parar ser continuado no desafio
create table payments (
idClient int,
id_payment int,
typePayment Enum("Boleto","Cartão","Dois Cartões"),
limitAvailable float,
primary key(idClient, id_payment)
);
-- Criar tabela pedido
create table orders(
idOrder int auto_increment primary key,
IdOrderClient int,
orderStatus Enum("Cancelado","Confirmado","Em processamento") default "Em processamento",
orderdescription varchar(255),
SendValue float default 10,
paymentCash bool default false,
constraint fk_ordes_client Foreign key (idOrderClient) references Clients(idCliente)
on update cascade 
);

alter table orders auto_increment=1;


-- criar tabela estoque 

Create table productEstoque (
idProdEstoque int auto_increment primary key,
StorageLocation varchar(255),
quantity int default 0
);

alter table productEstoque auto_increment=1;


-- criando tabela fornecedor 

Create table Supplier (
idSupplier int auto_increment primary key,
SocialName varchar(255) not null,
CNPJ  char(15) not null,
Contact char(11) not null,
Constraint unique_supplier unique(CNPJ)
);
alter table Supplier auto_increment=1;

-- criando tabela vendedor
Create table seller(
idSeller int auto_increment primary key,
SocialName varchar(255) not null,
AbstName varchar(255),
CNPJ  char(15),
CPF char(9),
location varchar(255),
Contact char(11) not null,
Constraint unique_cpnj_seller unique(CNPJ),
Constraint unique_cpf_seller unique(CPF)
);

alter table seller auto_increment=1;


create table productSeller(
IdPseller int,
IdPproduct int,
Quantity int default 1,
primary key(IdPseller, IdPproduct),
constraint fk_product_seller foreign key (IdPseller) references seller (IdSeller),
constraint fk_product_product foreign key (IdPproduct) references product (IdProduct)
);

create table productOrder(
idPOproduct int,
IdPOrder int,
poQuantity int default 1,
poStatus Enum("Disponivel","Sem Estoque") default "Disponivel",
primary key(idPOproduct,IdPOrder),
constraint fk_productorder_seller foreign key (idPOproduct) references product(idproduct),
constraint fk_productorder_product foreign key (IdPOrder) references orders(IdOrder)
);

create table StorageLocation (
IdLproduct int,
idLstorage int,
location varchar(255) not null,
primary key(idLproduct, idLstorage),
constraint fk_Storage_location_product foreign key (IdLproduct) references product(IdProduct),
constraint fk_Storage_location_storage foreign key (idLstorage) references productEstoque(idProdEstoque)
);

create table productSupplier(
idPsSupplier int,
idPsProduct int,
quantity int not null,
primary key (idPsSupplier,idPsProduct),
constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
);

show tables;







