# Copyright (C) 2014  Ruby-GNOME2 Project Team
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

module Gdk
  class Event
    unless const_defined?(:PROPAGATE)
      PROPAGATE = false
    end
    unless const_defined?(:STOP)
      STOP = true
    end

    def send_event?
      not send_event.zero?
    end
  end

  class EventFocus
    alias_method :in_raw=, :in=
    def in=(value)
      if value == true
        value = 1
      elsif !value
        vaule = 0
      end
      self.in_raw = value
    end

    alias_method :in_raw, :in
    remove_method :in
    def in?
      not in_raw.zero?
    end
  end
end
