/* 
 * <h1>Hola Mundo</h1>
 * Hay varias cositas que modificar en el proyecto por el cambio de BD para que funcione:
 * 1. En Configuration Files -> gassfish-resources.xml le cambian la parte de URL que tiene LOCALHOST
 * por localhost:3306/dbmatricula y abajito una que dije java:app le ponen java:app/matricula
 * 2. En persistence.xml donde dice Data Souce cambien por java:app/matricula
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
    foto Longblob NOT NULL
);

CREATE TABLE materia( 
    id_materia int AUTO_INCREMENT PRIMARY KEY , 
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