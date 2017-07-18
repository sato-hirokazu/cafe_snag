# -*- encoding: utf-8 -*-
# stub: authlogic 3.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "authlogic".freeze
  s.version = "3.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ben Johnson".freeze]
  s.date = "2016-08-29"
  s.description = "A clean, simple, and unobtrusive ruby authentication solution.".freeze
  s.email = ["bjohnson@binarylogic.com".freeze]
  s.homepage = "http://github.com/binarylogic/authlogic".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "A clean, simple, and unobtrusive ruby authentication solution.".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, ["< 5.1", ">= 3.2"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 3.2"])
      s.add_runtime_dependency(%q<request_store>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<scrypt>.freeze, ["< 4.0", ">= 1.2"])
      s.add_development_dependency(%q<bcrypt>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.7"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.41.2"])
    else
      s.add_dependency(%q<activerecord>.freeze, ["< 5.1", ">= 3.2"])
      s.add_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 3.2"])
      s.add_dependency(%q<request_store>.freeze, ["~> 1.0"])
      s.add_dependency(%q<scrypt>.freeze, ["< 4.0", ">= 1.2"])
      s.add_dependency(%q<bcrypt>.freeze, ["~> 3.1"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.7"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.41.2"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, ["< 5.1", ">= 3.2"])
    s.add_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 3.2"])
    s.add_dependency(%q<request_store>.freeze, ["~> 1.0"])
    s.add_dependency(%q<scrypt>.freeze, ["< 4.0", ">= 1.2"])
    s.add_dependency(%q<bcrypt>.freeze, ["~> 3.1"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.7"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.41.2"])
  end
end
