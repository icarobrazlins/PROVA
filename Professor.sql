show databases; -- Mostra os bancos de dados que o usário tem acesso;
use employees; -- Usa o banco de dados employees;
show tables; -- Mostra todas as tabelas do banco de dados em uso;
describe employees; -- Mostra a descrição da tabela employees;

select last_name, count(emp_no) as num_emp from employees group by last_name order by num_emp desc limit 10; -- Mostra um top 10 dos sobrenomes com mais numeros de empregados em ordem decrescente;
describe salaries; -- Mostra a descrição da tabela salaries;
select salary from salaries order by emp_no limit 10; -- Mostra um top 10 dos salários em ordem crescente;