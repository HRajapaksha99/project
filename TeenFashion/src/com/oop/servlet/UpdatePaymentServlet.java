package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Payment;
import com.oop.service.IPaymentService;
import com.oop.service.PaymentServiceImpl;

@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdatePaymentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		Payment payment = new Payment();
		String paymentID = request.getParameter("id");
		payment.setId(paymentID);
		
		payment.setCardNo(request.getParameter("cardNo"));
		payment.setItem(request.getParameter("itemNo"));
		String s = request.getParameter("id");
		System.out.println(s);
	
		payment.setName(request.getParameter("name"));
		payment.setCusName(request.getParameter("cusName"));
		payment.setExpiryDate(request.getParameter("expiryDate"));
		payment.setCvv(request.getParameter("cvv"));
		payment.setEmail(request.getParameter("cusEmail"));
		payment.setAmount(request.getParameter("amount"));
		payment.setPhone(request.getParameter("phone"));
		
		IPaymentService iPaymentService = new PaymentServiceImpl();
		iPaymentService.updatePayment(paymentID, payment);
		
		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/paymentList.jsp");
		requestDispatcher.forward(request, response);
	}

}
