package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import com.entities.*;
import com.helper.FactoryProvider;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note = new Note(title,content,new Date());
			
			Session s = FactoryProvider.getFactory().openSession();
			
			Transaction tx = s.beginTransaction();
			
			s.save(note);
			
			tx.commit();
			s.close();
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.print("<h1 style='text-align:center;'>Note Successfully Saved</h1>");
			out.print("<h1 style='text-align:center;'><a href='all_notes.jsp'>View All Notes</h1>");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
