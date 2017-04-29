using WebKit;

namespace Gtk
{

    public class Form : Window
    {
        WebView webkit;

        public Form () {
            // Default Gtk.Window:
            this.title = "My Gtk.Window";
            this.window_position = Gtk.WindowPosition.CENTER;
            this.set_border_width(0);
            this.destroy.connect(Gtk.main_quit);

        }

        public void load(string game)
        {
            webkit = new WebView();
            string path = Environment.get_current_dir();
            webkit.load_uri("file://" + path + "/games/" + game + ".html");
            this.add(webkit);
        }
    }
}
