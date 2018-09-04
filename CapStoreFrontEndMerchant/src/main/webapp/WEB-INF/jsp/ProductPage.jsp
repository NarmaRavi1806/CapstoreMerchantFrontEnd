<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
.mySlides1 {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 50%;
  border-radius: 3px 0 0 3px;
}
/* Position of "zoom button" to right-bottom */
.zoom{
	position: absolute;
	bottom: 0;
	right: 50%;
}

/* On hover, add a grey background color */
.prev:hover, .next:hover {
  background-color: #f1f1f1;
  color: black;
}
/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}
* {box-sizing: border-box;}

.img-zoom-container {
  position: relative;
}

.img-zoom-lens {
  position: absolute;
  border: 1px solid #d4d4d4;
  /*set the size of the lens:*/
  width: 80px;
  height: 80px;
}

.img-zoom-result {
  border: 1px solid #d4d4d4;
  /*set the size of the result div:*/
  float: right;
  width: 400px;
  height: 340px;
}
</style>
<script>
function imageZoom(imgID, resultID) {
  var img, lens, result, cx, cy;
  img = document.getElementById(imgID);
  result = document.getElementById(resultID);
  /*create lens:*/
  lens = document.createElement("DIV");
  lens.setAttribute("class", "img-zoom-lens");
  /*insert lens:*/
  img.parentElement.insertBefore(lens, img);
  /*calculate the ratio between result DIV and lens:*/
  cx = result.offsetWidth / lens.offsetWidth;
  cy = result.offsetHeight / lens.offsetHeight;
  /*set background properties for the result DIV:*/
  result.style.backgroundImage = "url('" + img.src + "')";
  result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
  /*execute a function when someone moves the cursor over the image, or the lens:*/
  lens.addEventListener("mousemove", moveLens);
  img.addEventListener("mousemove", moveLens);

  function moveLens(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image:*/
	e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    /*calculate the position of the lens:*/
    x = pos.x - (lens.offsetWidth / 2);
    y = pos.y - (lens.offsetHeight / 2);
    /*prevent the lens from being positioned outside the image:*/
    if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
    if (x < 0) {x = 0;}
    if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
    if (y < 0) {y = 0;}
    /*set the position of the lens:*/
    lens.style.left = x + "px";
    lens.style.top = y + "px";
    /*display what the lens "sees":*/
    result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
</script>
</head>
<body>

<p>Product</p>
<div class="slideshow-container">
<div class="img-zoom-container">
  <div class="mySlides1">
    <div class="numbertext">1 / 3</div>
	<img id="myimage" src="C:\Users\bsruthi\Desktop\HTML\penguin.jpg" style="width:50%">
	<div id="myresult" class="img-zoom-result"></div>
	<button class="zoom" onclick="imageZoom('myimage','myresult');">Zoom</button>
  </div>
  

  <div class="mySlides1">
    <div class="numbertext">2 / 3</div>
	<img id="myimage1" src="C:\Users\bsruthi\Desktop\HTML\birthday.bmp" style="width:50%">
	<div id="myresult1" class="img-zoom-result"></div>
	<button class="zoom" onclick="imageZoom('myimage1','myresult1');">Zoom</button>
  </div>
  

  <div class="mySlides1">
    <div class="numbertext">3 / 3</div>
	<img id="myimage2" src="C:\Users\bsruthi\Desktop\HTML\penguin.jpg" style="width:50%">
	<div id="myresult2" class="img-zoom-result"></div>
	<button class="zoom" onclick="imageZoom('myimage2','myresult2');">Zoom</button>
  </div>
  
  <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
  <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
  
  
</div>
</div>

<script>
var slideIndex = [1,1];
var slideId = ["mySlides1"]
showSlides(1, 0);
showSlides(1, 1);

function plusSlides(n, no) {
  showSlides(slideIndex[no] += n, no);
}

function showSlides(n, no) {
  var i;
  var x = document.getElementsByClassName(slideId[no]);
  if (n > x.length) {slideIndex[no] = 1}    
  if (n < 1) {slideIndex[no] = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex[no]-1].style.display = "block";  
}
</script>

	<div>
		<table>
			<tr>

				<td>
					<h2>Description:</h2> <br>
				</td>
			</tr>


			<tr>
				<td>productName</td>
				<td>:${product.productName}</td></tr>
			<tr>
				<td>productCategory</td>
				<td>:${product.category}</td></tr>
			<tr>
				<td>productPrice</td>
				<td>:${product.price}</td></tr>
		</table>
		<br> <br>
		<form >
		<button type="submit" formaction="Buy.jsp">Buy Now</button>
		&nbsp; &nbsp; &nbsp;
		
		<button type="submit" onclick="cart()">Add to Cart</button>
		&nbsp; &nbsp;
		<button type="submit" onclick="wishlist()">Add to Wish List</button>
		&nbsp; &nbsp;
		</form>
		
		<script type="text/javascript">
		function cart(){
			
			alert("Product added to the cart Succesfully");
		}
		
		function wishlist(){
			alert("Product added to the Wish List Succesfully");
		}
		</script>
	</div>
	<br>
	<br>
	<br>
	<h2>Comments:</h2>
	<form action="">
		<div>
			<textarea placeholder="Write your Comments here" id="ryp-review-text"
				class="a-form-error" style="height: 100px; width: 480px"></textarea>
		</div>
		<br>
		
		<button type="submit">Submit</button>
		<br>
	</form>
</body>
</html>