<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product</title>
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/product.css">
    <link rel="stylesheet" href="./assets/css/item.css">
    <link rel="stylesheet" href="./assets/font/fontawesome-free-5.15.4-web/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;500;600;700&family=Noto+Serif+Display:ital,wght@1,500;1,600&family=Zilla+Slab:wght@400;500;600&display=swap" rel="stylesheet">
    
</head>
<body>
    <div class="main">
        <div class="wrapper">
            <div class="header-top__wrapper">
                <jsp:include page="header-top.jsp"/>
                <c:if test="${requestScope.ACTIVE_PRODUCT_LIST == null}">
                    <c:redirect url="MainController?action=GetLanding"></c:redirect>
                </c:if>
                
                <div class="header-nav">
                    <ul class="header-nav__list">
                        <li class="list__item">
                            <a href="landing.jsp" class="list__item-link no-deco">Home</a>
                        </li>
                        <li class="list__item">
                            <a href="#" class="list__item-link no-deco">Popular</a>
                        </li>
                        <li class="list__item">
                            <a href="category.jsp" class="list__item-link no-deco">
                                Category
                                <i class="fas fa-chevron-down"></i>
                            </a>
                            <ul class="list__sub-menu">
                                <ul class="sub-menu__content">
                                    <h3 class="sub-menu__header">Content</h3>
                                    <c:forEach items="${requestScope.CATEGORY_LIST}" var="o">
                                        <li class="sub-menu__item"><a class="sub-menu__item-link no-deco" href="MainController?action=GetCate&ID=${o.ID}">${o.name}</a></li>
                                    </c:forEach>
                                </ul>
                                <ul class="sub-menu__content">
                                    <h3 class="sub-menu__header">Type</h3>
                                    <c:forEach items="${requestScope.TYPE_LIST}" var="o">
                                        <li class="sub-menu__item"><a class="sub-menu__item-link no-deco" href="MainController?action=GetType&ID=${o.ID}">${o.name}</a></li>
                                    </c:forEach>
                                </ul>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="product">
                <div class="product-info">
                    <div class="product-info__item">
                        <div class="product-info__img">
                            <img src="${requestScope.PRODUCT_DETAIL.image}" alt="" class="width-100" style="height: 100%">
                        </div>
                    </div>
                    <div class="product-info__item">
                        <div class="product-view">
                            <h1 class="product-view__item product-view__name">${requestScope.PRODUCT_DETAIL.name}</h1>
                            <h3 class="product-view__item product-view__author">${requestScope.PRODUCT_DETAIL.author}</h3>
                            <h3 class="product-view__item product-view__price">${requestScope.PRODUCT_DETAIL.price}đ</h3>
                        </div>
                        <div class="product-view__description">
                            <h2 class="product-view__description-header">PRODUCT DESCRIPTION</h2>
                            <p class="product-view__description-paragraph">${requestScope.PRODUCT_DETAIL.description}</p>
                        </div>
                        <div class="buy-btns">
                            <button class="btn btn--buy btn--primary">Buy Now</button>
                            <a href="MainController?action=AddToCart&ID=${requestScope.PRODUCT_DETAIL.ID}" class="btn btn--buy btn--secondary no-deco"><i class="cart fas fa-cart-plus"></i>Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="footer-nav">
                <a href="#" class="footer-nav__link no-deco">
                    <i class="fas fa-chevron-up"></i>
                    Back to top</a>
            </div>
            <div class="footer-content">
                <div class="footer-content__section">
                    <h2 class="footer-content__header about__header" style="text-transform: uppercase;">About us</h2>
                    <div class="footer-content__items">
                        <h1 class="footer-item__header">Members's Name:</h1>
                        <h3 class="footer-item__detail">Phạm Hoàng Minh Mẫn</h3>
                        <h3 class="footer-item__detail">Tân Tiến Đạt</h3>
                        <h3 class="footer-item__detail">Phạm Ngọc Nhật Huy</h3>
                    </div>
                    <div class="about__item about__member-emails">
                        <h1 class="footer-item__header">Members's email:</h1>
                        <h3 class="footer-item__detail">19110093@student.hcmute.edu.vn</h3>
                        <h3 class="footer-item__detail">19110117@student.hcmute.edu.vn</h3>
                        <h3 class="footer-item__detail">19110082@student.hcmute.edu.vn</h3>
                    </div>
                </div>
                <div class="footer-content__section">
                    <h2 class="footer-content__header" style="text-transform: uppercase;">Available Category</h2>
                    <div class="footer-content__items">
                        <c:forEach items="${requestScope.CATEGORY_LIST}" var="o">
                            <h3 class="footer-item__detail"><a class="footer-item__detail-link no-deco" href="MainController?action=GetCate&ID=${o.ID}">${o.name}</a></h3>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>
