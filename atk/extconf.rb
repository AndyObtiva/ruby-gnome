=begin
extconf.rb for Ruby/Atk extention library
=end

$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '/../glib/src/lib')
require 'mkmf-gnome2'

PKGConfig.have_package('atk') or exit 1
check_win32

top = File.expand_path(File.dirname(__FILE__) + '/..') # XXX
$CFLAGS += " " + ['glib/src'].map{|d|
  "-I" + File.join(top, d)
}.join(" ")

if /cygwin|mingw/ =~ RUBY_PLATFORM
  top = "../.."
  [
    ["glib/src", "ruby-glib2"],
  ].each{|d,l|
    $libs << " -l#{l}"
    $LDFLAGS << " -L#{top}/#{d}"
  }
end
set_output_lib('libruby-atk.a')

have_func('atk_action_get_localized_name')
have_func('atk_hyperlink_is_inline')
have_func('atk_object_add_relationship')
have_func('atk_object_remove_relationship')
have_func('atk_component_get_layer')
have_func('atk_component_mdi_zorder')
have_func('atk_hyperlink_is_selected_link')
have_func('atk_text_get_bounded_ranges')
have_func('atk_role_get_localized_name')

$distcleanfiles << "rbatkinits.c" if $distcleanfiles

begin
  srcdir = File.dirname($0) == "." ? "." :
    File.expand_path(File.dirname($0) + "/src")

  Dir.mkdir('src') unless File.exist? 'src'
  Dir.chdir "src"

  File.delete("rbatkinits.c") if FileTest.exist?("rbatkinits.c")
  system("ruby #{srcdir}/makeinits.rb #{srcdir}/*.c > rbatkinits.c")
    or raise "failed to make ATK inits"

  $objs = []
  Dir.glob("#{srcdir}/*.c") do |f|
    f = File.basename(f)
    f.sub!(/.c$/, ".o")
    add_obj(f)
  end
  add_obj("rbatkinits.o")

  $defs << "-DRUBY_ATK_COMPILATION"
  create_makefile("atk", srcdir)
ensure
  Dir.chdir('..')
end

create_top_makefile

