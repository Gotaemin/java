/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.39
 * Generated at: 2020-03-15 14:43:07 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;

public final class MovieMain_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
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

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width\",initial-scale=\"1\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/custom.css\">\r\n");
      out.write("\r\n");
      out.write("<title>영화 웹 사이트</title>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("#searchLine {\r\n");
      out.write("\tfloat: right;\r\n");
      out.write("\theight: 50px;\r\n");
      out.write("\tmargin-botton: 3px;\r\n");
      out.write("\tmargin-top: 10px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("h2 {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tborder-bottom: 2px solid red;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a, a:hover{\r\n");
      out.write("\t\tcolor: #000000;\r\n");
      out.write("\t\ttext-decoration:none;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("#listForm {\r\n");
      out.write("\twidth: 750px;\r\n");
      out.write("\theight: 400px;\r\n");
      out.write("\tborder: 1px solid black;\r\n");
      out.write("\tfloat: center;\r\n");
      out.write("\tmargin: auto;\r\n");
      out.write("\tclear: right;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("table {\r\n");
      out.write("\tfloat: center;\r\n");
      out.write("\tmargin: auto;\r\n");
      out.write("\twidth: 650px;\r\n");
      out.write("\theight: 50%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("td {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\twidth: 25%;\r\n");
      out.write("\theight: 50%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("header {\r\n");
      out.write("\theight: 50px;\r\n");
      out.write("\tpadding: 1rem;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("\tbackground: teal;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("\tdisplay: flex;\r\n");
      out.write("\tjustify-content: space-between;\r\n");
      out.write("\talign-items: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#space {\r\n");
      out.write("\tmargin-left: 20px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t");

		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<script src=\"https://code.jquery.com/jquery-3.1.1.min.js\"></script>\r\n");
      out.write("\t<script src=\"js/bootstrap.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<nav class=\"navbr navbar-default\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"navbar-header\"> \r\n");
      out.write("\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\"\r\n");
      out.write("\t\t\t\tdata-toggle=\"collapse\"\r\n");
      out.write("\t\t\t\tdata-target=\"#bs-example-navbar-collapse-1\"\r\n");
      out.write("\t\t\t\taria-expanded=\"false\">\r\n");
      out.write("\t\t\t\t<span class=\"icon-bar\"></span> \r\n");
      out.write("\t\t\t\t<span class=\"icon-bar\"></span> \r\n");
      out.write("\t\t\t\t<span class=\"icon-bar\"></span> \t\t\r\n");
      out.write("\t\t\t</button>\r\n");
      out.write("\t\t\t<a class=\"navbar-brand\" href=\"MovieMain.jsp\">영화 웹 사이트</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"collapse navbar-collapse\" id=\"#bs-example-navbar-collapse-1\">\r\n");
      out.write("\t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("\t\t\t\t<li><a href=\"movieList.movie\">무비 차트</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"#\">예  매</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"#\">극  장</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"bbsList.bbs?pageNumber=1\">게시판</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t");

				if(userID == null){
			
      out.write("\r\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("\t\t\t\t\t<li class=\"dropdown\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\"\r\n");
      out.write("\t\t\t\t\t\t\tdata-toggle=\"dropdown\" \r\n");
      out.write("\t\t\t\t\t\t\trole=\"button\"\r\n");
      out.write("\t\t\t\t\t\t\taria-haspopup=\"true\"\r\n");
      out.write("\t\t\t\t\t\t\taria-expanded=\"false\">접속하기\r\n");
      out.write("\t\t\t\t\t\t<span class=\"caret\"></span>\t\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li ><a href=\"login.jsp\">로그인</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li ><a href=\"join.jsp\">회원가입</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t");

				}else{
			
      out.write("\r\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("\t\t\t\t\t<li class=\"dropdown\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\"\r\n");
      out.write("\t\t\t\t\t\t\tdata-toggle=\"dropdown\" \r\n");
      out.write("\t\t\t\t\t\t\trole=\"button\"\r\n");
      out.write("\t\t\t\t\t\t\taria-haspopup=\"true\"\r\n");
      out.write("\t\t\t\t\t\t\taria-expanded=\"false\">회원관리\r\n");
      out.write("\t\t\t\t\t\t<span class=\"caret\"></span>\t\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t<li ><a href=\"logout.jsp\">로그아웃</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t");

				}
			
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t<!-- 영화제목을 이용하여 검색하는 부분 -->\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<form action=\"movieSearch.movie\" method=\"post\" style=\"margin-top: 20px;\">\r\n");
      out.write("\t\t\t<input class =\"btn btn-pimary pull-right\" type=\"submit\" value=\"검색\"> \r\n");
      out.write("\t\t\t<input class=\"form-control pull-right\" type=\"text\" name = \"title\" placeholder=\"검색어 입력..\" style=\"width:150px;\" >\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div id=\"myCarousel\" class = \"carousel slide\" data-ride=\"carousel\" style=\" margin-top: 20px; overflow: hidden;\" >\r\n");
      out.write("<!-- \t\t\t<ol class=\"Carousel-indicators\"> -->\r\n");
      out.write("<!-- \t\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li> -->\r\n");
      out.write("<!-- \t\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"1\" ></li> -->\r\n");
      out.write("<!-- \t\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"2\" ></li> -->\r\n");
      out.write("<!-- \t\t\t</ol> -->\r\n");
      out.write("\t\t\t<div class=\"carousel-inner\">\r\n");
      out.write("\t\t\t\t<div class=\"item active\">\r\n");
      out.write("\t\t\t\t\t<img src=\"image/1.jpg\" style=\"min-width:100%; min-heigth:400px;\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"item\">\r\n");
      out.write("\t\t\t\t\t<img src=\"image/2.jpg\" style=\"min-width:100%; min-heigth:400px;\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"item\">\r\n");
      out.write("\t\t\t\t\t<img src=\"image/3.jpg\" style=\"min-width:100%; min-heigth:400px;\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<a class=\"left carousel-control\" href=\"#myCarousel\" data-slide=\"prev\">\r\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-chevron-left\"></span>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t\t<a class=\"right carousel-control\" href=\"#myCarousel\" data-slide=\"next\">\r\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-chevron-right\"></span>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<table border=\"1\" style=\"text-align:center; clear:right; width:80%; height:100px; margin:auto; margin-top: 20px; margin-bottom: 50px;\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><a href=\"movieList.movie\">무비 차트</a></td>\r\n");
      out.write("\t\t\t\t<td><a href=\"#\">예매</a></td>\r\n");
      out.write("\t\t\t\t<td><a href=\"#\">극장</a></td>\r\n");
      out.write("\t\t\t\t<td><a href=\"#\">이벤트</a></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
