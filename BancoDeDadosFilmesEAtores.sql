create table Filme(
	Id int primary key identity,
	Nome varchar(60),
	Data_Lancamento int,
	Duracao int
);

create table Ator(
	Id int primary key identity,
	Nome varchar(60),
	Sobrenome varchar(100)
);


Insert into Filme (Nome, Data_Lancamento, Duracao)
values 
	('Thor: amor e trovao', 2022, 120),
	('O Homem do Norte', 2022, 137),
	('O Homem nas Trevas', 2016, 88);

Insert into Ator (Nome, Sobrenome)
values 
	('Stephen', 'Lang'),
	('Jane', 'Levy'),
	('Dylan', 'Minnette'),
    ('Daniel', 'Zavatto'),
	('Natalie','Portman'),
	('Christian', 'Bale'),
	('Chris', 'Hemsworth'),
	('Matt', 'Damon'),
	('Russel','Crowe'),
	('Anya', 'Taylor-Joy'),
	('Alexander','Skarsgard'),
	('Willian', 'Defoe'),
	('Nicole', 'Kidman'),
	('Ethan', 'Hawke');


create table Filme_Ator(
	Id int primary key identity,
	idFilme int,
	idAtor int,

	constraint fk_filme_id foreign key (idFilme) references Filme(Id),
	constraint fk_ator_id foreign key (idAtor) references Ator(Id)
);

-- Ordenendo por ordem alfabetica
select Nome from Filme order by Nome;

-- Ordenando por ordem de lançamento
select Nome, Data_Lancamento from Filme order by Data_Lancamento desc;

-- Ordernando por ordem alfabetica
select Nome, Sobrenome from Ator order by Nome;