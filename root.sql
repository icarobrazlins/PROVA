drop user if exists 'Icaro'@'localhost';
drop user if exists 'Pedro'@'localhost';
drop user if exists 'Fabio'@'localhost';

create USER if not exists 'Icaro'@'localhost' identified by '123456789';
create USER if not exists 'Pedro'@'localhost' identified by '987654321';
create USER if not exists 'Fabio'@'localhost' identified by '2468101214';

select * from mysql.USER;

grant all privileges on employees.* to 'Icaro'@'localhost';
grant all privileges on employees.* to 'Pedro'@'localhost';
grant all privileges on employees. salaries to 'Pedro'@'localhost';
grant all privileges on employees. employees to 'Pedro'@'localhost';
grant all privileges on employees.* to 'Fabio'@'localhost';
grant all privileges on employees. salaries to 'Fabio'@'localhost'; 

flush privileges;

revoke all on employees.salaries from 'Fabio'@'localhost';
revoke select on employees.salaries from 'Pedro'@'localhost';
revoke select on employees.employees from 'Pedro'@'localhost';

flush privileges;
-- Passo 7 feito pelo usuário root por causa do previlégio elevado

revoke all on employees.* from 'Icaro'@'localhost';
revoke all on employees.* from 'Pedro'@'localhost';
revoke all on employees. salaries from 'Pedro'@'localhost';
revoke all on employees. employees from 'Pedro'@'localhost';

grant select on employees.salaries to 'Icaro'@'localhost';
grant select on employees.salaries to 'Pedro'@'localhost';

flush privileges;