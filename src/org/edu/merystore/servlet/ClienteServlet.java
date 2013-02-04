package org.edu.merystore.servlet;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ClienteServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.sendRedirect("/cliente/index.jsp");
	}
	
}
