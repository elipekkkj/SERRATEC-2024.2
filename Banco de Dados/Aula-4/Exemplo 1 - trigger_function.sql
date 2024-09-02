/*create table empregado(id_empregado serial primary key,
 nome varchar(60)not null, sobrenome varchar(40) not null,
 email varchar(50) not null unique, cargo varchar(40), 
 salario numeric);*/

/*insert into empregado (nome,sobrenome,email,cargo,salario) 
values ('José', 'Ciclano', 'ciclano@teste.com', 'Programador',5000.);
insert into empregado (nome,sobrenome,email,cargo,salario) 
values ('Antonio', 'Silva', 'silva@gmail.com', 'Analista de Sistemas',6000.);
insert into empregado (nome,sobrenome,email,cargo,salario) 
values ('Marina', 'Oliveira', 'm@gmail.com', 'DBA',9000.);*/

/*create table empregado_auditoria(id_empregado_auditoria serial primary key,
 id_empregado int,
 nome varchar(60)not null,
 modificadoem date, 
 salario numeric);*/

/*create or replace function empregado_atual_sal_func()
returns trigger as $$
begin
	insert into empregado_auditoria (id_empregado,nome,salario,modificadoem)
	values(OLD.id_empregado, OLD.nome, OLD.salario, now());
	return new;
end;
$$
language plpgsql*/

/*create trigger atualiza_salario
after update on empregado
for each row
execute procedure empregado_atual_sal_func();*/


/*update empregado set salario = salario * 1.2*/

/*create table empregado_auditoria_delete(id_empregado_auditoria_delete serial primary key,
 id_empregado int,
 nome varchar(60)not null,
 sobrenome varchar(50) not null,
 email varchar(50) not null unique,
 cargo varchar(50),
 data date,
 salario numeric);*/

/*create or replace function empregado_del_func()
returns trigger as $$
begin
	insert into empregado_auditoria_delete(id_empregado,nome,sobrenome,email,cargo,salario,data)
	values(OLD.id_empregado, OLD.nome,OLD.sobrenome,OLD.cargo,OLD.email, OLD.salario, now());
	return new;
end;
$$
language plpgsql*/

/*create trigger apagar_empregado
after delete on empregado
for each row
execute procedure empregado_del_func();*/

/*delete from empregado where id_empregado = 1*/












 

