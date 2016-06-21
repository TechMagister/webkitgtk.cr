# webkitgtk

WebKitGtk binding for the Crystal language.

** Not for production use **

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  webkitgtk:
    github: TechMagister/webkitgtk.cr
```

## Usage

See samples folder.

```crystal
require "webkitgtk/webkitgtk"

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
```


## Contributing

1. Fork it ( https://github.com/TechMagister/webkitgtk.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [TechMagister](https://github.com/TechMagister)  - creator, maintainer
