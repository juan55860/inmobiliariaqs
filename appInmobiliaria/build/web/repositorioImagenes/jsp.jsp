<%-- 
    Document   : jsp
    Created on : 23/04/2013, 10:15:43 PM
    Author     : usuario
--%>

<%@ page language="java" %>
<HTML>
    <HEAD><TITLE>Display file upload form to the user</TITLE></HEAD>
    <BODY> <FORM ENCTYPE="multipart/form-data" ACTION="upload.jsp" METHOD=POST>
            <br><br><br>
            <table border="0" bgcolor=#ccFDDEE>
                <tr>

                    <td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"> </td>
                    </tr>
                    <tr>
                        <td><b>Choose the file To Upload:</b></td>
                        <td><INPUT NAME="file" TYPE="file"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"> </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Send File"> </td>
                    </tr>
                    <table>
                        </FORM>
                        </BODY>
                        </HTML>
