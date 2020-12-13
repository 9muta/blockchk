# -*- encoding: utf-8 -*-
# stub: faraday_curl 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "faraday_curl".freeze
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Maur\u00EDcio Linhares".freeze]
  s.date = "2014-05-02"
  s.description = "Prints CURL compatible commands for the HTTP requests you're making".freeze
  s.email = ["mauricio.linhares@gmail.com".freeze]
  s.homepage = "https://github.com/mauricio/faraday_curl".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Prints CURL compatible commands for the HTTP requests you're making".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<faraday>.freeze, [">= 0.9.0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<faraday_middleware>.freeze, [">= 0.9.0"])
  else
    s.add_dependency(%q<faraday>.freeze, [">= 0.9.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<faraday_middleware>.freeze, [">= 0.9.0"])
  end
end
