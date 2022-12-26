/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.music.Account;
import net.music.Music;

/**
 *
 * @author haodeptrai
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

    private UserDao dao;

    @Override
    public void init() throws ServletException {
	super.init(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
	dao = new UserDao();
    }

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
	try ( PrintWriter out = response.getWriter()) {
	    /* TODO output your page here. You may use following sample code. */
	    out.println("<!DOCTYPE html>");
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Servlet Register</title>");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
	    out.println("</body>");
	    out.println("</html>");
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
	request.getRequestDispatcher("view/register.jsp").forward(request, response);
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
	try {

	    String theCommand = request.getParameter("command");
	    if (theCommand == null) {
		theCommand = "LIST";
	    }
	    switch (theCommand) {
		
		case "ADD":
		    add(request, response);
		    break;
		
		default:
		    add(request, response);
	    }

	} catch (Exception exc) {
	    throw new ServletException(exc);
	}
    }
    private void login(HttpServletRequest request, HttpServletResponse response) throws Exception{
	request.getRequestDispatcher("view/login.jsp").forward(request, response);
    }
    private void add(HttpServletRequest request, HttpServletResponse response) throws Exception {
	//read student infor from data
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pass = request.getParameter("pass");
	Account m = new Account(0, name, pass, email);
	dao.add(m);
	login(request, response);
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
