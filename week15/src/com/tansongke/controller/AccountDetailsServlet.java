package com.tansongke.controller;

import com.tansongke.dao.OrderDao;
import com.tansongke.dao.UserDao;
import com.tansongke.model.Order;
import com.tansongke.model.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AccountDetailsServlet", value = "/accountDetails")
public class AccountDetailsServlet extends HttpServlet {
    private Connection con=null;

    @Override
    public void init() throws ServletException {
        con=(Connection) getServletContext().getAttribute("con");
    }

    @Override
    public void destroy() {
        super.destroy();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            User user = (User) session.getAttribute("user");
            int id = user.getId();
            UserDao dao = new UserDao();

            request.setAttribute("user", user);
            OrderDao orderDao = new OrderDao();
            List<Order> orderList = orderDao.findByUserId(con, id);
            request.setAttribute("orderList", orderList);
            request.getRequestDispatcher("WEB-INF/views/accountDetails.jsp").forward(request, response);

        } else {
            response.sendRedirect("login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
