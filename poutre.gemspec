Gem::Specification.new do |s|
  s.name             = "poutre"
  s.version          = "0.0.2alpha"
  s.date             = Time.now.utc.strftime("%Y-%m-%d")
  s.homepage         = "http://github.com/athoune/poutre"
  s.authors          = "Mathieu Lecarme"
  s.email            = "mathieu@garambrogne.net"
  s.description      = "Throw a lumber on your server"
  s.summary          = s.description
  s.extra_rdoc_files = %w(README.md)
  s.files            = Dir["", "README.md", "Gemfile", "lib/**/*.rb"]
  s.require_paths    = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.add_dependency "em-http-metrics", "0.0.2"
  s.add_dependency "em-scenario", "0.0.3"
  s.add_development_dependency "minitest", "~>2.0"
  s.add_development_dependency "rake"
end

