# Generated by juwelier
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Juwelier::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: gutenug 0.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gutenug".freeze
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Lloyd Kranzky".freeze]
  s.date = "2020-08-22"
  s.description = "Not much more than that, really. Intended for my NaNoGenMo project.".freeze
  s.email = "lloyd@kranzky.com".freeze
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".ruby-gemset",
    ".ruby-version",
    ".semver",
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "UNLICENSE",
    "lib/gutenug.rb",
    "lib/gutenug/book.rb",
    "lib/gutenug/chapter.rb",
    "lib/gutenug/paragraph.rb"
  ]
  s.homepage = "http://github.com/kranzky/gutenug".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6".freeze)
  s.rubygems_version = "3.0.8".freeze
  s.summary = "A good-enough Gutenberg parser".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<semver2>.freeze, ["~> 3"])
      s.add_runtime_dependency(%q<pragmatic_segmenter>.freeze, ["~> 0.3"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.7"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 6.2"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<juwelier>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<semver2>.freeze, ["~> 3"])
      s.add_dependency(%q<pragmatic_segmenter>.freeze, ["~> 0.3"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.7"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 6.2"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<juwelier>.freeze, ["~> 2.4"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<semver2>.freeze, ["~> 3"])
    s.add_dependency(%q<pragmatic_segmenter>.freeze, ["~> 0.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.7"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 6.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<juwelier>.freeze, ["~> 2.4"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
