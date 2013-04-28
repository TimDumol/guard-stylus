Gem::Specification.new do |s|
  s.name        = 'guard-stylus'
  s.version     = '0.0.2'
  s.date        = '2013-04-17'
  s.summary     = "A Guard plugin to watch and compile Stylus files"
  s.description = "A Guard plugin to watch and compile Stylus files"
  s.authors     = ["Tim Joseph dumol"]
  s.email       = 'tim@timdumol.com'
  s.files       = ["lib/guard/stylus.rb"]
  s.homepage    =
    'https://github.com/TimDumol/guard-stylus'
  s.licenses    = ['Apache 2.0']
  s.add_runtime_dependency 'guard', '~> 1.8.0'
  s.add_runtime_dependency 'stylus', '~> 0.7.1'
  s.add_runtime_dependency 'guard-helpers', '~> 0.0.3'
end
