require "../lib_webkitgtk"

require "gobject/gtk"

module WebKitGTK
  class WebView < Gtk::Widget
    @webkit_webview : LibWebKitGTK::WebKitWebView*?

    def initialize(@webkit_webview : LibWebKitGTK::WebKitWebView*)
    end

    def load_uri(uri)
      __return_value = LibWebKitGTK.webkit_web_view_load_uri(to_unsafe.as(LibWebKitGTK::WebKitWebView*), uri)
      __return_value
    end

    def to_unsafe
      @webkit_webview.not_nil!
    end

    def self.new : self
      __return_value = LibWebKitGTK.webkit_web_view_new
      cast Gtk::Widget.new(__return_value)
    end
  end
end
