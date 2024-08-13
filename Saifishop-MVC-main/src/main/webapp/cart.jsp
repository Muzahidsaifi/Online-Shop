<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@include file="header.jsp" %>

    <!-- page header -->
    <section id="page-header" class="about-header">
        <h2>#let's_talk</h2>
        <p>LEAVE A MESSAGE, We love to hear from you.</p>
    </section>

    <!-- cart -->
    <section id="cart" class="section-p1">
        <table width="100%">
            <thead>
                <tr>
                    <td>Remove</td>
                    <td>Images</td>
                    <td>Products</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td>Subtotal</td>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td><a href=""></a><i class="fa-solid fa-circle-xmark"></i></a></td>
                    <td><img src="images/f1.jpg" alt=""></td>
                    <td>Cartoon Astronaut T-Shirt</td>
                    <td>$78</td>
                    <td><input type="number" value="1"></td>
                    <td>$78</td>
                </tr>
                <tr>
                    <td><a href=""></a><i class="fa-solid fa-circle-xmark"></i></a></td>
                    <td><img src="images/f2.jpg" alt=""></td>
                    <td>Men Regular Fit Beach Wear Shirt</td>
                    <td>$54</td>
                    <td><input type="number" value="1"></td>
                    <td>$54</td>
                </tr>
                <tr>
                    <td><a href=""></a><i class="fa-solid fa-circle-xmark"></i></a></td>
                    <td><img src="images/f3.jpg" alt=""></td>
                    <td>Men Slim Fit Floral Print Casual Shirt</td>
                    <td>$98</td>
                    <td><input type="number" value="1"></td>
                    <td>$98</td>
                </tr>
            </tbody>
        </table>
    </section>

    <!-- CART ADD -->
    <section id="cart-add" class="section-p1">
      <div id="coupon">
        <h3>Apply Coupon</h3>
        <div>
            <input type="text" placeholder="Enter Your Coupon">
            <button class="normal">Apply</button>
        </div>
      </div>
     

      <div id="subtotal">
        <h3>Cart Totals</h3>
        <table>
            <tr>
                <td>Cart Subtotal</td>
                <td>$ 335</td>
            </tr>
            <tr>
                <td>Shipping</td>
                <td>Free</td>
            </tr>
            <tr>
                <td><strong>Total</strong></td>
                <td><strong>$ 335 </strong></td>
            </tr>
        </table>
        <button class="normal">Proceed to checkout</button>
      </div>
    </section>

 <%@include file="footer.jsp"%>