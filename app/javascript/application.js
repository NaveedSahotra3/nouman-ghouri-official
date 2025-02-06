// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import Rails from "rails-ujs"
import "./jquery";
import "./plugins";
import "./init";
import "./ie8";

Rails.start();

// Ensure jQuery is globally available
window.$ = window.jQuery = import("jquery");



// Conditionally load IE8 script
if (navigator.userAgent.match(/MSIE [6789]/)) {
  import("ie8");
}