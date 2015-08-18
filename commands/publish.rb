usage       'publish'
summary     'publish to github'
description 'Publish site to github pages'

flag :p, :'pretend', 'pretend to publish'

module Nanoc::CLI::Commands
  class Publish < ::Nanoc::CLI::CommandRunner

    def run
      def cmd command
        m = method(options[:pretend] ? :puts : :system)
        m.call(command) or raise "command failed: '#{command}'"
      end
      
      # push changes to github
      cmd "git push origin source"
      
      # regenerate kindle clippings
      cmd "nanoc clippings"
      
      # regenerate output
      cmd "nanoc compile"
      
      # deploy files
      cmd "cd output && git add . && git commit -m 'Update' && git push origin master && cd .."
    end
  end
end

runner Nanoc::CLI::Commands::Publish

