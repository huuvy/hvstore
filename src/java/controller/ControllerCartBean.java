/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Cart.CartBean;
import Cart.ProductDTO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

/**
 *
 * @author Admin
 */
public class ControllerCartBean extends HttpServlet {

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
        try{
            String action = request.getParameter("action");
            if(action.equals("Add to Cart")){
                HttpSession session = request.getSession(true);
                CartBean shop = (CartBean)session.getAttribute("SHOP");
                if(shop==null){
                    shop = new CartBean();
                }
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String price = request.getParameter("txtPrice");
                Float fprice = Float.parseFloat(price);
                String image = request.getParameter("txtImage");
                Product s = new Product(code,name,fprice,image);
                ProductDTO ss = new ProductDTO(s);
                shop.addSanPham(ss);
                session.setAttribute("SHOP",shop);
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }else if(action.equals("View Cart")){
                RequestDispatcher rd = request.getRequestDispatcher("showCart.jsp");
                rd.forward(request, response);
            }else if(action.equals("AddMore")){
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }else if(action.equals("Remove")){
                String []list = request.getParameterValues("rmv");
                if(list!=null){
                    HttpSession session = request.getSession();
                    if(session!=null){
                        CartBean shop= (CartBean)session.getAttribute("SHOP");
                        if(shop!=null){
                            for(int i=0;i<list.length;i++){
                                shop.remove(list[i]);  
                            }
                            session.setAttribute("SHOP",shop);
                        }
                    }
                }
                String url = "ControllerCartBean?action=View Cart";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } }catch (Exception e) {
        }
         finally{
             out.close();}
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
