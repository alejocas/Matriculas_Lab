/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.EstudianteFacadeLocal;
import com.udea.entity.Estudiante;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author alejandro
 */
@MultipartConfig
public class EstudianteServlet extends HttpServlet {

    
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
            if ("login".equals(action)) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                boolean checklogin = estudianteFacade.checkLog(username, password);
                if( checklogin){
                    // si el usuario ya existe, ese atributo login guarda el nombre de fulanito
                    request.getSession().setAttribute("login", username);
                    url = "manager.jsp";
                }
                else{
                    url = "login.jsp?error?=1";
                }
                
            }
            else if("insert".equals(action)){

                Estudiante estudiante = new Estudiante();
                estudiante.setDocumento(Integer.parseInt(request.getParameter("documento")));
                estudiante.setApellido(request.getParameter("apellido"));
                estudiante.setContraseña(request.getParameter("contrasena"));
                estudiante.setNombre(request.getParameter("nombre"));
                estudiante.setUsuario(request.getParameter("usuario"));
                Part part = request.getPart("file");
                        if (part != null && part.getSize() != 0) {
                            InputStream is = part.getInputStream();
                            byte[] buffer = new byte[is.available()];
                            is.read(buffer);
                            is.close();
                            estudiante.setFoto(buffer);
                        } else {
                            estudiante.setFoto(null);
                        }               
                
                estudianteFacade.create(estudiante);
                url = "login.jsp";
            }
            else if("verPerfil".equals(action)){
                //TODO:hacer ver perfil
                String usuario = (String) request.getSession().getAttribute("login");
                Estudiante estudiante = estudianteFacade.findByUsuario(usuario);
                request.getSession().setAttribute("estudiante", estudiante);
                String foto = estudiante.getFotoBase64();
                request.getSession().setAttribute("estudiante", estudiante);
                url="verPerfil.jsp";
                
            }
            else if("logout".equals(action)){
                request.getSession().removeAttribute("login");
                url = "login.jsp";
            }
            else if("matricular".equals(action)){
                request.getSession().removeAttribute("login");
                url = "nuevaMatricula.jsp";
            }
            response.sendRedirect(url);
        }finally {
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
