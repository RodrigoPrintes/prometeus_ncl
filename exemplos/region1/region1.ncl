<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="region" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<!-- Display a cat image (top left, bottom left, top right, bottom right, and center) -->
	<head>
		<regionBase>
			<!-- Test more regions -->
			<region id="region1" width="320px" height="180px" left="0px"/> 
		</regionBase>
		<descriptorBase>
			<descriptor id="desc1" region="region1"/>
		</descriptorBase>
	</head>

	<body>
		<port id="port1" component="img1"/>
		<media id="img1" src="media/cat3.jpg" descriptor="desc1"/>
	</body>
</ncl>
