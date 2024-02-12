package com.brokurly.controller;

import com.brokurly.repository.PaymentDao;
import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/order")
public class OrderController {

    @GetMapping("/checkout")
    public String showCheckout(Model model) {
        return "order/checkout";
    }

    @GetMapping("/receiver-details")
    public String showReceiverDetails() {
        return "order/receiver-details";
    }
}
