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

public class PasswordUpdate extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");

        String username = req.getParameter("username");
		String password = req.getParameter("password1");
		String password2 = req.getParameter("password2");
		String email = req.getParameter("email");
		String v1 = req.getParameter("ver");
		
		HttpSession session =req.getSession();
		String v2 = (String) session.getAttribute("pwdveri");
		System.out.println("用户输入的验证码是："+ v1);
		System.out.println("邮箱收到的验证码是："+ v2);
		System.out.println("邮箱："+ email);
		System.out.println("获取用户注册信息成功");
		
        UserDao userDao = new UserDao();
        if (username != "") {
			if(password !=""){
				if(password.equals(password2)){
					if(v1 != null && v2 != null && v1.contentEquals(v2)){
					//实例化一个User对象
						//User user = new User();
					//对用户对象的属性赋值
						int total = userDao.pwdupdate(username, password,email);
						if(total==1)
						{req.setAttribute("info","修改成功！<br>");
						req.setAttribute("flag","1");
						session.invalidate();}
						else{req.setAttribute("info","用户名和邮箱地址不匹配！<br>修改失败！<br>");
						req.setAttribute("flag","0");}
					}
					else{
						req.setAttribute("info","验证码错误！<br>修改失败！<br>");
						req.setAttribute("flag","0");
					}
				}
				else{
					req.setAttribute("info","两次密码不一致！<br>修改失败！<br>");
					req.setAttribute("flag","0");
				}
			}
			else{
				req.setAttribute("info", "密码为空！<br>修改失败！<br>");
				req.setAttribute("flag","0");
			}
		}
		else{
			req.setAttribute("info", "用户名为空！<br>修改失败！<br>");
			req.setAttribute("flag","0");
		}
        //
        req.getRequestDispatcher("updatemessage.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
