#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# File: default.rb
#
# Copyright rejuvyesh <mail@rejuvyesh.com>, 2014
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

include Nanoc::Helpers::Rendering

def currently_reading
  `curl "https://www.goodreads.com/review/grid_widget/7482598.Jayesh%20's%20bookshelf:%20currently-reading?cover_size=medium&hide_link=true&hide_title=true&num_books=6&order=d&shelf=currently-reading&sort=date_updated&widget_id=1439819475"
`.chomp
end
