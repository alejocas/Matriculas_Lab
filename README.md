# MatriWeb!

Aplicación aplicación **CRUD** (Create/Read/Update/Delete) que consiste en gestionar la inscripción de matrícula para el estudiante.

# Configuración
1. Configurar la base de datos: En MySQL server crear una base de datos con el nombre *dbmatriculas*. Se adjunta en la carpeta Grab structure tables, los archivos .grap para añadir la table.
2.  Configurar base de datos al servidor Glassfich: Se debe considerar archivos de configuración para el pool de conexiones con los recursos JDBC.
En el archivo *Configuration Files/glassfish-resources.xml* tener en cuenta parámetros para la conexción, se muestran acontinuación:

```
 <property name="URL" value="jdbc:mysql://localhost:3306/dbmatriculas?zeroDateTimeBehavior=convertToNull"/>       
      <property name="User" value="root"/>
     <property name="Password" value="root"/>
}
```

     
 - Nombre de la base de datos: *dbmatriculas*
 - Contraseña de acceso

##Se debe considerar que la inserción de materias se realiza desde la base datos
