#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# File: org_parser.rb
#
# Copyright rejuvyesh <mail@rejuvyesh.com>, 2014
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

require 'org-ruby'

class OrgFilter < Nanoc::Filter
  identifier :org
  
  def run(content, params = {})
    Orgmode::Parser.new(content).to_html
  end
end
