Gem::Specification.new do |s|
  s.name               = "HtmlCodeCleaner"
  s.version            = "0.0.2"
  s.default_executable = "hcc"

  s.authors = ["Michael Hiland"]
  s.date = %q{2014-11-12}
  s.licenses    = ['GPL-3.0']
  s.description = %q{Parse a string of the html number, replace code with the corresponding symbol}
  s.email = %q{g2c9@ugrad.cs.ubc.ca}
  s.files = ["lib/HtmlCodeCleaner.rb", "Rakefile",]
  s.test_files = ["test/test_hcc.rb"]
  s.homepage = %q{https://github.com/mhiland/HtmlCodeCleaner}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{2.2.2}
  s.summary = %q{Replace Html code with symbol}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
