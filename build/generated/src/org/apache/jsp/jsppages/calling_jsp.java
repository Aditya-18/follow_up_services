package org.apache.jsp.jsppages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class calling_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>FOLLOW UP</title>\n");
      out.write("        <style>\n");
      out.write("            .x \n");
      out.write("            {\n");
      out.write("                visibility: hidden;\n");
      out.write("            }\n");
      out.write("            .b1:focus ~ .x\n");
      out.write("            {\n");
      out.write("                visibility: visible;\n");
      out.write("            }\n");
      out.write("            .b1 {\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("    border: none;\n");
      out.write("    color: white;\n");
      out.write("    padding: 15px 32px;\n");
      out.write("    text-align: center;\n");
      out.write("    text-decoration: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    font-size: 16px;\n");
      out.write("    margin: 4px 2px;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write("           .button {\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("    border: none;\n");
      out.write("    color: white;\n");
      out.write("    padding: 15px 32px;\n");
      out.write("    text-align: center;\n");
      out.write("    text-decoration: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    font-size: 16px;\n");
      out.write("    margin: 4px 2px;\n");
      out.write("    cursor: pointer;\n");
      out.write("    table, th, td {\n");
      out.write("   border: 1px solid black;\n");
      out.write("}\n");
      out.write("}\n");
      out.write("table, th, td {\n");
      out.write("   border: 1px solid black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <b>   Hello \n");
      out.write("        ");
  String x=session.getAttribute("Emp").toString();
       out.print(x);
       String email="";
            //out.print(session.getAttribute("Emp"));
        
      out.write("\n");
      out.write("        </b>\n");
      out.write("       \n");
      out.write("\n");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
    Statement s=con.createStatement();
    
    ResultSet r=s.executeQuery("select * from customer where Eid='"+x+"'");
    while(r.next())
    {
      out.write("\n");
      out.write("    <table>\n");
      out.write("        <tr >\n");
      out.write("            <td >\n");
      out.write("                Customer Name:\n");
      out.write("            </td>\n");
      out.write("           \n");
      out.write("            <td>\n");
      out.write("                ");
      out.print((r.getString("FirstName")));
      out.write(' ');
      out.print((r.getString("LastName")));
      out.write("\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("         <tr >\n");
      out.write("            <td >\n");
      out.write("                Mobile:\n");
      out.write("            </td>\n");
      out.write("            \n");
      out.write("            <td>\n");
      out.write("                ");
      out.print((r.getString("Mobile")));
      out.write("\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("         <tr >\n");
      out.write("            <td >\n");
      out.write("                Phone:\n");
      out.write("            </td>\n");
      out.write("            \n");
      out.write("            <td>\n");
      out.write("                ");
      out.print((r.getString("Phone")));
      out.write("\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("         <tr >\n");
      out.write("            <td >\n");
      out.write("                Email:\n");
      out.write("            </td>\n");
      out.write("            \n");
      out.write("            <td>\n");
      out.write("                ");
      out.print((r.getString("Email")));
      out.write("\n");
      out.write("                ");
 email=(r.getString("Email"));
                session.setAttribute("e", email); 
      out.write("\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("         <tr >\n");
      out.write("            <td >\n");
      out.write("                City:\n");
      out.write("            </td>\n");
      out.write("            \n");
      out.write("            <td>\n");
      out.write("                ");
      out.print((r.getString("City")));
      out.write("\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("         <tr >\n");
      out.write("            <td >\n");
      out.write("                State:\n");
      out.write("            </td>\n");
      out.write("          \n");
      out.write("            <td>\n");
      out.write("                ");
      out.print((r.getString("State")));
      out.write("\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("         <tr >\n");
      out.write("            <td >\n");
      out.write("                Country:\n");
      out.write("            </td>\n");
      out.write("          \n");
      out.write("            <td>\n");
      out.write("                ");
      out.print((r.getString("Country")));
      out.write("\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("         <tr >\n");
      out.write("            <td >\n");
      out.write("                Source:\n");
      out.write("            </td>\n");
      out.write("           \n");
      out.write("            <td>\n");
      out.write("                ");
      out.print((r.getString("Source")));
      out.write("\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("         <tr >\n");
      out.write("            <td >\n");
      out.write("                Last Call Time:\n");
      out.write("            </td>\n");
      out.write("           \n");
      out.write("            <td>\n");
      out.write("                ");
      out.print((r.getTimestamp("Time")));
      out.write("\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("    \n");
      out.write("     \n");
      out.write("   \n");
      out.write("        \n");
      out.write("    \n");
      out.write("\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("<button type=\"submit\" class=\"b1\" value=\"Make call\"   >call</button>\n");
      out.write("\n");
      out.write("<div class=\"x\">\n");
      out.write("     <span id=\"countdown\" class=\"timer\"></span>\n");
      out.write("     \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<table>\n");
      out.write("    <tr>\n");
      out.write("        <td>\n");
      out.write("<form action=\"remark_entry.jsp\">\n");
      out.write("    \n");
      out.write("    <input type=\"submit\" value=\"Entry remark\" name=\"b1\" class=\"button\">\n");
      out.write("</form></td>\n");
      out.write("<td>\n");
      out.write("<form action=\"done_entry.jsp\">\n");
      out.write("    \n");
      out.write("    <input type=\"submit\" value=\"Entry done\" name=\"b1\" class=\"button\">\n");
      out.write("</form>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>");
}
      out.write('\n');

    java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
    int i=s.executeUpdate("update customer set Time='"+date+"' where Email='"+email+"'");
   // out.print("time of contact changed to "+date);

      out.write('\n');

con.close();
      out.write("\n");
      out.write("<script>   var seconds = 120;\n");
      out.write("function secondPassed() {\n");
      out.write("    var minutes = Math.round((seconds - 30)/60);\n");
      out.write("    var remainingSeconds = seconds % 60;\n");
      out.write("    if (remainingSeconds < 10) {\n");
      out.write("        remainingSeconds = \"0\" + remainingSeconds;  \n");
      out.write("    }\n");
      out.write("    document.getElementById('countdown').innerHTML = minutes + \":\" + remainingSeconds;\n");
      out.write("    if (seconds == 0) {\n");
      out.write("        clearInterval(countdownTimer);\n");
      out.write("        document.getElementById('countdown').innerHTML = \"Buzz Buzz\";\n");
      out.write("    } else {\n");
      out.write("        seconds--;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write(" \n");
      out.write("var countdownTimer = setInterval('secondPassed()', 1000);\n");
      out.write("</script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
