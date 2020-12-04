package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.model.User;

public class RegServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");

		//获取用户注册信息
		String username = req.getParameter("username");
		String password = req.getParameter("password1");
		String password2 = req.getParameter("password2");
		String sex = req.getParameter("sex");
		String question = req.getParameter("question");
		String answer = req.getParameter("answer");
		String email = req.getParameter("email");
		System.out.println("获取用户注册信息成功");
		//实例化UserDao对象
		UserDao userDao = new UserDao();
		if (username != "") {
			if(password !=""){
				if(password.equals(password2)){
					//实例化一个User对象
					User user = new User();
					//对用户对象的属性赋值
					user.setUsername(username);
					user.setPassword(password);
					user.setSex(sex);
					user.setQuestion(question);
					user.setAnswer(answer);
					user.setEmail(email);
					user.setType("n");
					if(userDao.userAvailable(username)){
						userDao.saveUser(user);
						req.setAttribute("info", "注册成功！ <br>");
					}
					else {
						req.setAttribute("info", "此用户已存在！<br>注册失败！<br>");
					}
				}
				else{
					req.setAttribute("info","两次密码不一致！<br>注册失败！<br>");
				}
			}
			else{
				req.setAttribute("info", "密码为空！<br>注册失败！<br>");
			}
		}
		else{
			req.setAttribute("info", "用户名为空！<br>注册失败！<br>");
		}
		//转发到message.jsp页面
		req.setAttribute("type", "register");
		
		req.getRequestDispatcher("registermessage.jsp").forward(req, resp);
	}

}
