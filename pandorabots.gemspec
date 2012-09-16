# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "pandorabots"

Gem::Specification.new do |s|
  s.name        = "pandorabots"
  s.version     = Pandorabots::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Geoff Hackett"]
  s.email       = ["ghackett@gmail.com"]
  s.homepage    = "http://github.com/ghackett/pandorabots-gem"
  s.summary     = "Simple Api for http://pandorabots.com"
  s.description = "just use Pandorabots.talk(bot_id, input, cust_id). See http://www.pandorabots.com/botmaster/en/faq#h2 for more info on api"
 
  s.required_rubygems_version = ">= 1.3.6"
  s.add_dependency("xml-simple")
 
  s.files        = Dir.glob("{lib}/**/*") + %w(README.md)
  # s.files        = Dir.glob("{bin,lib}/**/*") + %w(README.md)
  # s.executables  = ['pandorabots']
  s.require_path = 'lib'
end