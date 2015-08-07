#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# File: default.rb
#
# Copyright rejuvyesh <mail@rejuvyesh.com>, 2014
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

include Nanoc::Helpers::Rendering
include Nanoc::Helpers::Text
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Tagging
include Nanoc::Helpers::LinkTo

def route_with_new_extension ext
  item.identifier.without_ext + '.' + ext
end

def get_post_teaser(post)
  content = post.compiled_content
  if content =~ /\s<!-- more -->\s/
    content = content.partition('<!-- more -->').first
    content = content + "<div class='read-more'><a href='#{post.path}'>Continue reading &rsaquo;</a></div>"
  end
end
