Create database if not exists manipulation;

use manipulation;

Create table BankAccounts (
Id_account INT auto_increment primary key,
Ag_num int not null,
Ac_num Int not null,
Saldo Float,
constraint identificantion_account_constraint unique (Ag_num, Ac_num)
);

Create Table bankClient (
Id_Client int auto_increment,
ClientAccount int,
CPF char(11) not null,
RG varchar(9) not null,
Nome varchar(50) not null,
Endereço varchar(100) not null,
Renda_mensal Float,
primary key (Id_Client,ClientAccount),
constraint fk_account_client foreign key (ClientAccount) references bankAccounts(id_account)
on update cascade
);

Create table bankTransactions (
Id_transcation int auto_increment primary key,
Ocorrencia datetime,
Status_transaction varchar(20),
Valor_Transferido float,
Source_account int,
Destination_account int,
constraint Fk_source_transation foreign key (Source_account) references
BankAccounts(Id_account),
Constraint fk_destionation_transaction foreign key (Destination_account) references 
BankAccounts(Id_account)
);

Alter table BankAccounts ADD LimiteCredito float not null default 1412.00;


