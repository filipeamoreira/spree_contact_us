Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_contact_us'
  s.version     = '0.70.3'
  s.summary     = 'Adds an easy contact page to your spree site'
  s.description = 'With this gem you get an contact page and the management tools to make it very easy to update your contact and reduce the demand on your sites customer service'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Jesus Sayar Celestino'
  s.email             = 'jesus.sayar@softwhisper.es'
  s.homepage          = 'http://www.softwhisper.es/'
  s.rubyforge_project = 'spree_contact_us'

  s.files = Dir['README.md', 'lib/**/*', 'app/**/*', 'config/**/*', 'db/*']
  s.require_path = 'lib'
  s.requirements << 'none'
  
  s.has_rdoc = false

  s.add_dependency 'spree_core', '>= 0.70.3'
  s.add_development_dependency 'rspec-rails'
end

