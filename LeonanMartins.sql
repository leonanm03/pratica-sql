// Busque produtos quaisquer, limitados a 5;
select * from produtos limit 5;

// Busque clientes quaisquer da loja, limitados a 3;
select * from clientes limit 3;

// Busque o produto com nome Televisão 43";
select * from produtos where nome='Televisão 43"';

// Adicione um novo produto chamado Macbook Pro 13"
INSERT INTO produtos (nome, preco) VALUES ('Macbook Pro 13"', '1700000');

// Orlando Pequeno Jesus fez barraco na loja e agora está banido. Remova-o da lista de clientes;
DELETE FROM clientes WHERE nome='Orlando Pequeno Jesus';

// O dólar subiu mais uma vez e o preço do produto Pelúcia Strange Planet com Gatinho agora é R$ 80,00. Atualize no banco;
UPDATE produtos SET preco='8000' WHERE nome = 'Pelúcia Strange Planet com Gatinho';

// A alta do dólar também afetou o preço do Violão Lava ME 2. Altere seu preço para R$ 9800,00. Atualize o banco.
UPDATE produtos SET preco='980000' WHERE nome = 'Violão Lava ME 2';

// Lucca Santarém Branco usou o CPF de um laranja. Modifique seu CPF para o valor correto: 04652651298;
UPDATE clientes SET cpf='04652651298' WHERE nome = 'Lucca Santarém Branco';


// Chico Buarque de Holanda comprou o produto Violão Lava ME 2. Adicione esse registro de compra na tabela compra;
insert into compras (id_cliente, id_produto) values (8,10);

// Olga Cascais Fortunato comprou dois Celular Topo de Linha. Adicione os registros de compra na tabela compra;
insert into compras (id_cliente, id_produto) values (4,8),(4,8);

// Martinha Lima Zambujal devolveu o produto Fone Topo de Linha. Remova este registro da tabela compra;
delete from compras where id=6;

// Busque todos os produtos ordenados pelo preço, de forma crescente. Para este item, procure por sql order by;
select * from produtos order by preco;

// Busque os 3 produtos mais baratos;
select * from produtos order by preco limit 3;

// Busque o produto com o maior preço;
select * from produtos order by preco desc limit 1;

// Busque o produto com o segundo menor preço. Para este item, procure por sql offset.
select * from produtos order by preco offset 1 limit 1;


//DESAFIOS
// Busque todos os produtos com Televisão no nome. Para fazer isso, procure por sql like operator;
select * from produtos where nome like '%Televisão%';

// Busque todos os produtos com preço menor que R$1000,00. Para fazer isso, procure por sql comparison operators;
select * from produtos where preco < 100000;

// Busque todos os produtos com Celular no nome e preço menor que R$2000,00. Para isso, utilize o operador like do item anterior e procure por sql logical operators;
select * from produtos where nome like '%Celular%' and preco < 200000;
