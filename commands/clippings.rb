usage       'clippings'
summary     'create  clippings'
description "Creates clippings page from Kindle 'My Clippings.txt'"

require 'shellwords'

module Nanoc::CLI::Commands
  class Clippings < ::Nanoc::CLI::CommandRunner

    def run
      clipping = '/home/rejuvyesh/books/reading_list/My Clippings.txt'
      out = 'content/clippings.html'
      system "whoarder '#{clipping}' '#{out}'"
    end
    
  end
  
end

runner Nanoc::CLI::Commands::Clippings
