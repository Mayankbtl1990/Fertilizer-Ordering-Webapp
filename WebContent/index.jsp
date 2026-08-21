<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AgroMarket | Premium Fertilizer Hub</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            scroll-behavior: smooth;
        }

        body {
            background-color: #f8fafc;
            color: #1e293b;
        }

        /* Premium Dark Navigation Bar */
        .navbar {
            background: #111827;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 6%;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        .navbar .logo {
            font-size: 24px;
            font-weight: 800;
            color: #34d399;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .nav-menu {
            display: flex;
            align-items: center;
            list-style: none;
            gap: 30px;
        }

        .nav-item {
            color: #9ca3af;
            text-decoration: none;
            font-size: 15px;
            font-weight: 500;
            transition: color 0.3s;
        }

        .nav-item:hover {
            color: #ffffff;
        }

        .nav-auth {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .btn-nav {
            text-decoration: none;
            padding: 9px 20px;
            font-size: 14px;
            font-weight: 600;
            border-radius: 6px;
            transition: all 0.3s;
        }

        .btn-login {
            color: #34d399;
            border: 1px solid #34d399;
        }

        .btn-login:hover {
            background: rgba(52, 211, 153, 0.1);
        }

        .btn-signup {
            background: #10b981;
            color: white;
        }

        .btn-signup:hover {
            background: #059669;
        }

        .profile-icon {
            background: #10b981;
            color: white;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* CourierPro Inspired Gradient Hero Section */
        .hero {
            background: linear-gradient(135deg, #3b82f6 0%, #8b5cf6 50%, #6366f1 100%);
            color: white;
            text-align: center;
            padding: 100px 20px 140px 20px;
            position: relative;
        }

        .hero h1 {
            font-size: 48px;
            font-weight: 800;
            letter-spacing: -1px;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 18px;
            color: #e0e7ff;
            max-width: 600px;
            margin: 0 auto 35px auto;
        }

        .btn-hero {
            display: inline-block;
            background: #ffffff;
            color: #3b82f6;
            padding: 14px 35px;
            border-radius: 30px;
            font-weight: 700;
            text-decoration: none;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
            transition: transform 0.2s;
        }

        .btn-hero:hover {
            transform: scale(1.05);
        }

        /* Products Layout Section */
        .main-container {
            max-width: 1280px;
            margin: -60px auto 60px auto;
            padding: 0 24px;
            position: relative;
            z-index: 10;
        }

        .section-title {
            text-align: center;
            margin-bottom: 40px;
            font-size: 32px;
            font-weight: 800;
            color: #0f172a;
        }

        .catalog-box {
            background: #ffffff;
            border-radius: 16px;
            padding: 40px 30px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.05);
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }

        .product-card {
            background: #ffffff;
            border: 1px solid #e2e8f0;
            border-radius: 12px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            transition: all 0.3s;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 20px rgba(0,0,0,0.06);
            border-color: #cbd5e1;
        }

        /* Image Placeholder Frame */
        .img-placeholder {
            width: 100%;
            height: 160px;
            background-color: #f1f5f9;
            border-radius: 8px;
            margin-bottom: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #94a3b8;
            font-size: 13px;
            font-weight: 500;
            border: 2px dashed #cbd5e1;
        }

        .product-card h3 {
            font-size: 18px;
            color: #1e293b;
            margin-bottom: 8px;
            font-weight: 700;
        }

        .product-card p {
            font-size: 13px;
            color: #64748b;
            line-height: 1.5;
            margin-bottom: 15px;
            flex-grow: 1;
        }

        .product-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 12px;
        }

        .price {
            font-size: 18px;
            font-weight: 700;
            color: #0f172a;
        }

        .stock-badge {
            font-size: 11px;
            font-weight: 700;
            color: #b45309;
            background: #fef3c7;
            padding: 4px 8px;
            border-radius: 4px;
        }

        .btn-order {
            display: block;
            text-align: center;
            text-decoration: none;
            background: #10b981;
            color: white;
            padding: 10px;
            border-radius: 6px;
            font-weight: 600;
            font-size: 14px;
            transition: background 0.2s;
        }

        .btn-order:hover {
            background: #059669;
        }

        /* Lengthy Premium About Section */
        .about-section {
            background: #1e293b;
            color: #f1f5f9;
            padding: 90px 6%;
            margin-top: 40px;
        }

        .about-grid {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
        }

        .about-content h2 {
            font-size: 36px;
            color: #34d399;
            margin-bottom: 20px;
            font-weight: 800;
        }

        .about-content p {
            color: #94a3b8;
            font-size: 15px;
            line-height: 1.8;
            margin-bottom: 20px;
        }

        .about-features {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .feature-box {
            background: #334155;
            padding: 25px;
            border-radius: 10px;
            border-left: 4px solid #10b981;
        }

        .feature-box h4 {
            color: #ffffff;
            font-size: 16px;
            margin-bottom: 8px;
            font-weight: 600;
        }

        .feature-box p {
            color: #94a3b8;
            font-size: 13px;
            line-height: 1.5;
        }
    </style>
</head>
<body>

    <nav class="navbar">
        <a href="index.jsp" class="logo">AgroMarket</a>
        <ul class="nav-menu">
            <li><a href="index.jsp" class="nav-item">Home</a></li>
            <li><a href="#products" class="nav-item">Products</a></li>
            <li><a href="#about" class="nav-item">About System</a></li>
        </ul>
        <div class="nav-auth">
            <% if (session.getAttribute("user") == null) { %>
                <a href="login.html" class="btn-nav btn-login">User Login</a>
                <a href="register.html" class="btn-nav btn-signup">Sign Up</a>
            <% } else { %>
                <a href="LogoutServlet" class="btn-nav btn-login">Sign Out</a>
                <div class="profile-icon"><%= session.getAttribute("userInitial") %></div>
            <% } %>
        </div>
    </nav>

    <header class="hero">
        <h1>Fast & Direct Fertilizer Booking</h1>
        <p>Reliable resource supply chains for modern smart farming sectors and bulk agricultural suppliers worldwide.</p>
        <a href="#products" class="btn-hero">Explore Catalog</a>
    </header>

    <main class="main-container" id="products">
        <div class="catalog-box">
            <h2 class="section-title">Verified Live Inventory</h2>
            <div class="product-grid">

                <div class="product-card">
                    <div class="img-placeholder">[ Paste Fertilizer Image Here ]</div>
                    <h3>Urea (Granular)</h3>
                    <p>High nitrogen concentration compound formulation for rapid vegetative growth and leaf greening optimization.</p>
                    <div class="product-footer">
                        <span class="price">₹30.00 / kg</span>
                        <span class="stock-badge">Stock: 500 kg</span>
                    </div>
                    <a href="booking.html?id=1" class="btn-order">Book Now</a>
                </div>

                <div class="product-card">
                    <div class="img-placeholder">[ Paste Fertilizer Image Here ]</div>
                    <h3>DAP Fertilizer</h3>
                    <p>Phosphorus-rich formulation ensuring root development growth milestones and robust early crop establishment stages.</p>
                    <div class="product-footer">
                        <span class="price">₹50.00 / kg</span>
                        <span class="stock-badge">Stock: 300 kg</span>
                    </div>
                    <a href="booking.html?id=2" class="btn-order">Book Now</a>
                </div>

                <div class="product-card">
                    <div class="img-placeholder">[ Paste Fertilizer Image Here ]</div>
                    <h3>MOP Potash</h3>
                    <p>Essential potassium extract providing immunity protections against natural crop stress variables and disease threats.</p>
                    <div class="product-footer">
                        <span class="price">₹40.00 / kg</span>
                        <span class="stock-badge">Stock: 200 kg</span>
                    </div>
                    <a href="booking.html?id=3" class="btn-order">Book Now</a>
                </div>

                <div class="product-card">
                    <div class="img-placeholder">[ Paste Fertilizer Image Here ]</div>
                    <h3>NPK Balanced</h3>
                    <p>Perfect ratio blend tracking nitrogen, phosphorus, and potassium metrics for comprehensive general vegetation care.</p>
                    <div class="product-footer">
                        <span class="price">₹45.00 / kg</span>
                        <span class="stock-badge">Stock: 450 kg</span>
                    </div>
                    <a href="booking.html?id=4" class="btn-order">Book Now</a>
                </div>

                <% for (int i = 5; i <= 20; i++) { %>
                <div class="product-card">
                    <div class="img-placeholder">[ Paste Fertilizer Image Here ]</div>
                    <h3>Organic Blend Tier <%= i %></h3>
                    <p>Custom fortified soil modification material formulated explicitly to optimize batch consistency metrics and crop volumes.</p>
                    <div class="product-footer">
                        <span class="price">₹<%= (35 + i) %>.00 / kg</span>
                        <span class="stock-badge">Stock: <%= (150 + (i * 5)) %> kg</span>
                    </div>
                    <a href="booking.html?id=<%= i %>" class="btn-order">Book Now</a>
                </div>
                <% } %>

            </div>
        </div>
    </main>

    <section class="about-section" id="about">
        <div class="about-grid">
            <div class="about-content">
                <h2>Empowering Agricultural Logistics</h2>
                <p>AgroMarket stands as an integrated digital standard infrastructure providing real-time resource allocations for fast supply operations. We bridge traditional gaps by exposing accurate live storage stock indices directly to farm developers and enterprise distributors.</p>
                <p>Our platform architectural layers are designed with scalability targets in focus, ensuring programmatic validation metrics across order states, delivery dispatch timelines, secure localized client authentication profiles, and transparent price metrics.</p>
            </div>
            <div class="about-features">
                <div class="feature-box">
                    <h4>Direct Logistics</h4>
                    <p>Instant tracking allocation matching active inventory constraints without middleware interferences.</p>
                </div>
                <div class="feature-box">
                    <h4>Verified Quality</h4>
                    <p>Every dynamic listing represents batch certifications confirming standardized element ratios.</p>
                </div>
                <div class="feature-box">
                    <h4>Secure Access</h4>
                    <p>Robust transaction session layers keeping individual profile data and order history safe.</p>
                </div>
                <div class="feature-box">
                    <h4>Resource Health</h4>
                    <p>Data metrics targeting sustainable compound consumption recommendations for optimal soil profiles.</p>
                </div>
            </div>
        </div>
    </section>

</body>
</html>