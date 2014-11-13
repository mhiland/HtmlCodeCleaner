Gem::Specification.new do |s|
  s.name               = "HtmlCodeCleaner"
  s.version            = "0.0.3"
  s.default_executable = "hcc"

  s.authors = ["Michael Hiland"]
  s.date = Time.now.strftime('%F')
  s.licenses    = ['GPL-3.0']
  s.description = %q{Parse a string of the html number, replace code with the corresponding symbol}
  s.email = %q{g2c9@ugrad.cs.ubc.ca}
  s.files = ["lib/HtmlCodeCleaner.rb", "Rakefile",]
  s.test_files = ["test/test_hcc.rb"]
  s.homepage = %q{https://github.com/mhiland/HtmlCodeCleaner}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{2.2.2}
  s.summary = %q{Replace Html code with symbol}

end
