require "../src/*"

require "gobject/gtk"

window = Gtk::Window.new
window.title = "Hello World!"
window.connect "destroy", &->Gtk.main_quit
window.border_width = 10
window.resize(800,600)

view = WebKitGTK::WebKitWebView.new
view.load_uri "http://www.google.fr"

window.add(view)

window.show_all