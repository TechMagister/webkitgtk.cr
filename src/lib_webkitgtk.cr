require "gobject/gtk"

@[Link("webkitgtk-3.0")]
lib LibWebKitGTK

  struct WebKitWebViewBasePrivate; _data : UInt8[0] end
  struct WebKitWebViewPrivate; _data : UInt8[0] end

  struct WebKitWebViewBase
    parentInstance : LibGtk::Container
    priv : WebKitWebViewBasePrivate* 
  end

  struct WebKitWebView
    parent : WebKitWebViewBase
    priv : WebKitWebViewPrivate*
  end

  alias WebView = WebKitWebView

  fun webkit_web_view_new() : LibGtk::Widget*

  fun webkit_web_view_load_uri(view : WebKitWebView*, uri : UInt8*) : Void
  
end