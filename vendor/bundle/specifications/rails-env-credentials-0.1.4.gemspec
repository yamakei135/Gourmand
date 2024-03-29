# -*- encoding: utf-8 -*-
# stub: rails-env-credentials 0.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-env-credentials".freeze
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["sinsoku".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-07-18"
  s.description = "It enhances the credentials configuration introduced by Rails v5.2.0".freeze
  s.email = ["sinsoku.listy@gmail.com".freeze]
  s.homepage = "https://github.com/sinsoku/rails-env-credentials".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "It enhances the credentials configuration introduced by Rails v5.2.0".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 5.2.0.rc1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 5.2.0.rc1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 5.2.0.rc1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
