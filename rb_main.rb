#
# rb_main.rb
# ÇPROJECTNAMEÈ
#
# Created by ÇFULLUSERNAMEÈ on ÇDATEÈ.
# Copyright ÇORGANIZATIONNAMEÈ ÇYEARÈ. All rights reserved.
#
# IMPORTANT Due to a bug in MacRubys gem-handling, all gems must be installed in the third-party directory.
# Gems installed on standard locations will not be recognized.

# Loading the Cocoa framework. If you need to load more frameworks, you can
# do that here too.
framework 'Cocoa'

# Require the helper function that loads all Rubys project files
require(File.join(File.dirname(__FILE__), 'require_application_files.rb'))


NSLog "--- rb_main.rb ---"
NSLog "Ruby version: #{RUBY_VERSION}. MacRuby version: #{MACRUBY_VERSION}." # Note: If this is not runned
      # with MacRuby an error will be raised here. 

# Loading all Ruby project files. I've made my own version that is better suited for editing with
# other editors than Xcode.
# IMPORTANT Due to a bug in MacRubys gem-handling, all gems must be installed in the third-party directory.
# Gems installed on standard locations will not be recognized. (However, note that mechs for application
# isolation (see Fenestra) has not yet been implemented.)
# The paths to each gem must be added manually
begin
  context = __FILE__
  #context = OSX::NSBundle.mainBundle.resourcePath.fileSystemRepresentation # The resource dir of the app. (This
        # is always (?) the dir where this file (rb_main.rb) is.)
  PROJECT_ROOT = File.dirname(context)
  APP_ROOT = File.join(PROJECT_ROOT, 'app') 
  Require_application_files::require_third_party_gems_and_lib(PROJECT_ROOT)
  Require_application_files::add_to_load_path(APP_ROOT)
  Require_application_files::require_standardutilities
  Require_application_files::require_all(APP_ROOT)
end 

=begin  Original version
  # Loading all the Ruby project files.
  dir_path = NSBundle.mainBundle.resourcePath.fileSystemRepresentation
  Dir.entries(dir_path).each do |path|
    if path != File.basename(__FILE__) and path[-3..-1] == '.rb'
      require(path)
    end
  end
=end

# Starting the Cocoa main loop.
NSApplicationMain(0, nil)
