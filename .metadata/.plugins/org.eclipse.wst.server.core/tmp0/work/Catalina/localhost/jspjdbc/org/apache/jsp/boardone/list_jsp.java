/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2019-07-05 11:47:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.boardone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import boardone.BoardDao;
import boardone.BoardDto;
import java.util.List;
import java.text.SimpleDateFormat;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


    	//수정<1>
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    
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
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("boardone.BoardDao");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
    _jspx_imports_classes.add("boardone.BoardDto");
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
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    ");

    	//수정<2>
    	int count = 0;
    	int number = 0;
    	List<BoardDto> articleList = null;
    	BoardDao dbPro = BoardDao.getInstance();
    	count = dbPro.getArticleCount(); //전체 글 수
    	if(count > 0){
    		articleList = dbPro.getArticles(); //수정<3>
    	}
    	number = count; //수정<4>
    
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>게시판</title>\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link href=\"css/liststyle.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<section>\r\n");
      out.write("<article>\r\n");
      out.write("<b>글목록(전체 글:");
      out.print( count );
      out.write(")</b>\r\n");
      out.write("<table class=\"listwritebutton\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td><a href=\"writeForm.jsp\">글쓰기</a></td>\r\n");
      out.write("\t<tr>\r\n");
      out.write("</table>\r\n");

	if(count == 0){

      out.write("\r\n");
      out.write("<table class=\"listtable\">\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td>게시판에 저장된 글이 없습니다.</td>\r\n");
      out.write("</table>\r\n");
 } else { 
      out.write("\r\n");
      out.write("<table class=\"listtable\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<th id=\"num\">번 호 </th>\r\n");
      out.write("\t\t<th id=\"title\">제 목</th>\r\n");
      out.write("\t\t<th id=\"writer\">작성자</th>\r\n");
      out.write("\t\t<th id=\"date\">작성일</th>\r\n");
      out.write("\t\t<th id=\"counter\">조 회 </th>\r\n");
      out.write("\t\t<th id=\"ip\">IP</th>\r\n");
      out.write("\t</tr>\r\n");

	for(int i =0; i< articleList.size(); i++){
		BoardDto article = (BoardDto)articleList.get(i);

      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td> ");
      out.print( number-- );
      out.write("</td>\r\n");
      out.write("\t\t<td class=\"titletd\">\r\n");
      out.write("\t\t<!--  수정<5> -->\r\n");
      out.write("\t\t<a href=\"content.jsp?num=");
      out.print( article.getNum() );
      out.write("&pageNum=1\"><!-- 수정<6> -->\r\n");
      out.write("\t\t\t");
      out.print( article.getSubject() );
      out.write("</a>\r\n");
      out.write("\t\t\t");
 if(article.getReadcount() >= 20){ 
      out.write("\r\n");
      out.write("\t\t\t<img src=\"images/hot.gif\">");
 } 
      out.write("</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t<a href=\"mailto:");
      out.print( article.getEmail() );
      out.write("\">\r\n");
      out.write("\t\t\t");
      out.print( article.getWriter() );
      out.write("</a></td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t");
      out.print( sdf.format(article.getRegdate()) );
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print( article.getReadcount() );
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print( article.getIp() );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t\t");
 } 
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</article>\r\n");
 } 
      out.write("\r\n");
      out.write("<!--  수정<7> -->\r\n");
      out.write("</section>\r\n");
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
