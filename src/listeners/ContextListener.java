package listeners;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ContextListener implements ServletContextListener {

	public ContextListener() {
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
	}

	@Override
	public void contextInitialized(ServletContextEvent initEvent) {
		ServletContext sc = initEvent.getServletContext();

		// get year for footer or else
		int year = java.time.LocalDate.now().getYear();
		sc.setAttribute("year", year);

	}

}
