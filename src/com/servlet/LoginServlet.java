package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.model.User;

/**
 * Created by pc on 17-5-11.
 */

public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");

		String username = req.getParameter("username");
		String password = req.getParameter("password");
		UserDao userDao = new UserDao();
		//根据密码查询用户
		User user  = userDao.login(username, password);
		//判断user是否为空
		
			if (user != null) {
				//将用户的对象放到session中
				HttpSession session =req.getSession();
				session.setAttribute("user", user);
				session.setAttribute("username", username);
				req.setAttribute("flag", "1");
				//转发到result.jsp页面
			}else {
				//登录失败
				req.setAttribute("info","用户名或密码错误！");
				req.setAttribute("flag", "0");
			}
			req.setAttribute("type", "login");
			req.getRequestDispatcher("message.jsp").forward(req, resp);
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
