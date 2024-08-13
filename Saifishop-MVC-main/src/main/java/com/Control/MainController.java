package com.Control;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import hibernateconfig.App;

@Controller
public class MainController {

	@RequestMapping(value = "/register")
	public String name() {
		return "register.jsp";
	}

	@RequestMapping(value = "/loginpage")
	public String login(Model m, entitylogin log) {
		Session session = App.opensesSessionFactory().openSession();
		List<entitylogin> logger = loginfetch(log, session);
		String string = logger.toString();
		if (string.equals("[]")) {
			System.out.println("Automatic Run And redirect to another world");
			m.addAttribute("error", "You Are Not a User!");
			return "login.jsp";
		} else if (logger.get(0).getUsername().equals(log.getUsername())
				& logger.get(0).getPassword().equals(log.getPassword())) {
			m.addAttribute("Userlogin", "true");
		} else {
			return "register.jsp";
		}
		return "login.jsp";
	}

	@RequestMapping(value = "/log")
	public String name1(Model model, Employee employee) {

		try {
			Session session = App.opensesSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			if (employee.getPassword().equals(employee.getCpassword())) {
				System.out.println("Password Matched");
				entitylogin el = new entitylogin();
				el.setPassword(employee.getPassword());
				el.setUsername(employee.getEmail());
				employee.setLogin(el);
				session.persist(el);
				session.persist(employee);
				model.addAttribute("good", "Success!");
				tx.commit();
			} else {
				model.addAttribute("error", "Password Doen't Match");
				return "register.jsp";
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return "login.jsp";
	}

	public List<entitylogin> loginfetch(entitylogin log, Session session) {
		Transaction tx = session.beginTransaction();
//		List<entitylogin> login1=session.createQuery("from entitylogin", entitylogin.class).getResultList();
		String sql = "from entitylogin where username='" + log.getUsername() + "' and password='" + log.getPassword()
				+ "'";
		System.out.println(sql);
		Query query = session.createQuery(sql, entitylogin.class);
		List<entitylogin> login1 = query.list();
		return login1;
	}
}
