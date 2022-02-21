/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.55
 * Generated at: 2022-02-18 07:58:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ajax3_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"EUC-KR\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<script>\r\n");
      out.write(" $(function(){\r\n");
      out.write("		 $('#movie').click(function(){\r\n");
      out.write("			 $.ajax({\r\n");
      out.write("				 url:\"https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fwww.chosun.com%2Farc%2Foutboundfeeds%2Frss%2Fcategory%2Fentertainments%2F%3FoutputType%3Dxml&api_key=kecjkmg3mfkmxbef94bj6u08txpnwglrtlnea1ne\",\r\n");
      out.write("				data:{\r\n");
      out.write("					url:\"https://www.chosun.com/arc/outboundfeeds/rss/category/entertainments/?outputType=xml\" ,\r\n");
      out.write("					api_key:\"kecjkmg3mfkmxbef94bj6u08txpnwglrtlnea1ne\",\r\n");
      out.write("					count : 20					},\r\n");
      out.write("					success: function(result){\r\n");
      out.write("					\r\n");
      out.write("					 list=result.items;\r\n");
      out.write("					\r\n");
      out.write("					 $(list).each(function (index, news){\r\n");
      out.write("						 console.log(index+\" \"+news.title);\r\n");
      out.write("						 console.log(index+\" \"+news.author);\r\n");
      out.write("						 img=news.thumbnail;\r\n");
      out.write("						 console.log(img)\r\n");
      out.write("						 title=news.title\r\n");
      out.write("						 link=news.link\r\n");
      out.write("						 pubDate=news.pubDate\r\n");
      out.write("						 \r\n");
      out.write("						 str=\"<h5><a href='\"+link+\"'>\"+title+\"</a></h5><p>\"+pubDate+\"</p>\"\r\n");
      out.write("						 $(\"#rd\").append(\"<div><img src='\"+img+\"' width=200px height=200px>'\"+str+\"</div>\")\r\n");
      out.write("						 $(\"#rd\").append()\r\n");
      out.write("					 });\r\n");
      out.write("				 },\r\n");
      out.write("				 error: function(){\r\n");
      out.write("					 alert('ajax실패 @');\r\n");
      out.write("					 \r\n");
      out.write("				 },\r\n");
      out.write("			 });\r\n");
      out.write("		 });\r\n");
      out.write("\r\n");
      out.write(" })\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	\r\n");
      out.write("	<button id=\"movie\">조선일보 문화</button>\r\n");
      out.write("	<div id=\"rd\"></div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
