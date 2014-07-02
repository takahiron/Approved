# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "approved"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["takahiro.naito"]
  s.date = "2014-05-26"
  s.description = "approved: Write a longer description. Optional."
  s.email = ["odzbdadd1@gmail.com"]
  s.files = [".gitignore", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "approved.gemspec", "lib/approved.rb", "lib/approved/version.rb", "lib/generators/active_record/approved_generator.rb", "lib/generators/approved/approved_generator.rb", "lib/generators/approved/install_generator.rb", "lib/generators/template/README", "lib/generators/template/approved.rb", "lib/generators/template/migrate/role.rb", "lib/generators/template/migrate/role_and_user.rb"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "approved: Write a short summary. Required."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
