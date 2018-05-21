/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Edgar
 */
public class PersonalServlet extends HttpServlet {

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
        
        String opcad=request.getParameter("op");
        int op=Integer.parseInt(opcad);
        String pagina="";
        switch(op){
            case 1:
            {
                pagina="/Login/FrmLoginPersonal.jsp";
                break;
            }
            case 2:
            {
                pagina="/Principal/newjspFrmPrincipalPersonal1.jsp";
                break;
            }
            case 3:
            {
                pagina="/Seguridad/Gestio_user_privi.jsp";
                break;
            }
            case 4:
            {
                pagina="/Seguridad/Config_actualizar_datos.jsp";
                break;
            }
            case 5:
            {
                pagina="/Seguridad/Cambiar_contra_Gestion.jsp";
                break;
            }
            case 6:
            {
                pagina="/index.jsp";
                break;
            }
            case 7:
            {
                pagina="/mantenimiento/personal/tablaSemestre.jsp";
                break;
            }
            case 8:
            {
                pagina="/mantenimiento/personal/tablaCarrera.jsp";
                break;
            }
        }
        getServletContext().getRequestDispatcher(pagina).forward(request, response);
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
