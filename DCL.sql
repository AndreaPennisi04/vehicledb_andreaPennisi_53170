/* 
En la tabla user, Mysql almacena la información de usuarios junto a cada uno de los permisos o bloqueo para trabajar sobre la base 
de datos Mysql y los objetos de ésta.*/
-- ------------
USE vehicledbs; 
show full tables ;
-- select * from db;
select * from user where user = 'sql_comision_53170';

select * from user where user like  '%camilo%';
select * from user where user like  '%jennifer%';

/* User creation*/
create user if not exists 'sql_comision_53170'@'localhost' identified by 'Comision-53170-sql' ;
create user if not exists 'camilo_redondo'@'localhost' identified by 'Comision-53170-sql' ;
create user if not exists 'jennifer_goldfeld'@'localhost' identified by 'Comision-53170-sql' ;

/*Password renew*/
-- alter user 'camilo.redondo'@'localhost' identified by 'newComision-53170-sql' ;
-- alter user 'jennifer.goldfeld'@'localhost' identified by 'newComision-53170-sql' ;
/* Re-name user*/
-- rename user 'camilo.redondo'@'localhost' to 'camilo'@'localhost';
-- rename user 'jennifer.goldfeld'@'localhost' to 'jennifer'@'localhost';
/* Delete user: para eliminar usuarios que ya no pueden seguir usando la db*/
-- drop user camilo_redondo@localhost; /* si el usuario fue rename necesita ir el new name*/
-- drop user jennifer_goldfeld@localhost;

select * from user where user like  '%camilo%';
select * from user where user like  '%jennifer%';
select * from user where user like  '%sql_comision-53170%';

/* Permissions */
show grants for 'sql_comision-53170'@'localhost';

/* Permission to a specific user by table: All allowe the user to have access to all in the table*/ 
-- grant all on vehicledbs.engine to 'sql_comision_53170'@'localhost'; 
-- grant all on vehicledbs.feature to 'sql_comision_53170'@'localhost'; 
-- grant all on vehicledbs.fuel to 'sql_comision_53170'@'localhost'; 
-- grant all on vehicledbs.variant to 'sql_comision_53170'@'localhost'; 


select * from user ;
/* Using revoke */ 
-- REVOKE ALL PRIVILEGES ON `vehicledb`.`engine_variant` FROM `sql_comision-53170`@`localhost`;

/*Permiso limitado*/ 
grant select on vehicledbs.engine_variant to 'sql_comision_53170'@'localhost' ;  
grant select , delete on vehicledbs.engine_variant to 'sql_comision_53170'@'localhost' ;   
grant select ,update on vehicledbs.engine_variant to newuser@localhost ; 