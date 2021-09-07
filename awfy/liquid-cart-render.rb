# frozen_string_literal: true
require_relative 'som'

$LOAD_PATH.unshift "#{__dir__}/../liquid"
require 'performance/shopify/liquid'
require 'performance/shopify/database'


class LiquidCartRender < Benchmark

  def initialize
    @random = Random.new
    @cart_template = Liquid::Template.new.parse(File.read("#{__dir__}/../liquid/performance/tests/dropify/cart.liquid"))
    @theme_template = Liquid::Template.new.parse(File.read("#{__dir__}/../liquid/performance/tests/dropify/theme.liquid"))

    @assigns = Database.tables
    @assigns['page_title'] = 'Page title'
  end

  def benchmark
    @assigns['x'] = @random.next
    @assigns['content_for_layout'] = @cart_template.render!(@assigns)
    @theme_template.render!(@assigns)
  end

  def verify_result(result)
    expected = <<RESULT
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title> - Page title</title>

  <link href="/global/textile.css" rel="stylesheet" type="text/css"  media="all"  />
  <link href="/global/lightbox/v204/lightbox.css" rel="stylesheet" type="text/css"  media="all"  />

  <script src="/global/prototype/1.6/prototype.js" type="text/javascript"></script>
  <script src="/global/scriptaculous/1.8.2/scriptaculous.js" type="text/javascript"></script>
  <script src="/global/lightbox/v204/lightbox.js" type="text/javascript"></script>
  <script src="/shopify/option_selection.js" type="text/javascript"></script>

  <link href="/files/1/[shop_id]/[shop_id]/assets/layout.css" rel="stylesheet" type="text/css"  media="all"  />
  <script src="/files/1/[shop_id]/[shop_id]/assets/shop.js" type="text/javascript"></script>

  
</head>

<body id="page-">

  <p class="hide"><a href="#rightsiders">Skip to navigation.</a></p>
    <!-- mini cart -->
        
      <div id="minicart" style="display:none;"><div id="minicart-inner">
      <div id="minicart-items">
      <h2>There are 2 items in <a href="/cart" title="View your cart">your cart</a>!</h2><h4 style="font-size: 16px; margin: 0 0 10px 0; padding: 0;">Your subtotal is $ 796.00.</h4>
        
        <div class="thumb">
          <div class="prodimage"><a href="/products/comic-orange" onMouseover="tooltip('2 x Comic ~ Orange (159cm)', 200)"; onMouseout="hidetooltip()"><img src="/files/shops/random_number/products/technine3_thumb.jpg" /></a></div>
        </div>
        
        </div>
       <br style="clear:both;" />
      </div></div>
        

  <div id="container">
    <div id="header">
      <!-- Begin Header -->
        <h1 id="logo"><a href="/" title="Go Home"></a></h1>
      <div id="cartlinks">
        
          <h2 id="cartcount"><a href="/cart" onMouseover="tooltip('There are 2 items in your cart!', 200)"; onMouseout="hidetooltip()">2 things!</a></h2>
      <a href="/cart" id="minicartswitch" onclick="superSwitch(this, 'minicart', 'Close Mini Cart'); return false;" id="cartswitch">View Mini Cart ($ 796.00)</a>
        
      </div>
      <!-- End Header -->

    </div>
  <hr />
<div id="main">

    <div id="content">
    <div id="innercontent">
      <script type="text/javascript">
  function remove_item(id) {
      document.getElementById('updates_'+id).value = 0;
      document.getElementById('cartform').submit();
  }
</script>

<div>

  
  <form action="/cart" method="post" id="cartform">

  <div id="cart">

  <h3>You have 2 products in here!</h3>

    <ul id="line-items">
      
      <li id="item-2" class="clearfix">
        <div class="thumb">
          <div class="prodimage">
          <a href="/products/comic-orange" title="View Comic ~ Orange Page"><img src="/files/shops/random_number/products/technine3_thumb.jpg" alt="Comic ~ Orange" /></a>
        </div></div>
        <h3 style="padding-right: 150px">
      <a href="/products/comic-orange" title="View Comic ~ Orange Page">
        Comic ~ Orange
        
           (159cm)
        
      </a>
    </h3>
        <small class="itemcost">Costs $ 199.00 each, <span class="money">$ 398.00</span> total.</small>
        <p class="right">
          <label for="updates">How many? </label>
          <input type="text" size="4" name="updates[5]" id="updates_5" value="2" onfocus="this.select();"/><br />
          <a href="#" onclick="remove_item(5); return false;" class="remove"><img style="padding:15px 0 0 0;margin:0;" src="/files/1/[shop_id]/[shop_id]/assets/delete.gif" /></a>
        </p>
      </li>
      
      <li id="total">
        <input type="image" id="update-cart" name="update" value="Update My Cart" src="/files/1/[shop_id]/[shop_id]/assets/update.gif" />
        Subtotal:
        <span class="money">$ 796.00 USD</span>
      </li>
    </ul>

  </div>

    <div class="info">
    <input type="image" value="Checkout!" name="checkout" src="/files/1/[shop_id]/[shop_id]/assets/checkout.gif" />
    </div>

    

  </form>

  

</div>

      </div>
    </div>

  <hr />
    <div id="rightsiders">

      <ul class="rightlinks">
        
      </ul>

        

      <ul class="rightlinks">
        
      </ul>

    </div>

  <hr /><br style="clear:both;" />

    <div id="footer">
      <div class="footerinner">
      All prices are in .
      Powered by <a href="http://www.shopify.com" title="Shopify, Hosted E-Commerce">Shopify</a>.
    </div>
    </div>

  </div>
</div>

<div id="tooltip"></div>
<img id="pointer" src="/files/1/[shop_id]/[shop_id]/assets/arrow2.gif" />

</body>
</html>

RESULT

    result == expected
  end
end
