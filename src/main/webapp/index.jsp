<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop Pro</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<style>
:root{
--bg:#020617;
--card:#0f172a;
--primary:#6366f1;
--accent:#22d3ee;
--text:#e5e7eb;
--muted:#94a3b8;
--radius:18px;
}

body{
margin:0;
font-family:Inter;
background:linear-gradient(135deg,#020617,#0f172a);
color:var(--text);
}

/* HEADER */
header{
display:flex;
justify-content:space-between;
padding:20px 40px;
background:rgba(255,255,255,0.05);
backdrop-filter:blur(10px);
position:sticky;top:0;
}

.logo{
font-size:24px;
font-weight:700;
}

.logo span{color:var(--accent);}

/* HERO */
.hero{
text-align:center;
padding:100px 20px;
background:linear-gradient(135deg,#6366f1,#22d3ee);
border-radius:0 0 40px 40px;
}

.hero h1{
font-size:50px;
margin:0;
}

/* GRID */
.container{padding:40px;}
.grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:25px;
}

/* PRODUCT CARD */
.card{
background:var(--card);
border-radius:var(--radius);
overflow:hidden;
transition:0.3s;
}

.card:hover{
transform:translateY(-10px) scale(1.02);
box-shadow:0 20px 40px rgba(0,0,0,0.6);
}

.card img{
width:100%;
height:220px;
object-fit:cover;
}

.card-body{
padding:15px;
}

.price{
color:var(--accent);
font-weight:bold;
font-size:18px;
}

.btn{
margin-top:10px;
width:100%;
padding:10px;
border:none;
border-radius:10px;
background:linear-gradient(135deg,#6366f1,#22d3ee);
color:white;
cursor:pointer;
}

/* CATEGORY */
.cat{
background:var(--card);
padding:20px;
text-align:center;
border-radius:var(--radius);
}

/* FOOTER */
footer{
text-align:center;
padding:30px;
color:var(--muted);
}
</style>
</head>

<body>

<header>
<div class="logo">Nexus<span>Shop</span></div>
<div>🛒 Cart</div>
</header>

<section class="hero">
<h1>Next-Gen Electronics Store</h1>
<p>Best gadgets, latest tech, unbeatable prices</p>
</section>

<div class="container">

<h2>🔥 Categories</h2>
<div class="grid">
<div class="cat">📱 Smartphones</div>
<div class="cat">💻 Laptops</div>
<div class="cat">🎧 Headphones</div>
<div class="cat">📷 Cameras</div>
<div class="cat">⌚ Smart Watches</div>
</div>

<h2>⚡ Trending Electronics</h2>
<div class="grid">

<div class="card">
<img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb">
<div class="card-body">
<h4>iPhone 14 Pro</h4>
<div class="price">₹1,09,999</div>
<button class="btn" onclick="payNow(109999)">⚡ Buy Now</button>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8">
<div class="card-body">
<h4>MacBook Air M2</h4>
<div class="price">₹99,999</div>
<button class="btn" onclick="payNow(99999)">⚡ Buy Now</button>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1585386959984-a4155224a1ad">
<div class="card-body">
<h4>Apple Watch</h4>
<div class="price">₹39,999</div>
<button class="btn" onclick="payNow(39999)">⚡ Buy Now</button>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519">
<div class="card-body">
<h4>Sony Headphones</h4>
<div class="price">₹29,999</div>
<button class="btn" onclick="payNow(29999)">⚡ Buy Now</button>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45">
<div class="card-body">
<h4>Gaming Laptop</h4>
<div class="price">₹1,89,999</div>
<button class="btn" onclick="payNow(189999)">⚡ Buy Now</button>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f">
<div class="card-body">
<h4>DSLR Camera</h4>
<div class="price">₹2,49,999</div>
<button class="btn" onclick="payNow(249999)">⚡ Buy Now</button>
</div>
</div>

</div>
</div>

<footer>
© 2026 NexusShop — Premium Electronics Store
</footer>

<script>
function payNow(amount){

    var options = {
        "key": "YOUR_RAZORPAY_KEY", // 🔴 PUT YOUR KEY HERE
        "amount": amount * 100,
        "currency": "INR",
        "name": "NexusShop",
        "description": "Electronics Purchase",

        "handler": function (response){
            alert("✅ Payment Successful!\nPayment ID: " + response.razorpay_payment_id);
        },

        "prefill": {
            "name": "Customer",
            "email": "test@example.com",
            "contact": "9999999999"
        },

        "theme": {
            "color": "#6366f1"
        }
    };

    var rzp = new Razorpay(options);
    rzp.open();
}
</script>

</body>
</html>
