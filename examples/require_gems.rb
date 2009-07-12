framework 'Cocoa'

require 'rubygems'
require 'pp'

#ENV['GEM_HOME'] = ""
#ENV['GEM_HOME'] = "/Users/Tommy/Library/Application Support/Developer/Shared/Xcode/Project Templates/Application/gems"
# ENV['GEM_HOME'] = "/Users/Tommy/Library/Application Support/Developer/Shared/Xcode/Project Templates/Application/MacRuby Application Tommy/third-party/gems"
#root_for_ruby_files = "/Users/Tommy/Library/Application Support/Developer/Shared/Xcode/Project Templates/Application/MacRuby Application Tommy"
#new_paths = [root_for_ruby_files + "/third-party/gems"].join(':')
#Gem.set_paths(new_paths)

#pp Dir.pwd
pp Gem.path

#require 'cheat'
#require 'log4r'


puts "Requiering 'log4r' from src"
$LOAD_PATH << "/Users/Tommy/Library/Application Support/Developer/Shared/Xcode/Project Templates/Application/MacRuby Application Tommy/third-party/gems/gems/log4r-1.0.5/src/"
require 'log4r'

puts "Requiering 'cheat' from lib"
$LOAD_PATH << "/Users/Tommy/Library/Application Support/Developer/Shared/Xcode/Project Templates/Application/MacRuby Application Tommy/third-party/gems/gems/cheat-1.2.1/lib"
require 'cheat'

# /Library/Frameworks/MacRuby.framework/Versions/0.4/usr/lib/ruby/Gems/1.9.1