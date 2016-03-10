# Copyright (C) 2015-2016  Ruby-GNOME2 Project Team
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

class TestMatchInfo < Test::Unit::TestCase
  def test_string
    regex = GLib::Regex.new("[A-Z]+")
    match_info = regex.match("abc def")
    assert_equal("abc def", match_info.string)
  end

  def test_regex
    regex = GLib::Regex.new("[A-Z]+")
    match_info = regex.match("abc def")
    assert_equal("[A-Z]+", match_info.regex.pattern)
  end

  def test_partial_match
    flags = GLib::RegexMatchFlags::PARTIAL_SOFT
    regex = GLib::Regex.new("jan")
    match_info = regex.match_all("ja", :match_options => flags)
    assert do
      !match_info.matches?
    end
    assert do
      match_info.partial_match?
    end
  end
end
