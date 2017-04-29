
using Gtk;

class Main
{

    public static void inicialization(string[ ] args) {

        Gtk.init(ref args);

        Form App = new Form();
        string game = "null";

        if (args.length > 1) {
            game = args[1];
        }

        App.title = game;
        App.set_default_size(991, 780);
        App.window_position = Gtk.WindowPosition.CENTER;
        App.maximize();   
        App.load(game);
        App.show_all();

        Gtk.main();
    }

    public static void main(string[] args) {
        inicialization(args);
    }
}
