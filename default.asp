<html>
	<head>
		<%
			Dim OobeStyle
			If Instr(Request.ServerVariables("http_cxh_osVersionInfo"), "19") > 0 then
				OobeStyle = "oobe-desktop.css"
			else
				OobeStyle = "oobe-light.css"
			End if
		%>
		<link rel='stylesheet' href='<% =OobeStyle %>'>

		<script>
			function showHide() {
				const theDiv = document.getElementById("debugInfo");
			    if (theDiv.style.display !== "none") {
			        theDiv.style.display = "none";
			    } else {
			   		theDiv.style.display = "block";
			    }
			}
		</script>
	</head>

	<body>

		<br>			
		<button type="button" onClick="showHide()" class="control-button button-two button_primary win-button">
			Details
		</button>
		<button type="button" onClick="window.location.reload()" class="control-button button-two button_primary win-button">
		   Reload Page
		</button>
		<br>
				
		<div id="debugInfo" name="debugInfo" style="display: none;">
			<p>OS version: <% =Request.ServerVariables("http_cxh_osVersionInfo") %></p>
			<p>OS edition: <% =Request.ServerVariables("http_cxh_edition") %></p>
			<p>Manufacturer: <% =Request.ServerVariables("http_cxh_manufacturer") %></p>
			<p>Model: <% =Request.ServerVariables("http_cxh_machineModel") %></p>
			<p>Redirect: <% =Request.QueryString("redirect_uri") %></p>
			<p>Token: <% =Request.ServerVariables("http_Authorization") %></p>
			<p>Request ID: <% =Request.QueryString("client-request-id") %></p>
			<p>Mode: <% =Request.QueryString("mode") %></p>
		</div>
		
		
	</body>
</html>	