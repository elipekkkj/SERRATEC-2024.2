/*create table maquina(id_maquina serial primary key,
descricao varchar(50));*/

--insert into maquina(descricao) values('Torno'),('Máquina de Corte'),
--('Impressora 3D');

/*create table projeto(id_projeto serial primary key, descricao varchar(40), id_maquina int,
foreign key(id_maquina) references maquina(id_maquina));*/

--insert into projeto(descricao,id_maquina) values('Teste 1',1),('Teste 2', 2),('Teste 3', 2);

/*create or replace view view_maquina_projeto as
select p.descricao , m.descricao as maquina from projeto p
inner join maquina m on p.id_maquina = m.id_maquina*/






