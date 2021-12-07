
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/landing.css">
    <link rel="stylesheet" href="./assets/css/item.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/font/fontawesome-free-5.15.4-web/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;500;600;700&family=Noto+Serif+Display:ital,wght@1,500;1,600&family=Zilla+Slab:wght@400;500;600&display=swap" rel="stylesheet">
</head>
<body>
    <div class="main">
        <div class="wrapper">
            <header class="header">
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
                                <a href="./category.jsp" class="list__item-link no-deco">
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
                <div class="header-bottom">
                    <div class="header-bottom__col">
                        <div class="header-bottom__quote">
                            <h1 class="header-bottom__quote-title">If you don’t like to read, you haven’t found the <span>right book</span>.</h1>
                            <p class="description">J.K. Rowling</p>
                        </div>
                        <!-- <button class="btn btn--primary">EXPLORE</button> -->
                    </div>
                    <div class="header-bottom__col col-img">
                        <img src="./assets/img/header.jpeg" alt="" class="width-100">
                    </div>
                </div>
            </header>
    
            <div class="content">
                <div class="section section--popular">
                    <div class="section-popular__container">
                        <div class="section-header section-popular__header">
                            <h1 class="header-item font-black">Featuring books.</h1>
                        </div>
                        <div class="section-popular__item-wrapper item-wrapper">
                            <c:forEach items="${requestScope.ACTIVE_PRODUCT_LIST}" var="o">
                            <div class="section-popular__item">
                                <div class="popular__img">
                                    <img src="${o.image}" alt="" class="width-100">
                                </div>
                                <div class="item__description item__description--popular">
                                    <h2 class="item-name font-black">${o.name}</h2>
                                    <p class="item-author font-black">${o.author}</p>
                                    <button class="btn btn--secondary"><a href="MainController?action=Detail&ID=${o.ID}" class="product-view no-deco">View Book</a></button>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                        <a href="/category.html" class="view-all no-deco font-black">View all</a>
                    </div>
                </div>
                <div class="section">
                    <div class="section-blog__container">
                        <div class="section-header">
                            <h1 class="header-item blog-header">Famous Author's masterpieces</h1>
                            <h2 class="blog__author-name">J. K. Rowling</h2>
                            <p class="header-description">
                                “We're all human, aren't we? Every human life is worth the same, and worth saving.”</p>
                        </div>
                        <div class="section-blog__items">
                            <div class="section-blog__special">
                                <img src="https://ss-images.saostar.vn/wwebp2000/2019/07/04/5542113/q2-copy.jpg" alt="" class="width-100">
                            </div>
                            <div class="section-blog__features">
                                <div class="item features__item">
                                    <div class="feature-item__img">
                                        <img src="./assets/img/book1.jpg" alt="" class="width-100">
                                    </div>
                                    <div class="item__description">
                                        <h2 class="item-name font-black">Code Dạo Ký Sự</h2>
                                        <p class="item-author font-black">J. K. Rowling</p>
                                        <p class="item-price font-black">500000 VND</p>
                                        <div class="feature-item__btns buy-btns">
                                            <button class="btn btn--buy btn--primary"><a href="/product.html" class="product-view no-deco">View Book</a></button>
                                            <button class="btn btn--buy btn--secondary"><a href="" class="product-view no-deco">Add to cart</a></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="item features__item">
                                    <div class="feature-item__img">
                                        <img src="./assets/img/book1.jpg" alt="" class="width-100">
                                    </div>
                                    <div class="item__description">
                                        <h2 class="item-name font-black">Code Dạo Ký Sự</h2>
                                        <p class="item-author font-black">J. K. Rowling</p>
                                        <p class="item-price font-black">500000 VND</p>
                                        <div class="feature-item__btns buy-btns">
                                            <button class="btn btn--buy btn--primary"><a href="/product.html" class="product-view no-deco">View Book</a></button>
                                            <button class="btn btn--buy btn--secondary"><a href="" class="product-view no-deco">Add to cart</a></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="item features__item">
                                    <div class="feature-item__img">
                                        <img src="./assets/img/book1.jpg" alt="" class="width-100">
                                    </div>
                                    <div class="item__description">
                                        <h2 class="item-name font-black">Code Dạo Ký Sự</h2>
                                        <p class="item-author font-black">J. K. Rowling</p>
                                        <p class="item-price font-black">500000 VND</p>
                                        <div class="feature-item__btns buy-btns">
                                            <button class="btn btn--buy btn--primary"><a href="/product.html" class="product-view no-deco">View Book</a></button>
                                            <button class="btn btn--buy btn--secondary"><a href="" class="product-view no-deco">Add to cart</a></button>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            
                        </div>

                    </div>
                </div>
                <div class="section section--subcategory">
                    <div class="section__container">
                        <div class="section-header">
                            <h1 class="header-item">Science books</h1> <!-- co the lay ten section tu database xong hien danh sach san pham thuoc category do-->
                        </div>
                        <div class="item-wrapper section__item-wrapper">
                            <div class="item">
                                <div class="item__description item--horizontal">
                                    <h2 class="item-name">Tôi đi code dạo.</h2>
                                    <p class="item-author">Phạm Huy Hoàng</p>
                                    <p class="item-price">500000 VND</p>
                                </div>
                                <div class="item__img">
                                    <img src="./assets/img/book1.jpg" alt="" class="width-100">
                                </div>
                                <div class="quick-nav-modal">
                                    <button class="btn btn--slide-down"><a href="/product.html" class="product-view no-deco">View Item</a></button>
                                    <button class="btn btn--slide-up"><a href="" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                </div>
                            </div>
                            
                            <div class="item">
                                <div class="item__description item--horizontal">
                                    <h2 class="item-name">Tôi đi code dạo.</h2>
                                    <p class="item-author">Phạm Huy Hoàng</p>
                                    <p class="item-price">500000 VND</p>
                                </div>
                                <div class="item__img">
                                    <img src="./assets/img/book1.jpg" alt="" class="width-100">
                                </div>
                                <div class="quick-nav-modal">
                                    <button class="btn btn--slide-down"><a href="/product.html" class="product-view no-deco">View Item</a></button>
                                    <button class="btn btn--slide-up"><a href="" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                </div>
                            </div>

                            <div class="item">
                                <div class="item__description item--horizontal">
                                    <h2 class="item-name">Tôi đi code dạo.</h2>
                                    <p class="item-author">Phạm Huy Hoàng</p>
                                    <p class="item-price">500000 VND</p>
                                </div>
                                <div class="item__img">
                                    <img src="./assets/img/book1.jpg" alt="" class="width-100">
                                </div>
                                <div class="quick-nav-modal">
                                    <button class="btn btn--slide-down"><a href="/product.html" class="product-view no-deco">View Item</a></button>
                                    <button class="btn btn--slide-up"><a href="" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item__description item--horizontal">
                                    <h2 class="item-name">Tôi đi code dạo.</h2>
                                    <p class="item-author">Phạm Huy Hoàng</p>
                                    <p class="item-price">500000 VND</p>
                                </div>
                                <div class="item__img">
                                    <img src="./assets/img/book1.jpg" alt="" class="width-100">
                                </div>
                                <div class="quick-nav-modal">
                                    <button class="btn btn--slide-down"><a href="/product.html" class="product-view no-deco">View Item</a></button>
                                    <button class="btn btn--slide-up"><a href="" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item__description item--horizontal">
                                    <h2 class="item-name">Tôi đi code dạo.</h2>
                                    <p class="item-author">Phạm Huy Hoàng</p>
                                    <p class="item-price">500000 VND</p>
                                </div>
                                <div class="item__img">
                                    <img src="./assets/img/book1.jpg" alt="" class="width-100">
                                </div>
                                <div class="quick-nav-modal">
                                    <button class="btn btn--slide-down"><a href="/product.html" class="product-view no-deco">View Item</a></button>
                                    <button class="btn btn--slide-up"><a href="" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item__description item--horizontal">
                                    <h2 class="item-name">Tôi đi code dạo.</h2>
                                    <p class="item-author">Phạm Huy Hoàng</p>
                                    <p class="item-price">500000 VND</p>
                                </div>
                                <div class="item__img">
                                    <img src="./assets/img/book1.jpg" alt="" class="width-100">
                                </div>
                                <div class="quick-nav-modal">
                                    <button class="btn btn--slide-down"><a href="/product.html" class="product-view no-deco">View Item</a></button>
                                    <button class="btn btn--slide-up"><a href="" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item__description item--horizontal">
                                    <h2 class="item-name">Tôi đi code dạo.</h2>
                                    <p class="item-author">Phạm Huy Hoàng</p>
                                    <p class="item-price">500000 VND</p>
                                </div>
                                <div class="item__img">
                                    <img src="./assets/img/book1.jpg" alt="" class="width-100">
                                </div>
                                <div class="quick-nav-modal">
                                    <button class="btn btn--slide-down"><a href="/product.html" class="product-view no-deco">View Item</a></button>
                                    <button class="btn btn--slide-up"><a href="" class="add-to-cart no-deco"><i class="fas fa-cart-plus"></i> Add to cart</i></a></button>
                                </div>
                            </div>
                            
                        
                        </div>
                    </div>
                </div>
                
               <div class="section section--reason">
                    <div class="section-reason__container">
                        <div class="section-reason__item">
                            <div class="reason__img">
                                <img src="./assets/img/books.png" alt="" class="width-100">
                            </div>
                            <div class="reason__content">
                                <h2 class="reason__header" style ="text-transform: capitalize;">content diversity</h2>
                                <div class="reason__description">Thanks to the variety in the genre of books in this website, you are free to choose the book you love without worrying about the lack of books.</div>
                            </div>
                        </div>
                        <div class="section-reason__item">
                            <div class="reason__img">
                                <img src="./assets/img/package.png" alt="" class="width-100">
                            </div>
                            <div class="reason__content">
                                <h2 class="reason__header" style ="text-transform: capitalize;">Careful packaging</h2>
                                <div class="reason__description">We dedicate ourselves to careful packaging to keep your books fresh and perfect as they get from the store to your home.</div>
                            </div>
                        </div>
                        <div class="section-reason__item">
                            <div class="reason__img">
                                <img src="./assets/img/planet-earth.png" alt="" class="width-100">
                            </div>
                            <div class="reason__content">
                                <h2 class="reason__header" style ="text-transform: capitalize;">Environment friendly processes</h2>
                                <div class="reason__description">The products are packed not only carefully but also using environmentally friendly materials, you can reuse the materials we use for packaging.</div>
                            </div>
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