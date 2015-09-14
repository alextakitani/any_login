$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "any_login/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "any_login"
  s.version     = AnyLogin::VERSION
  s.authors     = ["Igor Kasyanchuk"]
  s.email       = ["igorkasyanchuk@gmail.com"]
  s.homepage    = "https://github.com/igorkasyanchuk"
  s.summary     = "AnyLogin is created to speedup development process and allow developer's quickly login as any user in DB."
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "devise"
  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "quiet_assets"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency "pry-byebug"
end
