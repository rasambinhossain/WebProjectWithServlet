/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

/**
 *
 * @author AuMi
 */
import Hibernate.HibernateUtil;
import Hibernate.Products;
import Hibernate.User;
import Model.product;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DefaultController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String indexGeneral(ModelMap map) {
        return "Eshop";
    }

    @RequestMapping(value = "/Eshop", method = RequestMethod.GET)
    public String eshop(ModelMap map) {
        return "Eshop";
    }
    
    @RequestMapping(value = "/Product", method = RequestMethod.GET)
    public String product(ModelMap map) {
        return "Product";
    }
    
    @RequestMapping(value = "/Success", method = RequestMethod.GET)
    public String success(ModelMap map) {
        
        return "Success";
    }
    
    @RequestMapping(value = "/Register", method = RequestMethod.GET)
    public String register(ModelMap map) {
        return "Register";
    }

    @RequestMapping(value = "/Cart", method = RequestMethod.GET)
    public String cart(ModelMap map) {
        return "Cart";
    }
    
    @RequestMapping(value = "/Logout", method = RequestMethod.GET)
    public String logout(ModelMap map) {
        return "Logout";
    }

    @RequestMapping(value = "/Checkout", method = RequestMethod.GET)
    public String checkout(ModelMap map) {
        return "Checkout";
    }

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public String login(ModelMap map) {
        return "Login";
    }

    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String error(ModelMap map) {
        return "error";
    }

    @RequestMapping(value = "/ShoppingServlet", method = RequestMethod.POST)
    public String shop(ModelMap map) {
        return "ShoppingServlet";
    }
    
    @RequestMapping(value = "/ErrorLogin", method = RequestMethod.GET)
    public String errorLogin(ModelMap map) {
        return "ErrorLogin";
    }
    
   /* @RequestMapping(value = "/FrontLogin", method = RequestMethod.POST)
    public String frontLogin(ModelMap map) {
        return "FrontLogin";
    }*/
    @RequestMapping(value = "/FrontLogin", method = RequestMethod.GET)
    public String frontLogin(ModelMap map) {
        return "FrontLogin";
    }
    
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String sign(ModelMap map) {  
       
               //ModelAndView mv = new ModelAndView("user");
        String out = "User Listing: ";
        try {
            
            org.hibernate.classic.Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            session.beginTransaction();
            List result = session.createQuery("from User").list();
            //if(result.isEmpty()){
            //System.out.println("empty");
           // }
            User ifo = (User) result.get(0);
           // System.out.println(ifo.getUserid());
            map.addObject("User", result);
            session.getTransaction().commit();
        } catch (Exception e) {
        }
        map.addObject("message", out);
            return "user";
    }
    
    @RequestMapping(value = "/ShowProduct", method = RequestMethod.GET)
    public String ShowProduct(ModelMap map) {  
       
               //ModelAndView mv = new ModelAndView("user");
        String out = "Products Listing: ";
        try {
            
            org.hibernate.classic.Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            session.beginTransaction();
            List result = session.createQuery("from Products").list();
            if(result.isEmpty()){
            System.out.println("empty");
            }
            Products ifo = (Products) result.get(0);
           // System.out.println(ifo.getUserid());
            map.addObject("Products", result);
            session.getTransaction().commit();
        } catch (Exception e) {
        }
        map.addObject("message", out);
            return "ShowProduct";
    }
    
}
