# -*- encoding: utf-8 -*-
# stub: ruby_parser 3.7.3.20160128113321 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby_parser"
  s.version = "3.7.3.20160128113321"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Davis"]
  s.date = "2016-01-28"
  s.description = "ruby_parser (RP) is a ruby parser written in pure ruby (utilizing\nracc--which does by default use a C extension). RP's output is\nthe same as ParseTree's output: s-expressions using ruby's arrays and\nbase types.\n\nAs an example:\n\n    def conditional1 arg1\n      return 1 if arg1 == 0\n      return 0\n    end\n\nbecomes:\n\n    s(:defn, :conditional1, s(:args, :arg1),\n      s(:if,\n        s(:call, s(:lvar, :arg1), :==, s(:lit, 0)),\n        s(:return, s(:lit, 1)),\n        nil),\n      s(:return, s(:lit, 0)))\n\nTested against 801,039 files from the latest of all rubygems (as of 2013-05):\n\n* 1.8 parser is at 99.9739% accuracy, 3.651 sigma\n* 1.9 parser is at 99.9940% accuracy, 4.013 sigma\n* 2.0 parser is at 99.9939% accuracy, 4.008 sigma"
  s.email = ["ryand-ruby@zenspider.com"]
  s.executables = ["ruby_parse", "ruby_parse_extract_error"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = [".autotest", "History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/ruby_parse", "bin/ruby_parse_extract_error", "lib/.document", "lib/ruby18_parser.rb", "lib/ruby18_parser.y", "lib/ruby19_parser.rb", "lib/ruby19_parser.y", "lib/ruby20_parser.rb", "lib/ruby20_parser.y", "lib/ruby21_parser.rb", "lib/ruby21_parser.y", "lib/ruby22_parser.rb", "lib/ruby22_parser.y", "lib/ruby23_parser.rb", "lib/ruby23_parser.y", "lib/ruby_lexer.rb", "lib/ruby_lexer.rex", "lib/ruby_lexer.rex.rb", "lib/ruby_parser.rb", "lib/ruby_parser.yy", "lib/ruby_parser_extras.rb", "test/test_ruby_lexer.rb", "test/test_ruby_parser.rb", "test/test_ruby_parser_extras.rb"]
  s.homepage = "https://github.com/seattlerb/ruby_parser"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.txt"]
  s.rubygems_version = "2.5.1"
  s.summary = "ruby_parser (RP) is a ruby parser written in pure ruby (utilizing racc--which does by default use a C extension)"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sexp_processor>, ["~> 4.1"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<racc>, ["~> 1.4.6"])
      s.add_development_dependency(%q<rake>, ["< 11"])
      s.add_development_dependency(%q<oedipus_lex>, ["~> 2.1"])
      s.add_development_dependency(%q<hoe>, ["~> 3.14"])
    else
      s.add_dependency(%q<sexp_processor>, ["~> 4.1"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<racc>, ["~> 1.4.6"])
      s.add_dependency(%q<rake>, ["< 11"])
      s.add_dependency(%q<oedipus_lex>, ["~> 2.1"])
      s.add_dependency(%q<hoe>, ["~> 3.14"])
    end
  else
    s.add_dependency(%q<sexp_processor>, ["~> 4.1"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<racc>, ["~> 1.4.6"])
    s.add_dependency(%q<rake>, ["< 11"])
    s.add_dependency(%q<oedipus_lex>, ["~> 2.1"])
    s.add_dependency(%q<hoe>, ["~> 3.14"])
  end
end
