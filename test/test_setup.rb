require 'rubygems'

OSX::NSLog '---------- test started ----------'

# Some paths, etc.
ME = File.expand_path(__FILE__)
TEST_ROOT = File.dirname(ME)
PROJECT_ROOT = File.dirname(TEST_ROOT) # (Note: This way to
      # find root is not safe inside the application, but here in test it's ok)
require File.join(PROJECT_ROOT, 'require_application_files.rb')  # The module that handles application file loading
APP_ROOT = File.join(PROJECT_ROOT, 'app')
Require_application_files::require_third_party_gems_and_lib(PROJECT_ROOT)
Require_application_files::add_to_load_path(APP_ROOT)
Require_application_files::require_standardutilities
Require_application_files::require_all(APP_ROOT)

# This loads the application files the same way as it's done
      # when rb_main loads them.

=begin
app_root_if_app_files_in_application_dir = File.join(File.dirname(Test_root), 'application')
if File.exist?(app_root_if_app_files_in_application_dir)
  App_root = app_root_if_app_files_in_application_dir 
else
  # Since no application directory exist, we assumes that the files are in the root dir (and any subdir that has a __init__)
  App_root = File.dirname(Test_root)
end
=end

#Standardutilities_root = File.join(App_root, 'standardutilities')


# Set up paths
#   For stuff in sandbox
SANDBOX = File.join(TEST_ROOT, 'sandbox')
new_gem_path = Gem.path + [SANDBOX]
Gem.use_paths(nil, new_gem_path)
#   For stuff in sandbox lib
$LOAD_PATH << File.join(SANDBOX, 'lib')
#   For other stuff
$: << '.'  # To load files like 'test/util'

# App and Standardutilities
#$LOAD_PATH << App_root
#$LOAD_PATH << Standardutilities_root

require 'test/unit'
require 'shoulda'
require 'assert2'
require 'log'