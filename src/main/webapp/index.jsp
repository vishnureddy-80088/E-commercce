<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Premium E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Playfair+Display:wght@600;700&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)" crossorigin="anonymous">

    <style>
        :root {
            --bg: #fafafa;
            --bg-white: #ffffff;
            --primary: #1a1a2e;
            --primary-light: #16213e;
            --accent: #e94560;
            --accent-light: #ff6b6b;
            --accent-gradient: linear-gradient(135deg, #e94560 0%, #ff6b6b 100%);
            --muted: #6c757d;
            --muted-light: #adb5bd;
            --card: #ffffff;
            --surface: #f8f9fa;
            --surface-hover: #e9ecef;
            --success: #10b981;
            --warning: #f59e0b;
            --border: rgba(0, 0, 0, 0.06);
            --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.04);
            --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.08);
            --shadow-lg: 0 8px 30px rgba(0, 0, 0, 0.12);
            --shadow-xl: 0 20px 50px rgba(0, 0, 0, 0.15);
            --radius-sm: 8px;
            --radius-md: 12px;
            --radius-lg: 16px;
            --radius-xl: 24px;
            --container: 1280px;
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            color: var(--primary);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            line-height: 1.6;
            overflow-x: hidden;
        }

        a {
            color: inherit;
            text-decoration: none;
            transition: var(--transition);
        }

        button {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 24px;
            letter-spacing: -0.5px;
        }

        .brand .accent {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 10px 16px;
            border-radius: var(--radius-sm);
            color: var(--primary);
            font-weight: 500;
            font-size: 14px;
            transition: var(--transition);
        }

        nav.main-nav li a:hover {
            background: var(--surface);
            color: var(--accent);
        }

        nav.main-nav li a i {
            font-size: 14px;
            opacity: 0.7;
        }

        .search {
            display: flex;
            align-items: center;
            gap: 12px;
            background: var(--surface);
            padding: 12px 18px;
            border-radius: 50px;
            min-width: 280px;
            border: 1px solid transparent;
            transition: var(--transition);
        }

        .search:focus-within {
            background: var(--bg-white);
            border-color: var(--accent);
            box-shadow: 0 0 0 4px rgba(233, 69, 96, 0.1);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            color: var(--primary);
        }

        .search input::placeholder {
            color: var(--muted-light);
        }

        .icon-btn {
            background: transparent;
            border: 0;
            cursor: pointer;
            color: var(--primary);
            font-size: 18px;
            padding: 8px;
            border-radius: var(--radius-sm);
            transition: var(--transition);
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .icon-btn:hover {
            background: var(--surface);
            color: var(--accent);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 4px;
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 12px;
            border-radius: var(--radius-sm);
            transition: var(--transition);
        }

        .cart:hover {
            background: var(--surface);
        }

        .cart-count {
            position: absolute;
            top: 0;
            right: 0;
            background: var(--accent-gradient);
            color: white;
            font-size: 10px;
            font-weight: 700;
            min-width: 18px;
            height: 18px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
            padding: 0 4px;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 22px;
            cursor: pointer;
            padding: 8px;
        }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            min-height: 560px;
            padding: 80px 24px;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: 
                linear-gradient(135deg, rgba(26, 26, 46, 0.85) 0%, rgba(22, 33, 62, 0.75) 100%),
                url('[images.unsplash.com](https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1600&q=80)') center/cover no-repeat;
            z-index: -1;
        }

        .hero-content {
            max-width: 800px;
            color: white;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            padding: 8px 16px;
            border-radius: 50px;
            font-size: 13px;
            font-weight: 500;
            margin-bottom: 24px;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .hero-badge i {
            color: var(--accent-light);
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: clamp(36px, 6vw, 56px);
            font-weight: 700;
            margin: 0 0 20px;
            letter-spacing: -1px;
            line-height: 1.1;
        }

        .hero p {
            margin: 0 0 32px;
            opacity: 0.9;
            font-size: 18px;
            line-height: 1.7;
        }

        .hero-buttons {
            display: flex;
            gap: 16px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 28px;
            border-radius: 50px;
            font-weight: 600;
            font-size: 15px;
            cursor: pointer;
            border: 0;
            transition: var(--transition);
        }

        .btn-primary {
            background: var(--accent-gradient);
            color: white;
            box-shadow: 0 4px 15px rgba(233, 69, 96, 0.4);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(233, 69, 96, 0.5);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.25);
            color: white;
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.2);
            border-color: rgba(255, 255, 255, 0.4);
        }

        .btn-dark {
            background: var(--primary);
            color: white;
        }

        .btn-dark:hover {
            background: var(--primary-light);
            transform: translateY(-2px);
        }

        /* ========== SECTIONS ========== */
        .section {
            padding: 80px 0;
        }

        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-header .overline {
            display: inline-block;
            color: var(--accent);
            font-weight: 600;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 12px;
        }

        .section-header h2 {
            font-family: 'Playfair Display', serif;
            font-size: clamp(28px, 4vw, 40px);
            font-weight: 700;
            margin: 0 0 12px;
            letter-spacing: -0.5px;
        }

        .section-header p {
            color: var(--muted);
            font-size: 16px;
            max-width: 600px;
            margin: 0 auto;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        /* ========== CATEGORIES ========== */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            border-radius: var(--radius-lg);
            padding: 28px 20px;
            text-align: center;
            border: 1px solid var(--border);
            transition: var(--transition);
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
            border-color: transparent;
        }

        .cat-card .icon-wrapper {
            width: 64px;
            height: 64px;
            margin: 0 auto 16px;
            background: linear-gradient(135deg, rgba(233, 69, 96, 0.1) 0%, rgba(255, 107, 107, 0.1) 100%);
            border-radius: var(--radius-md);
            display: grid;
            place-items: center;
            transition: var(--transition);
        }

        .cat-card:hover .icon-wrapper {
            background: var(--accent-gradient);
        }

        .cat-card .icon-wrapper i {
            font-size: 24px;
            color: var(--accent);
            transition: var(--transition);
        }

        .cat-card:hover .icon-wrapper i {
            color: white;
        }

        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
            margin: 0 0 4px;
        }

        .cat-card .cat-count {
            font-size: 13px;
            color: var(--muted);
        }

        /* ========== PRODUCTS ========== */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            border: 1px solid var(--border);
            transition: var(--transition);
        }

        .product:hover {
            box-shadow: var(--shadow-lg);
            border-color: transparent;
        }

        .product-image {
            position: relative;
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            display: block;
            transition: transform 0.5s ease;
        }

        .product:hover .product-image img {
            transform: scale(1.05);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent-gradient);
            color: white;
            padding: 6px 12px;
            border-radius: 50px;
            font-weight: 700;
            font-size: 12px;
        }

        .product-badge.new {
            background: var(--success);
        }

        .product-actions-overlay {
            position: absolute;
            top: 12px;
            right: 12px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            opacity: 0;
            transform: translateX(10px);
            transition: var(--transition);
        }

        .product:hover .product-actions-overlay {
            opacity: 1;
            transform: translateX(0);
        }

        .product-actions-overlay button {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: white;
            border: 0;
            cursor: pointer;
            display: grid;
            place-items: center;
            box-shadow: var(--shadow-md);
            transition: var(--transition);
        }

        .product-actions-overlay button:hover {
            background: var(--accent);
            color: white;
        }

        .product-body {
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 12px;
            flex: 1;
        }

        .product-category {
            font-size: 12px;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 500;
        }

        .product h5 {
            font-size: 16px;
            font-weight: 600;
            margin: 0;
            line-height: 1.4;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .stars {
            color: #fbbf24;
            font-size: 13px;
            letter-spacing: 2px;
        }

        .review-count {
            font-size: 13px;
            color: var(--muted);
        }

        .price-row {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: auto;
        }

        .price {
            font-weight: 700;
            font-size: 20px;
            color: var(--primary);
        }

        .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 15px;
        }

        .product-footer {
            padding: 16px 20px;
            border-top: 1px solid var(--border);
        }

        .add-btn {
            width: 100%;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 12px;
            border-radius: var(--radius-sm);
            cursor: pointer;
            font-weight: 600;
            font-size: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: var(--transition);
        }

        .add-btn:hover {
            background: var(--accent);
        }

        .add-btn:disabled {
            background: var(--success);
            cursor: default;
        }

        /* ========== DEAL SECTION ========== */
        .deal-section {
            background: var(--primary);
            border-radius: var(--radius-xl);
            overflow: hidden;
        }

        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
        }

        .deal-image {
            height: 100%;
            min-height: 450px;
        }

        .deal-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 48px;
            color: white;
        }

        .deal-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: var(--accent-gradient);
            padding: 8px 16px;
            border-radius: 50px;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .deal-content h3 {
            font-family: 'Playfair Display', serif;
            font-size: 36px;
            font-weight: 700;
            margin: 0 0 12px;
        }

        .deal-content > p {
            opacity: 0.8;
            font-size: 16px;
            margin-bottom: 28px;
        }

        .timer {
            display: flex;
            gap: 12px;
            margin-bottom: 28px;
        }

        .time-box {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 16px 20px;
            border-radius: var(--radius-md);
            min-width: 80px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .time-box .number {
            font-size: 28px;
            font-weight: 700;
            line-height: 1;
        }

        .time-box .label {
            font-size: 12px;
            opacity: 0.7;
            margin-top: 4px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .deal-price {
            display: flex;
            align-items: center;
            gap: 16px;
            margin-bottom: 8px;
        }

        .deal-price .current {
            font-size: 36px;
            font-weight: 700;
        }

        .deal-price .original {
            font-size: 20px;
            opacity: 0.5;
            text-decoration: line-through;
        }

        .deal-price .discount {
            background: var(--accent-gradient);
            padding: 6px 14px;
            border-radius: 50px;
            font-weight: 700;
            font-size: 14px;
        }

        .deal-stock {
            margin: 16px 0 24px;
            opacity: 0.8;
        }

        .stock-bar {
            height: 6px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 50px;
            margin-top: 8px;
            overflow: hidden;
        }

        .stock-bar .fill {
            height: 100%;
            width: 25%;
            background: var(--accent-gradient);
            border-radius: 50px;
        }

        /* ========== FEATURES ========== */
        .features {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
            padding: 48px 0;
            border-top: 1px solid var(--border);
            border-bottom: 1px solid var(--border);
            margin: 40px 0;
        }

        .feature {
            display: flex;
            align-items: flex-start;
            gap: 16px;
        }

        .feature-icon {
            width: 52px;
            height: 52px;
            background: linear-gradient(135deg, rgba(233, 69, 96, 0.1) 0%, rgba(255, 107, 107, 0.1) 100%);
            border-radius: var(--radius-md);
            display: grid;
            place-items: center;
            flex-shrink: 0;
        }

        .feature-icon i {
            font-size: 20px;
            color: var(--accent);
        }

        .feature-text h4 {
            font-size: 15px;
            font-weight: 600;
            margin: 0 0 4px;
        }

        .feature-text p {
            font-size: 13px;
            color: var(--muted);
            margin: 0;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 24px;
        }

        .testimonial {
            background: var(--card);
            padding: 32px;
            border-radius: var(--radius-lg);
            border: 1px solid var(--border);
            transition: var(--transition);
        }

        .testimonial:hover {
            box-shadow: var(--shadow-lg);
            border-color: transparent;
        }

        .testimonial-rating {
            color: #fbbf24;
            font-size: 14px;
            letter-spacing: 2px;
            margin-bottom: 16px;
        }

        .testimonial p {
            font-size: 15px;
            line-height: 1.7;
            color: var(--primary);
            margin-bottom: 20px;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .testimonial-author img {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
        }

        .author-info .name {
            font-weight: 600;
            font-size: 15px;
        }

        .author-info .role {
            font-size: 13px;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter {
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
            color: white;
            border-radius: var(--radius-xl);
            padding: 64px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .newsletter::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -20%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(233, 69, 96, 0.3) 0%, transparent 70%);
            pointer-events: none;
        }

        .newsletter h3 {
            font-family: 'Playfair Display', serif;
            font-size: 32px;
            font-weight: 700;
            margin: 0 0 12px;
            position: relative;
        }

        .newsletter > p {
            opacity: 0.85;
            margin-bottom: 32px;
            font-size: 16px;
            position: relative;
        }

        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            position: relative;
        }

        .newsletter-form input {
            padding: 16px 24px;
            border-radius: 50px;
            border: 0;
            width: 360px;
            max-width: 100%;
            font-size: 15px;
            outline: none;
        }

        .newsletter-form input:focus {
            box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.2);
        }

        #newsletterMsg {
            margin-top: 16px;
            font-size: 14px;
        }

        /* ========== FOOTER ========== */
        footer {
            padding: 64px 0 32px;
            border-top: 1px solid var(--border);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 48px;
            margin-bottom: 48px;
        }

        .footer-brand {
            max-width: 320px;
        }

        .footer-brand .brand {
            margin-bottom: 16px;
        }

        .footer-brand p {
            color: var(--muted);
            font-size: 14px;
            line-height: 1.7;
            margin-bottom: 20px;
        }

        .social-links {
            display: flex;
            gap: 12px;
        }

        .social-links a {
            width: 40px;
            height: 40px;
            background: var(--surface);
            border-radius: 50%;
            display: grid;
            place-items: center;
            color: var(--primary);
            transition: var(--transition);
        }

        .social-links a:hover {
            background: var(--accent);
            color: white;
        }

        .footer-column h4 {
            font-size: 14px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 20px;
        }

        .footer-column ul {
            list-style: none;
        }

        .footer-column li {
            margin-bottom: 12px;
        }

        .footer-column a {
            color: var(--muted);
            font-size: 14px;
        }

        .footer-column a:hover {
            color: var(--accent);
        }

        .footer-bottom {
            padding-top: 32px;
            border-top: 1px solid var(--border);
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 16px;
        }

        .footer-bottom p {
            color: var(--muted);
            font-size: 14px;
        }

        .payment-methods {
            display: flex;
            gap: 12px;
        }

        .payment-methods i {
            font-size: 28px;
            color: var(--muted);
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }
            .products {
                grid-template-columns: repeat(3, 1fr);
            }
            .features {
                grid-template-columns: repeat(2, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 900px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: inline-block;
            }
            .products {
                grid-template-columns: repeat(2, 1fr);
            }
            .categories {
                grid-template-columns: repeat(2, 1fr);
            }
            .deal {
                grid-template-columns: 1fr;
            }
            .deal-image {
                min-height: 280px;
            }
            .testimonials-grid {
                grid-template-columns: 1fr;
            }
            .newsletter {
                padding: 48px 32px;
            }
        }

        @media (max-width: 600px) {
            .hero {
                min-height: 480px;
                padding: 60px 20px;
            }
            .hero h1 {
                font-size: 32px;
            }
            .products,
            .categories {
                grid-template-columns: 1fr;
            }
            .features {
                grid-template-columns: 1fr;
            }
            .search {
                min-width: auto;
                display: none;
            }
            .timer {
                flex-wrap: wrap;
            }
            .time-box {
                min-width: 70px;
                padding: 12px;
            }
            .time-box .number {
                font-size: 22px;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 32px;
            }
            .footer-bottom {
                flex-direction: column;
                text-align: center;
            }
        }

        /* ========== MOBILE MENU ========== */
        #mobileMenu {
            display: none;
            background: var(--bg-white);
            border-top: 1px solid var(--border);
            padding: 16px 0;
        }

        #mobileMenu ul {
            list-style: none;
        }

        #mobileMenu li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 0;
            font-weight: 500;
            border-bottom: 1px solid var(--border);
        }

        #mobileMenu li:last-child a {
            border-bottom: 0;
        }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner">
            <div style="display: flex; align-items: center; gap: 16px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    Nexus<span class="accent">Shop</span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories <i class="fas fa-chevron-down" style="font-size: 10px; opacity: 0.6;"></i></a></li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
                </ul>
            </nav>

            <div style="display: flex; align-items: center; gap: 16px;">
                <div class="search">
                    <i class="fas fa-search" style="color: var(--muted-light);"></i>
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products" />
                </div>

                <div class="header-actions">
                    <a class="icon-btn" title="Account" href="#"><i class="far fa-user"></i></a>
                    <a class="icon-btn" title="Wishlist" href="#"><i class="far fa-heart"></i></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart">
                        <i class="fas fa-shopping-bag"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero">
            <div class="hero-content">
                <div class="hero-badge">
                    <i class="fas fa-sparkles"></i>
                    New Summer Collection 2024
                </div>
                <h1>Discover Premium Products for Modern Living</h1>
                <p>Explore our curated selection of fashion, technology, and accessories. Enjoy exclusive deals with free shipping on orders over $50.</p>
                <div class="hero-buttons">
                    <button class="btn btn-primary" id="shopNow">
                        Shop Collection <i class="fas fa-arrow-right"></i>
                    </button>
                    <button class="btn btn-ghost" id="exploreDeals">
                        <i class="fas fa-play-circle"></i> Watch Lookbook
                    </button>
                </div>
            </div>
        </section>

        <!-- Features Strip -->
        <div class="container">
            <div class="features">
                <div class="feature">
                    <div class="feature-icon">
                        <i class="fas fa-truck"></i>
                    </div>
                    <div class="feature-text">
                        <h4>Free Shipping</h4>
                        <p>On orders over $50</p>
                    </div>
                </div>
                <div class="feature">
                    <div class="feature-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <div class="feature-text">
                        <h4>Secure Payment</h4>
                        <p>100% protected</p>
                    </div>
                </div>
                <div class="feature">
                    <div class="feature-icon">
                        <i class="fas fa-undo"></i>
                    </div>
                    <div class="feature-text">
                        <h4>Easy Returns</h4>
                        <p>30 day return policy</p>
                    </div>
                </div>
                <div class="feature">
                    <div class="feature-icon">
                        <i class="fas fa-headset"></i>
                    </div>
                    <div class="feature-text">
                        <h4>24/7 Support</h4>
                        <p>Dedicated support</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Categories -->
        <section class="section container">
            <div class="section-header">
                <span class="overline">Browse Categories</span>
                <h2>Shop by Category</h2>
                <p>Discover products across our carefully curated collections</p>
            </div>
            <div class="grid categories" id="categoriesGrid"></div>
        </section>

        <!-- Products -->
        <section class="section container">
            <div class="section-header">
                <span class="overline">Our Products</span>
                <h2>Trending This Week</h2>
                <p>Popular picks loved by our customers</p>
            </div>
            <div class="grid products" id="productsGrid"></div>
        </section>

        <!-- Deal -->
        <section id="deals" class="section container">
            <div class="deal-section">
                <div class="deal">
                    <div class="deal-image">
                        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80)" alt="MacBook Air M2">
                    </div>
                    <div class="deal-content">
                        <div class="deal-badge">
                            <i class="fas fa-bolt"></i> Flash Sale
                        </div>
                        <h3>MacBook Air M2</h3>
                        <p>Supercharged by the M2 chip. Thin, light, and powerful — with up to 18 hours of battery life.</p>

                        <div class="timer">
                            <div class="time-box">
                                <div class="number" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="time-box">
                                <div class="number" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="time-box">
                                <div class="number" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="time-box">
                                <div class="number" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>

                        <div class="deal-price">
                            <span class="current">$999</span>
                            <span class="original">$1,199</span>
                            <span class="discount">-17%</span>
                        </div>

                        <div class="deal-stock">
                            <span>Only <strong>12 items</strong> left at this price!</span>
                            <div class="stock-bar">
                                <div class="fill"></div>
                            </div>
                        </div>

                        <button class="btn btn-primary" id="buyDeal">
                            <i class="fas fa-shopping-cart"></i> Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container">
            <div class="section-header">
                <span class="overline">Testimonials</span>
                <h2>What Our Customers Say</h2>
                <p>Real reviews from verified buyers</p>
            </div>

            <div class="testimonials-grid">
                <div class="testimonial">
                    <div class="testimonial-rating">★★★★★</div>
                    <p>"The quality exceeded my expectations! Fast shipping and the customer service team was incredibly helpful. Will definitely shop here again."</p>
                    <div class="testimonial-author">
                        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80)" alt="Ava Martin">
                        <div class="author-info">
                            <div class="name">Ava Martin</div>
                            <div class="role">Verified Buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="testimonial-rating">★★★★★</div>
                    <p>"Great selection of products and the checkout process was seamless. My order arrived earlier than expected. Highly recommend!"</p>
                    <div class="testimonial-author">
                        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80)" alt="Michael Lee">
                        <div class="author-info">
                            <div class="name">Michael Lee</div>
                            <div class="role">Frequent Buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="testimonial-rating">★★★★☆</div>
                    <p>"Love the modern design and easy navigation. Found exactly what I was looking for. The return policy gives peace of mind."</p>
                    <div class="testimonial-author">
                        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=80&q=80)" alt="Sarah Johnson">
                        <div class="author-info">
                            <div class="name">Sarah Johnson</div>
                            <div class="role">New Customer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container">
            <div class="newsletter">
                <h3>Join Our Newsletter</h3>
                <p>Subscribe to get exclusive offers, early access to new arrivals, and 10% off your first order.</p>
                <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email address" required>
                    <button class="btn btn-primary" id="subscribeBtn">
                        Subscribe <i class="fas fa-paper-plane"></i>
                    </button>
                </form>
                <div id="newsletterMsg"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-brand">
                    <div class="brand">Nexus<span class="accent">Shop</span></div>
                    <p>A premium e-commerce experience with curated products for modern living. Quality, style, and convenience in one place.</p>
                    <div class="social-links">
                        <a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" title="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" title="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>

                <div class="footer-column">
                    <h4>Shop</h4>
                    <ul>
                        <li><a href="#">All Products</a></li>
                        <li><a href="#">New Arrivals</a></li>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Sale Items</a></li>
                    </ul>
                </div>

                <div class="footer-column">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>

                <div class="footer-column">
                    <h4>Support</h4>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping Info</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <p>© <span id="year"></span> NexusShop. All rights reserved.</p>
                <div class="payment-methods">
                    <i class="fab fa-cc-visa"></i>
                    <i class="fab fa-cc-mastercard"></i>
                    <i class="fab fa-cc-amex"></i>
                    <i class="fab fa-cc-paypal"></i>
                    <i class="fab fa-cc-apple-pay"></i>
                </div>
            </div>
        </div>
    </footer>

    <script>
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 124 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 86 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 312 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 198 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 156 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 243 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: '[images.unsplash.com](https://images.unsplash.com/photo-1592750475338-74b7b21085ab?auto=format&fit=crop&w=600&q=80)', category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 5, reviews: 86, img: '[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80)', category: 'Laptops' },
            { id: 3, title: 'Apple Watch Ultra', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-12%', img: '[images.unsplash.com](https://images.unsplash.com/photo-1434493789847-2f02dc6ca35d?auto=format&fit=crop&w=600&q=80)', category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: '[images.unsplash.com](https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80)', category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: '[images.unsplash.com](https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80)', category: 'Gadgets' },
            { id: 6, title: 'Premium Fragrance Set', price: 120, rating: 5, reviews: 189, img: '[images.unsplash.com](https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=600&q=80)', category: 'Accessories' },
            { id: 7, title: 'Travel Backpack Pro', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: '-20%', img: '[images.unsplash.com](https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80)', category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: 'Best Seller', img: '[images.unsplash.com](https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80)', category: 'Gadgets' }
        ];

        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrapper"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="cat-count">${cat.count} Products</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({ top: document.getElementById('productsGrid').offsetTop - 100, behavior: 'smooth' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                const badgeClass = p.badge === 'New' || p.badge === 'Best Seller' ? 'new' : '';
                el.innerHTML = `
                    <div class="product-image">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}">
                        ${p.badge ? `<div class="product-badge ${badgeClass}">${p.badge}</div>` : ''}
                        <div class="product-actions-overlay">
                            <button title="Quick view"><i class="fas fa-eye"></i></button>
                            <button title="Add to wishlist"><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                    <div class="product-body">
                        <div class="product-category">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="product-rating">
                            <span class="stars">${'★'.repeat(p.rating)}${'☆'.repeat(5 - p.rating)}</span>
                            <span class="review-count">(${p.reviews})</span>
                        </div>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', () => addToCart(Number(btn.dataset.id)));
            });
        }

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[s]));
        }

        function addToCart(productId) {
            cartCount++;
            cartCountEl.textContent = cartCount;
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added!';
                btn.disabled = true;
                setTimeout(() => { btn.innerHTML = original; btn.disabled = false; }, 1500);
            }
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            renderProducts(PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)));
        }

        document.getElementById('searchInput').addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

        document.getElementById('mobileToggle').addEventListener('click', () => {
            const menu = document.getElementById('mobileMenu');
            menu.style.display = menu.style.display === 'none' || !menu.style.display ? 'block' : 'none';
        });

        document.getElementById('catMenuBtn')?.addEventListener('click', e => {
            e.preventDefault();
            window.scrollTo({ top: categoriesGrid.offsetTop - 100, behavior: 'smooth' });
        });

        document.getElementById('newsletterForm').addEventListener('submit', e => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.color = '#ff6b6b';
                msg.textContent = 'Please enter a valid email address.';
                return;
            }
            msg.style.color = '#a5f3fc';
            msg.textContent = '✓ Thanks! You\'re now subscribed.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.textContent = '', 4000);
        });

        (function setupDealTimer() {
            const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = target - new Date();
                if (diff <= 0) return;
                document.getElementById('dealDays').textContent = Math.floor(diff / (24 * 3600 * 1000));
                document.getElementById('dealHours').textContent = String(Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000))).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600 * 1000)) / (60 * 1000))).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60 * 1000)) / 1000)).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({ top: productsGrid.offsetTop - 100, behavior: 'smooth' }));
        document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('buyDeal').addEventListener('click', () => { cartCount++; cartCountEl.textContent = cartCount; alert('Deal added to cart!'); });

        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>

</html>
