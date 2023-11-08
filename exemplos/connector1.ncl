<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Inicia a imagem img2 após o delay atribuído pela property -->
<ncl id="connector1" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase>
			<region id="region1" width="320px" height="180px" left="50" top="50"/>
			<region id="region2" width="320px" height="180px" left="380" top="50"/>
			<region id="region3" width="320px" height="180px" left="50" top="240"/> 
		</regionBase>
		<descriptorBase>
			<descriptor id="desc1" region="region1" focusIndex="1" focusBorderWidth="5" moveLeft="2"  moveRight="2" moveUp="3" moveDown="3" />
			<descriptor id="desc2" region="region2" focusIndex="2" focusBorderWidth="5" moveLeft="1"  moveRight="1" moveUp="3" moveDown="3" />
			<descriptor id="desc3" region="region3" focusIndex="3" focusBorderWidth="5" moveLeft="1"  moveRight="2" moveUp="1" moveDown="1" />
		</descriptorBase>
		
		<connectorBase>
			<causalConnector id="onBeginStart">
				<simpleCondition role="onBegin"/>
				<simpleAction role="start" delay="3s"/>
			</causalConnector>
		</connectorBase>
		
	</head>
	<body>
		<port id="port1" component="img1"/>
		<port id="port3" component="img3"/>
		
		<media id="img3" src="media/cat3.jpg" descriptor="desc3">
			<property name="transparency" value="0.5" />
			<property name="delay" value="3s" />
			<property name="zIndex" value="1" />
		</media>
		<media id="img2" src="media/cat2.jpg" descriptor="desc2">
			<property name="width" value="500" />
			<property name="zIndex" value="2" />
		</media>
		<media id="img1" src="media/cat1.jpg" descriptor="desc1">
			<property name="selBorderColor" value="red" />
			<property name="zIndex" value="3" />
		</media>
		
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="img1"/>
			<bind role="start" component="img2" />
		</link>
	</body>
</ncl>
