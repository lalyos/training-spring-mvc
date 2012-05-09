package com.epam.kaka;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class MyLostener
 *
 */
public class MyLostener implements ServletContextListener, HttpSessionAttributeListener {

    private int loggedInUsers = 0;
    /**
     * Default constructor. 
     */
    public MyLostener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent se) {
        // TODO Auto-generated method stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent se) {
        if ("username".equals(se.getName())){
            Object user = se.getValue();
            System.out.println(user + "\n###\n###\n### is about to log in");
            System.out.println("\n###\n###\n### logged in users:" + ++loggedInUsers);
        }
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        Map<String,String> users = new HashMap<String,String>();
        users.put("jeno", "pwd");
        users.put("odon", "pwd");
        users.put("valeria", "pwd");
        context.setAttribute("users", users);
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent se) {
        attributeAdded(se);
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce) {
        // TODO Auto-generated method stub
    }
	
}
