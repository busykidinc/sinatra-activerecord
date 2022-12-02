# frozen_string_literal: true

require_relative "lib/sinatra/activerecord/version"

Gem::Specification.new do |spec|
  spec.name = "sinatra-activerecord"
  spec.version = Sinatra::Activerecord::VERSION
  spec.authors = ["Nathan Anderson"]
  spec.email = ["na@busykid.com"]

  spec.summary = "Extends Sinatra with extension methods and Rake tasks for dealing with an SQL database using the ActiveRecord ORM"
  spec.homepage = "https://github.com/busykidinc/sinatra-activerecord"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/busykidinc/sinatra-activerecord"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "activerecord", ">= 4.1"
  spec.add_dependency "activesupport", ">= 4.1"
  spec.add_dependency "sinatra", "~> 3.0.4"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
