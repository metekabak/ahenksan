# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_current_theme

  def set_current_theme
    default_css
    default_js
  end

  def default_css
    @current_theme_stylesheets = '
      <link rel="icon" href="/themes/ahenksan/assets/img/favicon.png" type="image/jpg" />
      <link href="/themes/ahenksan/assets/css/bootstrap.min.css" rel="stylesheet">
      <link href="/themes/ahenksan/assets/css/font-awesome.min.css" rel="stylesheet">
      <link href="/themes/ahenksan/assets/css/line-awesome.min.css" rel="stylesheet">
      <link href="/themes/ahenksan/assets/css/animate.css" rel="stylesheet">
      <link href="/themes/ahenksan/assets/css/barfiller.css" rel="stylesheet">
      <link href="/themes/ahenksan/assets/css/flaticon.css" rel="stylesheet">
      <link href="/themes/ahenksan/assets/css/owl.carousel.css" rel="stylesheet">
      <link href="/themes/ahenksan/assets/css/style_new.css" rel="stylesheet">
      <link href="/themes/ahenksan/assets/css/responsive.css" rel="stylesheet">
    '
  end

  def default_js
    @current_theme_javascripts = '
      <script src="/themes/ahenksan/assets/js/jquery-1.12.4.min.js"></script>
      <script src="/themes/ahenksan/assets/js/popper.min.js"></script>
      <script src="/themes/ahenksan/assets/js/bootstrap.min.js"></script>
      <script src="/themes/ahenksan/assets/js/wow.min.js"></script>
      <script src="/themes/ahenksan/assets/js/jquery.waypoints.min.js"></script>
      <script src="/themes/ahenksan/assets/js/jquery.counterup.min.js"></script>
      <script src="/themes/ahenksan/assets/js/owl.carousel.min.js"></script>
      <script src="/themes/ahenksan/assets/js/isotope-3.0.6-min.js"></script>
      <script src="/themes/ahenksan/assets/js/magnific-popup.min.js"></script>
      <script src="/themes/ahenksan/assets/js/jquery.sticky.js"></script>
      <script src="/themes/ahenksan/assets/js/jquery.barfiller.js"></script>
      <script src="/themes/ahenksan/assets/js/main.js"></script>
    '
  end
end
