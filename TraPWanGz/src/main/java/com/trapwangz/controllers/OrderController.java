package com.trapwangz.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import static javax.swing.JOptionPane.showMessageDialog;

import com.trapwangz.models.Orders;
import com.trapwangz.models.User;
import com.trapwangz.services.OrderService;
import com.trapwangz.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class OrderController {
	
	@Autowired
	OrderService orderService;
	@Autowired
	UserService userService;
		
	@GetMapping("/wings")
	public String wings(Model model, HttpSession session) {
		if(session.getAttribute("userId") == null ) {
			return "wings.jsp";
		}
		model.addAttribute("user", userService.getOneUser((Long)session.getAttribute("userId")));
		return "wings.jsp";
	}
	
	@GetMapping("/sides")
	public String sides(Model model, HttpSession session) {
		model.addAttribute("user", userService.getOneUser((Long)session.getAttribute("userId")));
		return "sides.jsp";
	}
	
	@GetMapping("/sets")
	public String sets(Model model, HttpSession session) {
		model.addAttribute("user", userService.getOneUser((Long)session.getAttribute("userId")));
		return "sets.jsp";
	}
	
	@GetMapping("/createOrder")
	public String createOrder(Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		model.addAttribute("order", new Orders());
		model.addAttribute("user", userService.getOneUser((Long)session.getAttribute("userId")));
		return "createOrder.jsp";
	}
	
// check for results to make sure errors aren't there
// post map can be fine for this session creation request
// session.add  
// orderService.createOrder(order, result); done with a button click on the confirm page, submitting the session information
// the confirm button on that (could be an a tag) will send get request


	@PostMapping("/createOrder")
	public String createOrder(@Valid @ModelAttribute("order") Orders order, 
			BindingResult result, Model model, 
			HttpSession session) {
		if(result.hasErrors()) {
			model.addAttribute("order", new Orders());
			return "createOrder.jsp";
		}
		orderService.createOrder(order, result);
		session.setAttribute("order", order.getId());
		return "redirect:/confirm";
	}
	
	@GetMapping("/confirm")
	public String confirm(@Valid @ModelAttribute("order") Orders order, Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
				return "redirect:/";
		}
		if(session.getAttribute("order") == null) {
			return "redirect:/";
		}
		model.addAttribute("user", userService.getOneUser((Long)session.getAttribute("userId")));
		model.addAttribute("order", orderService.getOneOrder((Long)session.getAttribute("order")));
		return "confirm.jsp";
	}
	
	@GetMapping("/order/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Orders order = orderService.getOneOrder(id);
		model.addAttribute("order", order);
		return "editOrder.jsp";
	}
	
	@RequestMapping(value = "/completeOrder", method = RequestMethod.PUT)
	public String completeOrder(
			@Valid @ModelAttribute("order") Orders order,
			BindingResult result, HttpSession session,
			Model model
			)
	{
		model.addAttribute("order", orderService.getOneOrder((Long)session.getAttribute("order")));
		if(result.hasErrors()) {
			model.addAttribute("order", order);
			return "editOrder.jsp";
		}
		else {
			orderService.editOrder(order);
			return "redirect:/home";
		}
	}
	
	@RequestMapping(value = "/order/{id}", method = RequestMethod.PUT)
	public String editOrder(
			@Valid @ModelAttribute("order") Orders order,
			BindingResult result,
			Model model
			)
	{
		if(result.hasErrors()) {
			model.addAttribute("order", order);
			return "editOrder.jsp";
		}
		else {
			orderService.editOrder(order);
			return "redirect:/home";
		}
	}
	
	
	
}
