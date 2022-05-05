<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			<head>
				<title>Title</title>
				<!-- Required meta tags -->
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
				
				<!-- Bootstrap CSS -->
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
			</head>
			<body>
				<div class="w-100">
					<header class="p-2 bg-danger">
						<div class="container">
							<nav>
								<div class="">
									<img src="Img/telepizzalogo.png" alt=""/>
									<img src="Img/cart.svg" class="float-right p-1" alt=""/>
									<img src="Img/user.svg" class="float-right p-1" alt=""/>
									<img src="Img/work.svg" class="float-right p-1" alt=""/>
								</div>
							</nav>
						</div>
					</header>
					<div class="container">
						<div class="card">
							<div class="card-body">
								<h2 class="card-title"><strong>Entrantes</strong></h2>
								<xsl:for-each select="entrantes/categoria">
									<h4 class="card-text text-muted"><xsl:value-of select="@nombre"/></h4>
									<div class="row">
										<xsl:for-each select="entrante">
											<div class="card col-lg-4 col-md-6 col-sm-12">
												<img class="card-img-top w" src="https://images.telepizza.com/vol/es/images/content/productos/new/{imagen}.png" alt=""/>
												<div class="card-body">
													<h5 class="card-title "><xsl:value-of select="@nombre"/></h5>
													<xsl:choose>
														<xsl:when test="oferta">
															<p class="card-text"><span class="text-muted">Ver más</span><span class="float-right text-muted"><span class="text-danger"> <strong>(Oferta) </strong></span><xsl:value-of select="precio"/> €</span></p>
														</xsl:when>
														<xsl:otherwise>
															<p class="card-text"><span class="text-muted">Ver más</span><span class="float-right text-muted"><xsl:value-of select="precio"/> €</span></p>
														</xsl:otherwise>
													</xsl:choose>
													<div><button type="button" class="btn btn-danger float-right">Añadir</button></div>
												</div>
											</div>
										</xsl:for-each>
									</div>
								</xsl:for-each>
							</div>
						</div>
					</div>
				</div>
				<footer  class="bg-danger text-center p-3">
					<h4 class="text-light">Telepizza-Azarquiel</h4>
				</footer>
				<!-- Optional JavaScript -->
				<!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
			</body>
		</html>
		
	</xsl:template>
</xsl:stylesheet>