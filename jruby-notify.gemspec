# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name          = %q{jruby-notify}
  s.version       = '0.4.0.1'

  s.authors       = ['Michael Kessler', 'Magnus Hyllander']
  s.email         = [%q{michi@flinkfinger.com}, %q{magnus.hyllander@peerialism.com}]
  s.homepage      = %q{https://github.com/mhyllander/jruby-notify}
  s.summary       = %q{JNotify for JRuby}
  s.description   = %q{JRuby-Notify is an thin wrapper around the JNotify library.}
  s.license 	  = 'MIT'

  s.add_development_dependency 'rake', '~> 0'
  s.add_development_dependency 'bundler', '~> 0'
  s.add_development_dependency 'rspec', '~> 0'

  s.files         = Dir.glob('lib/**/*') + %w[LICENSE README.md]
  s.require_paths = ['lib']
end
