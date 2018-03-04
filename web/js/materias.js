/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('#holamundo').click(function(){
    console.log('asdflkjasdf');
});

function registrarMateria(idEstudiante, idMateria){
        $.ajax({
               method: "POST",
               url: "./MatriculaServlet?action=InsertarMateria",
               data: { 
                   idEstudiante: idEstudiante,
                    idMateria: idMateria 
                },
                   success : function(response){
                       console.log(response);
                   } 
        }); 
        console.log(idEstudiante,idMateria);
        $('#contenedor-matricula').html(`<div id="contenedor-matricula" class="row">
                ${idEstudiante}    
        </div>`)
        

}

function getMaterias(id)
//$(document).ready(function()
{
//    $.ajax({
//        method: "POST",
//        url: "./MateriaServlet",
//        data: { action : "insertar" },
//            success : function(response){
//                console.log(response);
//            } 
//});
 console.log(id);
}

function toggleMaterias(){
    $("#content-materias").toggle(500);
}

