# -*- encoding: utf-8 -*-
# stub: google-api-client 0.11.1 ruby lib generated third_party

Gem::Specification.new do |s|
  s.name = "google-api-client".freeze
  s.version = "0.11.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "generated".freeze, "third_party".freeze]
  s.authors = ["Steven Bazyl".freeze, "Tim Emiola".freeze, "Sergio Gomes".freeze, "Bob Aman".freeze]
  s.date = "2017-04-04"
  s.email = ["sbazyl@google.com".freeze]
  s.executables = ["generate-api".freeze]
  s.files = ["bin/generate-api".freeze]
  s.homepage = "https://github.com/google/google-api-ruby-client".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Client for accessing Google APIs".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<representable>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<retriable>.freeze, ["< 4.0", ">= 2.0"])
      s.add_runtime_dependency(%q<addressable>.freeze, [">= 2.5.1"])
      s.add_runtime_dependency(%q<mime-types>.freeze, [">= 3.0"])
      s.add_runtime_dependency(%q<googleauth>.freeze, ["~> 0.5"])
      s.add_runtime_dependency(%q<httpclient>.freeze, ["< 3.0", ">= 2.8.1"])
      s.add_development_dependency(%q<thor>.freeze, ["~> 0.19"])
      s.add_development_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 4.2"])
    else
      s.add_dependency(%q<representable>.freeze, ["~> 3.0"])
      s.add_dependency(%q<retriable>.freeze, ["< 4.0", ">= 2.0"])
      s.add_dependency(%q<addressable>.freeze, [">= 2.5.1"])
      s.add_dependency(%q<mime-types>.freeze, [">= 3.0"])
      s.add_dependency(%q<googleauth>.freeze, ["~> 0.5"])
      s.add_dependency(%q<httpclient>.freeze, ["< 3.0", ">= 2.8.1"])
      s.add_dependency(%q<thor>.freeze, ["~> 0.19"])
      s.add_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 4.2"])
    end
  else
    s.add_dependency(%q<representable>.freeze, ["~> 3.0"])
    s.add_dependency(%q<retriable>.freeze, ["< 4.0", ">= 2.0"])
    s.add_dependency(%q<addressable>.freeze, [">= 2.5.1"])
    s.add_dependency(%q<mime-types>.freeze, [">= 3.0"])
    s.add_dependency(%q<googleauth>.freeze, ["~> 0.5"])
    s.add_dependency(%q<httpclient>.freeze, ["< 3.0", ">= 2.8.1"])
    s.add_dependency(%q<thor>.freeze, ["~> 0.19"])
    s.add_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 4.2"])
  end
end
