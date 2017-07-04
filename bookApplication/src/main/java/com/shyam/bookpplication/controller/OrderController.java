package com.shyam.bookpplication.controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shyam.bookpplication.model.Order;
import com.shyam.bookpplication.model.OrderItem;
import com.shyam.bookpplication.model.User;
import com.shyam.bookpplication.repository.OrderRepository;
import com.shyam.bookpplication.service.OrderService;

@Controller
@RequestMapping("/order")

public class OrderController {

	@Autowired
	private OrderRepository orderRepo;

	@Autowired
	private OrderService orderservice;

	@GetMapping("/myorders")
	public String myOrders(ModelMap modelMap, HttpSession session) {
      System.out.println("Controller");
		User loggedInUser = (User) session.getAttribute("USER");
		System.out.println(loggedInUser.toString());
		List<Order> list = orderservice.findByUserIdOrderByIdDesc(loggedInUser.getId());
		modelMap.addAttribute("MY_ORDERS", list);
		return "OrderHistory";

	}
	
	@GetMapping("/remove")
	public String remove(@RequestParam("id") Integer id, HttpSession session, ModelMap modelMap) {

		Order order = (Order) session.getAttribute("MY_CART");

		if (order != null && order.getOrderItems().size() > 0) {
			List<OrderItem> orderItems = order.getOrderItems();

			OrderItem itemSelected = orderItems.get(id);
			orderItems.remove(itemSelected);
			order.setOrderItems(orderItems);
			session.setAttribute("MY_CART", order);
		}

		return "orderlist";

	}

	@PostMapping("/save")
	public String save(@RequestParam("total_amount") Float totalAmount, HttpSession session) {
		System.out.println(totalAmount);
		Order orderInsideCart = (Order) session.getAttribute("MY_CART");
		if (orderInsideCart != null && orderInsideCart.getOrderItems().size() > 0) {
		
            orderInsideCart.setTotalPrice(totalAmount.intValue());
			orderservice.save(orderInsideCart);
		    session.removeAttribute("MY_CART");
		}
		Order order = (Order) session.getAttribute("MY_CART");
		session.setAttribute("MY_CART",order);
		return "redirect:../order/myorders";
	}
	
	@GetMapping("/updateStatus")
	public String updateStatus(@RequestParam("id") Long orderId , @RequestParam("status")String status ) {
		Order order = orderservice.findOne(orderId);
		if ("CANCELLED".equals(status) ) {
			order.setCancelledDate(LocalDate.now());
		}
		else if ("DELIVERED".equals(status)) {
			order.setDeliveredDate(LocalDate.now());
		}
		
		order.setStatus(status);
		orderservice.save(order);	
		return "redirect:../order/myorders";
	}

}
