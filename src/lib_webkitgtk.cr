require "gobject/gtk"

@[Link("webkitgtk-3.0")]
lib LibWebKitGTK
  struct WebKitWebViewBasePrivate
    _data : UInt8[0]
  end

  struct WebKitWebViewPrivate
    _data : UInt8[0]
  end

  struct WebKitWebContext
    _data : UInt8[0]
  end

  struct WebKitWebViewGroup
    _data : UInt8[0]
  end

  struct WebKitURIRequest
    _data : UInt8[0]
  end

  struct WebKitBackForwardList
    _data : UInt8[0]
  end
  
  struct WebKitBackForwardListItem
    _data : UInt8[0]
  end

  struct WebKitSettings
    _data : UInt8[0]
  end
  struct WebKitWindowProperties
    _data : UInt8[0]
  end
  struct WebKitFindController
    _data : UInt8[0]
  end

  struct WebKitJavascriptResult
    _data : UInt8[0]
  end

  struct WebKitWebResource
    _data : UInt8[0]
  end

  struct WebKitWebInspector
    _data : UInt8[0]
  end

  struct WebKitDownloadPrivate
    _data : UInt8[0]
  end

  struct WebKitDownload
    priv : WebKitDownloadPrivate*
  end

  enum WebKitSaveMode
    WEBKIT_SAVE_MODE_MHTML
  end

  enum WebKitViewMode
    WEBKIT_VIEW_MODE_WEB
    WEBKIT_VIEW_MODE_SOURCE
  end

  enum WebKitSnapshotRegion
    WEBKIT_SNAPSHOT_REGION_VISIBLE = 0
    WEBKIT_SNAPSHOT_REGION_FULL_DOCUMENT
  end

  enum WebKitSnapshotOptions
    WEBKIT_SNAPSHOT_OPTIONS_NONE = 0
    WEBKIT_SNAPSHOT_OPTIONS_INCLUDE_SELECTION_HIGHLIGHTING = 1 << 0
  end

  type JSGlobalContextRef = UInt8*;  

  struct WebKitWebViewBase
    parentInstance : LibGtk::Container
    priv : WebKitWebViewBasePrivate*
  end

  struct WebKitWebView
    parent : WebKitWebViewBase
    priv : WebKitWebViewPrivate*
  end

  #############
  #   Alias   #
  #############
  alias WebView = WebKitWebView

  #################
  #   Web View    #
  #################
  fun webkit_web_view_new : LibGtk::Widget*
  fun webkit_web_view_load_uri(view : WebKitWebView*, uri : UInt8*) : Void

  fun webkit_web_view_get_type() : GObject::Type
  fun webkit_web_view_new_with_context(context : WebKitWebContext*) : LibGtk::Widget*
  fun webkit_web_view_new_with_related_view(web_view : WebKitWebView*) : LibGtk::Widget*
  fun webkit_web_view_new_with_group(group : WebKitWebViewGroup*) : LibGtk::Widget*
  fun webkit_web_view_get_context(web_view : WebKitWebView*) : WebKitWebContext *
  fun webkit_web_view_get_group(web_view : WebKitWebView*) : WebKitWebViewGroup *
  fun webkit_web_view_load_html(web_view : WebKitWebView*, content : UInt8*, base_uri : UInt8*) : Void
  fun webkit_web_view_load_alternate_html(web_view : WebKitWebView*, content : UInt8*, content_uri : UInt8*, base_uri : UInt8*) : Void
  fun webkit_web_view_load_plain_text(web_view : WebKitWebView*, plain_text : UInt8*) : Void
  fun webkit_web_view_load_request(web_view : WebKitWebView*, request : WebKitURIRequest*) : Void
  fun webkit_web_view_stop_loading(web_view : WebKitWebView*) : Void
  fun webkit_web_view_is_loading(web_view : WebKitWebView*) : Bool
  fun webkit_web_view_get_page_id(web_view : WebKitWebView*) : UInt64
  fun webkit_web_view_get_title(web_view : WebKitWebView*) : UInt8**
  fun webkit_web_view_reload(web_view : WebKitWebView*) : Void
  fun webkit_web_view_reload_bypass_cache(web_view : WebKitWebView*) : Void
  fun webkit_web_view_get_estimated_load_progress(web_view : WebKitWebView*) : Float32
  fun webkit_web_view_go_back(web_view : WebKitWebView*) : Void
  fun webkit_web_view_can_go_back(web_view : WebKitWebView*) : Bool
  fun webkit_web_view_go_forward(web_view : WebKitWebView*) : Void
  fun webkit_web_view_can_go_forward(web_view : WebKitWebView*) : Bool
  fun webkit_web_view_get_back_forward_list(web_view : WebKitWebView*) : WebKitBackForwardList *
  fun webkit_web_view_go_to_back_forward_list_item(web_view : WebKitWebView*, list_item : WebKitBackForwardListItem*) : Void
  fun webkit_web_view_get_uri(web_view : WebKitWebView*) : UInt8**
  fun webkit_web_view_get_favicon(web_view : WebKitWebView*) : UInt8**
  fun webkit_web_view_get_custom_charset(web_view : WebKitWebView*) : UInt8**
  fun webkit_web_view_set_custom_charset(web_view : WebKitWebView*, charset : UInt8*) : Void
  fun webkit_web_view_set_settings(web_view : WebKitWebView*, settings : WebKitSettings*) : Void
  fun webkit_web_view_get_settings (web_view : WebKitWebView*) : WebKitSettings *
  fun webkit_web_view_get_window_properties(web_view : WebKitWebView*) : WebKitWindowProperties *
  fun webkit_web_view_set_zoom_level(web_view : WebKitWebView*, zoom_level : Float32) : Void
  fun webkit_web_view_get_zoom_level(web_view : WebKitWebView*) : Float32
  fun webkit_web_view_can_execute_editing_command(web_view : WebKitWebView*, command : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : UInt8*) : Void
  fun webkit_web_view_can_execute_editing_command_finish(web_view : WebKitWebView*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun webkit_web_view_execute_editing_command(web_view : WebKitWebView*, command : UInt8*) : Void
  fun webkit_web_view_get_find_controller(web_view : WebKitWebView*) : WebKitFindController *
  fun webkit_web_view_get_javascript_global_context(web_view : WebKitWebView*) : JSGlobalContextRef
  fun webkit_web_view_run_javascript(web_view : WebKitWebView*, script : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : UInt8*) : Void
  fun webkit_web_view_run_javascript_finish(web_view : WebKitWebView*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : WebKitJavascriptResult *
  fun webkit_web_view_run_javascript_from_gresource(web_view : WebKitWebView*, resource : UInt8*, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : UInt8*) : Void
  fun webkit_web_view_run_javascript_from_gresource_finish(web_view : WebKitWebView*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : WebKitJavascriptResult *
  fun webkit_web_view_get_main_resource(web_view : WebKitWebView*) : WebKitWebResource *
  fun webkit_web_view_get_inspector(web_view : WebKitWebView*) : WebKitWebInspector *
  fun webkit_web_view_can_show_mime_type(web_view : WebKitWebView*, mime_type : UInt8*) : Bool
  fun webkit_web_view_save(web_view : WebKitWebView*, save_mode : WebKitSaveMode, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : UInt8*) : Void
  fun webkit_web_view_save_finish(web_view : WebKitWebView*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : LibGio::InputStream *
  fun webkit_web_view_save_to_file(web_view : WebKitWebView*, file : LibGio::File*, save_mode : WebKitSaveMode, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : UInt8*) : Void
  fun webkit_web_view_save_to_file_finish(web_view : WebKitWebView*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : Bool
  fun webkit_web_view_download_uri(web_view : WebKitWebView*, uri : UInt8*) : WebKitDownload *
  fun webkit_web_view_set_view_mode(web_view : WebKitWebView*, view_mode : WebKitViewMode) : Void
  fun webkit_web_view_get_view_mode(web_view : WebKitWebView*) : WebKitViewMode
  fun webkit_web_view_get_tls_info(web_view : WebKitWebView*, certificate : LibGio::TlsCertificate**, errors : LibGio::TlsCertificateFlags*) : Bool
  fun webkit_web_view_get_snapshot(web_view : WebKitWebView*, region : WebKitSnapshotRegion, options : WebKitSnapshotOptions, cancellable : LibGio::Cancellable*, callback : LibGio::AsyncReadyCallback, user_data : UInt8*) : Void
  fun webkit_web_view_get_snapshot_finish(web_view : WebKitWebView*, result : LibGio::AsyncResult*, error : LibGLib::Error**) : UInt8*


end
