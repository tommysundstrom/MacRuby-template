# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cheat}
  s.version = "1.2.1"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Wanstrath"]
  s.cert_chain = nil
  s.date = %q{2006-11-10}
  s.default_executable = %q{cheat}
  s.description = %q{Cheat is a simple command line utility reference program.  Use it to, well, cheat.}
  s.email = %q{chris@ozmm.org}
  s.executables = ["cheat"]
  s.files = ["README", "LICENSE", "bin/cheat", "lib/cheat", "lib/cheat.rb", "lib/diffr.rb", "lib/new_cheat.rb", "lib/responder.rb", "lib/site.rb", "lib/wrap.rb", "lib/cheat/commands.rb", "test/fixtures", "test/test_cheat.rb"]
  s.homepage = %q{http://cheat.errtheblog.com/}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Cheat is a simple command line utility reference program.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 1

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
