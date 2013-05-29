$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'morpher/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'morpher'
  s.version     = Morpher::VERSION
  s.authors     = ['Vitaly Shlyaga']
  s.email       = %w(vshlyaga@acm.org)
  s.homepage    = ''
  s.summary     = 'Склонение существительных с помощью веб-сервиса http://morpher.ru'
  s.description = 'Склонение существительных с помощью веб-сервиса http://morpher.ru'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  #s.require_paths = %w(lib)

  s.add_dependency 'httparty'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
