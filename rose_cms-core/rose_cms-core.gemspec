$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rose_cms/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "rose_cms-core"
  spec.version     = RoseCms::Core::VERSION
  spec.authors     = ["Masaki Kintaka"]
  spec.email       = ["masaki.the.world@gmail.com"]
  spec.homepage    = "http://masaki.blog/"
  spec.summary     = "RoseCMS core"
  spec.description = "RoseCMS core"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.0"

  spec.add_development_dependency "mysql2"
end
