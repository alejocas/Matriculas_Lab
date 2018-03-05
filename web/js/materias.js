/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('#holamundo').click(function(){
    console.log('asdflkjasdf');
});

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

