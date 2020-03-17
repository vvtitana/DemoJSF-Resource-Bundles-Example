<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@page contentType="text/html;charset=UTF8"%>

<f:view>
<f:loadBundle basename="com.test.demojsf.messages" var="msg"/>

<html>
<head>
<title><h:outputText value="#{msgs.titleText}"/></title>
</head>
<body>
	<h1><h:outputText value="#{msgs.titleText}"/></h1>
	<ol>
    	
	   	<li><h:outputText value="#{msg.message}" /></li>
		    	
    	<li><h:outputText value="#{msg['message.test1']}" /></li>
	    	
    	<li><h:outputText value="#{msg['message.test2']}" /></li>
    	<li><h:outputText value="#{msg['message.test2']}" escape="false" /></li>
	    	
    	<li><h:outputText value="#{msg['message.test3']}" /></li>
    	<li><h:outputText value="#{msg['message.test3']}" escape="false" /></li>
		    
    	<li>
	 	    <h:outputFormat value="#{msg['message.param1']}">
				<f:param value="param0" />
		    </h:outputFormat>
		</li>
		<li>
		    <h:outputFormat value="#{msg['message.param2']}">
		    	<f:param value="param0" />
		    	<f:param value="param1" />
		    </h:outputFormat>
		</li>
   	</ol>
</body>
</html>
	
</f:view>