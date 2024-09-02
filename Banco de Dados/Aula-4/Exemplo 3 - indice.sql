/*create table cliente(id_cliente serial primary key, nome varchar(60), email varchar(50),
					  telefone varchar(11), endereco varchar(200));*/

/*create or replace function inserir_registros(num_registros integer)
returns void as
$$
declare
i integer:= 1;

begin
	while i <= num_registros loop 
		insert into cliente(nome,email,telefone,endereco)
		values('Cliente'||i,'cliente'||i||'@exemplo.com','(XX)XXXXX','Endereço'||i);
		i:= i+1;
	end loop;
end;
$$
language plpgsql;*/

/*create index idx_nome on cliente using btree(nome);*/

/*explain analyse select from cliente where nome like 'Cliente 48%';*/
