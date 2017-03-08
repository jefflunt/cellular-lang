Gem::Specification.new do |s|
  s.name        = 'cellular_lang'
  s.version     = '0.0.1'
  s.date        = '2017-03-06'
  s.summary     = 'cellular-lang.jefflunt.com'
  s.description = 'cellular-lang.jefflunt.com'
  s.authors     = ['Jeff Lunt']
  s.email       = 'jefflunt@gmail.com'
  s.files       = Dir["LICENSE", "README.md", "lib/**/*"]
  s.homepage    = 'https://github.com/jefflunt/cellular-lang'
  s.license     = 'MIT'

  s.add_runtime_dependency 'treetop', '~> 1.6'
  s.add_development_dependency 'minitest', '~> 5.10'
end
