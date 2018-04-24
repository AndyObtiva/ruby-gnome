[![Build Status](https://travis-ci.org/ruby-gnome2/ruby-gnome2.svg?branch=master)](https://travis-ci.org/ruby-gnome2/ruby-gnome2)
[![Gem Version](https://badge.fury.io/rb/gtk3.svg)](https://badge.fury.io/rb/gtk3)
# Ruby-GNOME2
![Ruby-GNOME2 Logo](https://avatars1.githubusercontent.com/u/416159?v=3&s=200)
Ruby bindings for GNOME


This is a set of bindings for the GNOME 2.x and 3.x libraries to use
from Ruby 2.1, 2.2, 2.3, 2.4 and 2.5.

## Installation

### Install the current releases.

The gems of the Ruby-GNOME2 projects can be easily installed with the `gem` command.
For example in order to install the gtk3 gem and its dependencies:

    gem install gtk3

### Install from GitHub master branch

You can also install these gems from GitHub master branch.

    % git clone https://github.com/ruby-gnome2/ruby-gnome2.git
    % cd ruby-gnome2
    % bundle install
    % bundle exec rake gem:build
    % bundle exec rake gem:install


## Release packages

### ruby-gtk2

* Ruby/GLib2:           GLib 2.12.x or later
* Ruby/ATK:             ATK 1.12.x or later
* Ruby/Pango:           Pango 1.14.x or later
* Ruby/GdkPixbuf2:      GTK+ 2.0.x or later
* Ruby/GTK2:            GTK+ 2.10.x or later
* Ruby/GObjectIntrospection: GObject Introspection 1.32.1 or later

### ruby-gtk3

* Ruby/GLib2:           GLib 2.12.x or later
* Ruby/GIO2:            GIO 2.16.x or later
* Ruby/ATK:             ATK 1.12.x or later
* Ruby/Pango:           Pango 1.14.x or later
* Ruby/GdkPixbuf2:      GTK+ 2.0.x or later
* Ruby/GObjectIntrospection: GObject Introspection 1.32.1 or later
* Ruby/CairoGObject:    cairo-gobject 1.12.10 or later
* Ruby/GDK3:            GTK+ 3.4.2 or later
* Ruby/GTK3:            GTK+ 3.4.2 or later

### ruby-gnome2-all

* ruby-gtk2 + ruby-gtk3
* Ruby/RSVG:            librsvg 2.8.0 or later
* Ruby/Poppler:         poppler-glib 0.8.0 or later
* Ruby/VTE:             VTE 0.12.1 or later
* Ruby/VTE3:            VTE 0.37.0 or later
* Ruby/GStreamer:       GStreamer 1.0.0 or later
* Ruby/GtkSourceView2:  GtkSourceView 2.0.0 or later
* Ruby/Clutter:         Clutter 1.12.0 or later
* Ruby/ClutterGTK:      Clutter-GTK 1.2.0 or later
* Ruby/ClutterGStreamer:Clutter-GStreamer 2.0.0 or later
* Ruby/GtkSourceView3:  GtkSourceView 3.4.2 or later
* Ruby/WebKitGTK:       WebKitGTK+ 1.8.1 or later (for GTK+ 3)
* Ruby/WebKitGTK2:      WebKitGTK+ 1.8.1 or later (for GTK+ 2)
* Ruby/WebKit2GTK:      WebKitGTK+ 2.0.0 or later (for GTK+ 3)

### Experimental / Incomplete:

* Ruby/GSF:             GSF 1.14.0 or later
* Ruby/GOffice:         GOffice 0.10 or later
* Ruby/Gnumeric:        Gnumeric 1.12 or later

## Advanced Installation

    % ruby extconf.rb
    % make
    % sudo make install

To compile and install a particular sub-binding, you can add arguments:

    % ruby extconf.rb [subdir]...
    e.g.) ruby extconf.rb glib2 pango atk gdk_pixbuf2 gtk2

Or you can compile each sub-binding:

    % cd <each sub-directory>
    % ruby extconf.rb
    % make
    % sudo make install

### extconf.rb options

* `--ruby`
  * ruby directory

* `--topsrcdir`
  * top source directory

* `--topdir`
  * top directory

* `--strict`
  * if some libraries fail to compile/install, "make"
    command returns 1(exit 1)

## Bugs

Please report bugs either in our bug tracker

* [https://github.com/ruby-gnome2/ruby-gnome2/issues](https://github.com/ruby-gnome2/ruby-gnome2/issues) (current)

or on the ruby-gnome2-devel-en / ruby-gnome2-devel-ja mailing list

* [http://sourceforge.net/mail/?group_id=53614](http://sourceforge.net/mail/?group_id=53614)

## Copying

Copyright (c) 2002-2018 Ruby-GNOME2 Project Team

This program is free software.
You can distribute/modify this program under the terms of
the GNU LESSER GENERAL PUBLIC LICENSE Version 2.1.

### Exceptions

Some GTK+ 3 examples are licensed under GNU Free Documentation License
1.3 or any later version later; with no Invariant Sections, no
Front-Cover Texts, and no Back-Cover Texts.

Because they are based on scripts in
[PyGObject-Tutorial](https://github.com/sebp/PyGObject-Tutorial).
[PyGObject-Tutorial is licensed under GFDL 1.3](https://github.com/sebp/PyGObject-Tutorial/blob/master/COPYING).

See gtk3/examples/ directory for details.

## Project Website

[http://ruby-gnome2.sourceforge.jp/](http://ruby-gnome2.sourceforge.jp/)
