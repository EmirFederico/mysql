CREATE TABLE `usuarios` (
   `id` INT AUTO_INCREMENT,
   `apellido` VARCHAR(100) NOT NULL,
   `nombre` VARCHAR(100) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT AUTO_INCREMENT,
   `titulo` VARCHAR(100) NOT NULL,
   `descripcion` TEXT NOT NULL,
   `id_usuario` INT NOT NULL,
   `creacion` DATETIME NOT NULL,
   `ultima_modificacion` DATETIME NOT NULL,
   `elimina` TINYINT(1) NOT NULL,  
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias` (
   `id` INT AUTO_INCREMENT,
   `nombre` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notaCategoria` (
   `id` INT AUTO_INCREMENT,
   `id_notas` INT NOT NULL,
   `id_categoria` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_78a6ef88-d671-466d-9707-902980dae472` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios`(`id`);

ALTER TABLE `notaCategoria` ADD CONSTRAINT `FK_748e63f6-559d-4907-b74a-71d4d66ff066` FOREIGN KEY (`id_categoria`) REFERENCES `categorias`(`id`);

ALTER TABLE `notaCategoria` ADD CONSTRAINT `FK_ee4e45ac-50c8-4095-a36d-0aa1b4129243` FOREIGN KEY (`id_notas`) REFERENCES `notas`(`id`);


INSERT INTO notasTP.categorias values
    (default,
    'cumpleaños'
    ),   
    
    (default,
    'tareas/trabajos'
    ),   
    
    (default,
    'compras'
    ),   
    
    (default,
    'salud'
    ),   
    
    (default,
    'ocio'
    ),   
    
    (default,
    'citas'
    ),   
    
    (default,
    'religioso'
    ),
    
    (default,
    'viajes'
    ),   
    
    (default,
    'hijos'
    ),   
    
    (default,
    'otros'
    );

   
INSERT INTO notasTP.usuarios VALUES
    (default,
    'Jones',
    'Gabriel',
    'jgabriel@gmail.com'
    ),   
    
    (default,
    'Gabrieli',
    'Ricardo',
    'gabrieliricardo@gmail.com'
    ),  
    
    (default,
    'Brown',
    'John',
    'johnbrown@gmail.com'
    ),   
    
    (default,
    'Bobby',
    'Nicanor',
    'bobby@gmail.com'
    ),  
    
    (default,
    'Gonzalez',
    'Pedro',
    'pedritodelagente@gmail.com'
    ),   
    
    (default,
    'Coconut',
    'Micaela',
    'coco.mica@myspace.com'
    ),  
    
    (default,
    'Vivaldi',
    'Nicolas',
    'nicolasvivaldi@gmail.com'
    ),   
    
    (default,
    'Wagner',
    'Richard',
    'richardwagner@gmail.com'
    ),  
    
    (default,
    'Garcia',
    'Carlos',
    'charlygarcia@saynomore.com'
    ),   
    
    (default,
    'Alvarez',
    'Cristian',
    'cristianintoxicados@gmail.com'
    );
   

INSERT INTO notasTP.notas VALUES
    (default,
    'Recordatorio Cumple',
    'No olvidar cumpleaños de 50 de Jose el 27-oct en la casa de la suegra ',
    2,
    '2019-12-31 23:59:59',
    '2020-12-31 23:59:59',
    0    
    ),
    
    (default,
    'Terminar tarea',
    'Entregar tarea de matematica para el jueves 2',
    3,
    '2019-09-13 21:52:59',
    '2020-10-22 20:20:59',
    0
    ),
    
    (default,
    'Entregar trabajo',
    'Entregar trabajo de ciencias para el miercoles 25',
    3,
    '2017-12-31 13:23:21',
    '2021-09-21 20:51:02',
    1
    ),
    
    (default,
    'Tarea Colegio',
    'Hacer tareas atrasadas antes del 23-nov',
    4,
    '2018-09-09 21:52:59',
    '2020-10-17 20:20:59',
    1
    ),
    
    (default,
    'Comprar viveres ',
    'Ir al super que hay 50% OFF este lunes',
    3,
    '2021-03-04 06:19:00',
    '2021-12-30 15:44:05',
    0
    ),
    
    (default,
    'Cumpleaños Javi',
    'Cumple el 23-oct, esta vez no olvidarme!!',
    7,
    '2019-09-12 21:52:59',
    '2020-07-11 22:48:03',
    1
    ),
    
    (default,
    'Comprar comida perro ',
    'Comprar comida al perro que solo tiene para mañana. Mejor precio en Av. Falsa 123',
    6,
    '2015-07-19 09:54:32',
    '2020-05-14 13:19:13',
    1
    ),
    
    (default,
    'Ir al medico',
    'Ir al medico en Elm Street el lunes 22hs',
    5,
    '2021-09-29 19:54:00',
    '2021-10-01 23:23:59',
    1
    ),
    
    (default,
    'Joda con amigos',
    'Sale birra con los pibes en el bar de quique',
    9,
    '2013-11-04 09:10:59',
    '2021-08-08 08:08:08',
    0
    ),
    
    (default,
    'Futbol 5',
    'Jugamos en Centenera y Autopista vs "los Grasosos" el jueves a las 21hs ',
    8,
    '2021-10-06 22:54:59',
    '2021-10-07 07:21:13',
    1
    );    
   
 

INSERT INTO notasTP.notacategoria VALUES
    (default,
    1,
    1
    ),
    
    (default,
    2,
    2
    ),
    
    (default,
    3,
    2
    ),
    
    (default,
    4,
    2
    ),
    
    (default,
    5,
    3
    ),
    
    (default,
    6,
    1
    ),
    
    (default,
    7,
    3
    ),
    
    (default,
    8,
    4
    ),
    
    (default,
    9,
    5
    ),
    
    (default,
    10,
    5
    );