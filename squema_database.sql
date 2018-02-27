/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  alejandro
 * Created: feb 27, 2018
 */

/*
    DATABASE NAME: dbmatriculas
*/


CREATE TABLE estudiante(
    documento int PRIMARY KEY, 
    nombre VARCHAR(50) NOT NULL, 
    apellido VARCHAR(50) NOT NULL,
    usuario VARCHAR(50) NOT NULL , 
    contraseña VARCHAR(50) NOT NULL,
    foto BLOB
);

CREATE TABLE materia( 
    id_materia int PRIMARY KEY, 
    nombre_materia VARCHAR(50) NOT NULL
);

CREATE TABLE matricula( 
    id_estudiante int , 
    id_materia int ,
    fecha DATETIME NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES estudiante(documento), 
    FOREIGN KEY (id_materia) REFERENCES materia(id_materia),
    PRIMARY KEY (id_estudiante, id_materia)
);