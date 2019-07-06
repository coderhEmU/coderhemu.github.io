package com.shop.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.validator.Size;

import com.shop.dao.Order_DetailsDao;
import com.shop.dao.OrdersDao;
import com.shop.dao.ProductDao;
import com.shop.dao.UserDao;
import com.shop.modal.Order_Details;
import com.shop.modal.Orders;
import com.shop.modal.Product;
import com.shop.modal.User;

public class AjioController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<String> cList = ProductDao.getCategories();
		HttpSession se = req.getSession();
		se.setAttribute("listCtg", cList);
		List<Product> iList = ProductDao.getAllProducts();
		se.setAttribute("itemList", iList);
		// System.out.println(cList.size());
		String bt = req.getParameter("action");
		if (bt == null) {
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession se = request.getSession();
		String bt = request.getParameter("action");
		if (bt.equals("SignUp")) {
			String n = request.getParameter("name");
			String e = request.getParameter("email");
			String p = request.getParameter("pwd");
			User u = new User(n, e, p);
			if (UserDao.RegisterUser(u)) {
				request.getRequestDispatcher("Register.jsp").forward(request, response);

			} else {
				System.out.println("Not Registered");
			}
		}

		if (bt.equals("Login")) {
			String pw = request.getParameter("password");
			String em = request.getParameter("email");
			User u1 = UserDao.getUserByMail(em);

			if (u1.getPassword().equals(pw)) {
				se.setAttribute("uname", u1.getName());
				request.getRequestDispatcher("loginhome.jsp").forward(request, response);

			} else {
				System.out.println("Please sign up first");
			}

		}
		if (bt.equals("Go")) {
			String cty = request.getParameter("category");
			se.setAttribute("cate", cty);
			List<Product> pList = ProductDao.getProductsByCategory(cty);
			se.setAttribute("itemList", pList);
			request.getRequestDispatcher("login.jsp").forward(request, response);

		}
		if (bt.equals("GO")) {
			String cty = request.getParameter("category");
			se.setAttribute("cate", cty);
			List<Product> pList = ProductDao.getProductsByCategory(cty);
			se.setAttribute("itemList", pList);
			request.getRequestDispatcher("loginhome.jsp").forward(request, response);

		}
		if (bt.equals("AddToCart")) {
			String[] quantities = request.getParameterValues("quantity");
			String[] itemId = request.getParameterValues("i_id");
			LinkedHashMap<Integer, Integer> itemDetails = new LinkedHashMap<Integer, Integer>();
			List<Product> itemList = new ArrayList<Product>();
			List<Integer> qtList = new ArrayList<Integer>();
			int qty = 0, id = 0, tp = 0, beforeqt = 0;
			Product item = null;
			if (se.getAttribute("selectedItemList") != null && se.getAttribute("qtList") != null) {
				System.out.println("entered if part");
				itemList = (List<Product>) se.getAttribute("selectedItemList");
				System.out.println("itemlist size" + itemList.size());
				qtList = (List<Integer>) se.getAttribute("qtList");
				beforeqt = qtList.size();
				tp = (int) se.getAttribute("totalprice");
				System.out.println(tp + " : tp");
				for (int i = 0; i < quantities.length; i++) {
					qty = Integer.parseInt(quantities[i]);
					id = Integer.parseInt(itemId[i]);
					itemDetails.put(id, qty);

				}
				for (Map.Entry m : itemDetails.entrySet()) {
					int quantity = (int) m.getValue();
					if (quantity > 0) {
						item = ProductDao.getProductById((int) m.getKey());
						qtList.add(quantity);
						itemList.add(item);
						tp += (item.getPrice() * qtList.get(beforeqt));
						beforeqt++;

					}
				}

			} else {
				for (int i = 0; i < quantities.length; i++) {
					qty = Integer.parseInt(quantities[i]);
					id = Integer.parseInt(itemId[i]);
					itemDetails.put(id, qty);

				}
				for (Map.Entry m : itemDetails.entrySet()) {
					int quantity = (int) m.getValue();
					if (quantity > 0) {
						item = ProductDao.getProductById((int) m.getKey());
						qtList.add(quantity);
						itemList.add(item);

					}
				}
				for (int i = 0; i < qtList.size(); i++) {
					tp += (qtList.get(i) * itemList.get(i).getPrice());
				}

			}
			se.setAttribute("selectedItemList", itemList);
			se.setAttribute("qtList", qtList);
			se.setAttribute("totalprice", tp);
			se.setAttribute("beforeqt", beforeqt);
			request.getRequestDispatcher("cart.jsp").forward(request, response);

		}
		if (bt.equals("Continue")) {
			Orders o = new Orders();
			int totalP = (int) se.getAttribute("totalprice");
			o.setTotal_amount(totalP);
			Date d = new Date();
			o.setOrder_date(d);
			String name = (String) se.getAttribute("uname");
			User u = UserDao.getUserByName(name);
			o.setUser_id(u.getId());
			OrdersDao.generateOrder(o);
			List<Product> pList = (List<Product>) se.getAttribute("selectedItemList");
			List<Integer> qList = (List<Integer>) se.getAttribute("qtList");
			int orderId = OrdersDao.getOrderIdBycustomer(o);
			Order_Details od = null;
			Product product = null;
			for (int i = 0; i < pList.size() && i < qList.size(); i++) {
				od = new Order_Details();
				product = new Product();
				od.setProduct_id(pList.get(i).getId());
				od.setOrder_id(orderId);
				od.setQuantity(qList.get(i));
				Order_DetailsDao.insertpurchasedProduct(od);

			}
			request.getRequestDispatcher("final.jsp").forward(request, response);

		}
		if (bt.equals("placeorder")) {
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
		}

	}

}
