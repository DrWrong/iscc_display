<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.plac.model.*" %>
<%
List<Team> ls = new ArrayList<Team>();
ls = (List<Team>)request.getAttribute("teams");
%>
    <p><font class="side" style="">组名</font><font class="side" style="width:50%">成绩</font></p>
            <%
							if (ls != null) {
								int i = 1;
								for (Team tm : ls) {
						%>
            <p><font class="side"><%=tm.getName()%></font><font class="side"><%=tm.getHosts().size()*500%></font></p>
            <%
					i++;
					}
				}
			%>