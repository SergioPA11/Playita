window.onload = displayResult;

function loadXMLDoc(filename)
{
if (window.ActiveXObject)
  {
  xhttp = new ActiveXObject("Msxml2.XMLHTTP");
  }
else
  {
  xhttp = new XMLHttpRequest();
  }
xhttp.open("GET", filename, false);
try {xhttp.responseType = "msxml-document"} catch(err) {} // Helping IE11
xhttp.send("");
return xhttp.responseXML;
}

function displayResult()
{
xml = loadXMLDoc("https://data.cityofchicago.org/api/views/xvsz-3xcj/rows.xml?accessType=DOWNLOAD");
xsl = loadXMLDoc("XSL/Playita.xsl");
// code for IE
if (window.ActiveXObject || xhttp.responseType == "msxml-document")
  {
  ex = xml.transformNode(xsl);
  document.getElementById("any").innerHTML = ex;
  }
// code for Chrome, Firefox, Opera, etc.
else if (document.implementation && document.implementation.createDocument)
  {
  xsltProcessor = new XSLTProcessor();
  xsltProcessor.importStylesheet(xsl);
  resultDocument = xsltProcessor.transformToFragment(xml, document);
  document.getElementById("any").appendChild(resultDocument);
  }
}
