/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.EstudianteFacadeLocal;
import com.udea.ejb.MateriaFacadeLocal;
import com.udea.ejb.MatriculaFacadeLocal;
import com.udea.entity.Estudiante;
import com.udea.entity.Materia;
import com.udea.entity.Matricula;
import com.udea.entity.MatriculaPK;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alejandro
 */
public class MatriculaServlet extends HttpServlet {

    @EJB
    private MatriculaFacadeLocal matriculaFacade;

    @EJB
    private MateriaFacadeLocal materiaFacade;

    @EJB
    private EstudianteFacadeLocal estudianteFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            //Si aparece la opcion de listar en el formulario, se lista el tipo de entidad y la consulta findAll que referencia a SELECT
            //  a .... me crea un atributo sobre el objeto request ... al final va a una vista que le lista todos los datos :D
            String action = request.getParameter("action");
            String url = "index.jsp";

            if ("matricular".equals(action)) {
                List<Materia> materias = materiaFacade.findAll();
                request.getSession().setAttribute("materias", materias);
                String usuario = (String) request.getSession().getAttribute("login");
                Estudiante estudiante = estudianteFacade.findByUsuario(usuario);
                request.getSession().setAttribute("estudiante", estudiante);
                url = "nuevaMatricula.jsp";
                response.sendRedirect(url);
            } else if ("verMatriculas".equals(action)) {
                Estudiante estudiante;
                estudiante = (Estudiante) request.getSession().getAttribute("loginEstud");
                List<Matricula> findById = matriculaFacade.findByIdEstudiante(estudiante.getDocumento());
                request.getSession().setAttribute("matriculas", findById);
                url = "listaMatricula.jsp";
                response.sendRedirect(url);

            } else if ("InsertarMateria".equals(action)) {
                int idMateria = Integer.valueOf(request.getParameter("idMateria"));
                int idEstudiante = Integer.valueOf(request.getParameter("idEstudiante"));

                Matricula matricula = new Matricula(idEstudiante, idMateria);
                matricula.setEstudiante(estudianteFacade.find(idEstudiante));
                matricula.setMateria(materiaFacade.find(idMateria));
                matricula.setFecha(new Date());
                matriculaFacade.create(matricula);
                /*esto se puede hacer en una funcion por que se necesita para el metodo de eliminar*/

                List<Matricula> matriculas = matriculaFacade.findByIdEstudiante(idEstudiante);

                //List<Matricula> matriculas = matriculaFacade.findAll();
                Materia m;
                String json = "[";
                for (int i = 0; i < matriculas.size(); i++) {
                    m = (Materia) matriculas.get(i).getMateria();
                    if (m != null) {
                        json = json + "{\"idMateria\": " + String.valueOf(m.getIdMateria()) + ", \"nombreMateria\": \"" + m.getNombreMateria() + "\"}";
                        if (i < matriculas.size() - 1) {
                            json = json + ",";
                        }
                    }

                }

                response.getWriter().write(json + "]");

            } else if ("deleteMateria".equals(action)) {

                Estudiante est;
                est = (Estudiante) request.getSession().getAttribute("loginEstud");
                int id_materia = Integer.parseInt(request.getParameter("idMateria"));
                int id_estudiante = est.getDocumento();
                Matricula m = matriculaFacade.find(new MatriculaPK(id_estudiante,id_materia));
                matriculaFacade.remove(m);         
                url = "MatriculaServlet?action=verMatriculas";
                response.sendRedirect(url);
            
        }
        else{
                response.sendRedirect(url);
            }

    }

    
        finally {
            out.close();
    }
}

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 * Handles the HTTP <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
@Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
