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
                       creaTabla(JSON.parse(response,idEstudiante));
                   },
                   error: function(error){
                        console.error(error);
                        
                   } 
        }); 
        console.log(idEstudiante,idMateria);
        
        

}

function creaTabla(materias,idEstudiante){
    let tr = "";
    materias.forEach(materia => {
        tr = tr + 
        `<tr>
            <td>${materia.idMateria}</td>
            <td>${materia.nombreMateria}</td>
            <td>
                <button class="btn btn-block waves-effect waves-light" 
                        onclick="eliminarMateria(${idEstudiante},${materia.idMateria})">
                    ELIMINAR
                </button>
            </td>
        </tr>`
    });

    let tabla = `
    <div id="contenedor-matriculado" class="row">
        <div class="col s8 offset-s2">
            <table>
                <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Matricular</th>
                </tr>
                </thead>
                <tbody>
                        
                            ${tr}
                        
                </tbody>
            </table>
        </div>
    </div>`;

    $('#contenedor-matriculado').html(
         tabla
    );
    toggleMaterias();
}

function getMaterias(id)
{

 console.log(id);
}

function eliminarMateria(idEstudiante,idMateria){
    console.log();
    $.ajax({
        method: "POST",
        url: "./MatriculaServlet?action=EliminarMateria",
        data: { 
            idEstudiante: idEstudiante,
             idMateria: idMateria 
         },
            success : function(response){
                creaTabla(JSON.parse(response,idEstudiante));
            },
            error: function(error){
                 console.error(error);
                 
            } 
 }); 
}

function toggleMaterias(){
    $("#contenedor-matricula").toggle(500);
}

