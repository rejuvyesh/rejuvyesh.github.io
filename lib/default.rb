#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# File: default.rb
#
# Copyright rejuvyesh <mail@rejuvyesh.com>, 2014
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

def route_with_new_extension ext
  item.identifier.without_ext + '.' + ext
end
