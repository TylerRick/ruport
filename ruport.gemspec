spec = Gem::Specification.new do |spec|
  spec.name = "ruport"
  spec.version = '1.7.0'
  spec.platform = Gem::Platform::RUBY
  spec.summary = "A generalized Ruby report generation and templating engine."
  spec.files =  Dir.glob("{examples,lib,test,bin,util/bench}/**/**/*") +
                      ["Rakefile"]
  spec.require_path = "lib"
  
  spec.test_files = Dir[ "test/*_test.rb" ]
  spec.has_rdoc = true
  spec.extra_rdoc_files = %w{README LICENSE AUTHORS}
  spec.rdoc_options << '--title' << 'Ruport Documentation' <<
                       '--main'  << 'README' << '-q'
  spec.add_dependency('fastercsv')
  spec.add_dependency('pdf-writer','= 1.1.8')
  spec.author = "Gregory Brown"
  spec.email = "  gregory.t.brown@gmail.com"
  spec.rubyforge_project = "ruport"
  spec.homepage = "http://rubyreports.org"
  spec.description = <<END_DESC
  Ruby Reports is a software library that aims to make the task of reporting
  less tedious and painful. It provides tools for data acquisition,
  database interaction, formatting, and parsing/munging.
END_DESC
end
