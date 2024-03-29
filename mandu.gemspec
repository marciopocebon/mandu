
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mandu/version'

Gem::Specification.new do |spec|
  spec.name          = 'mandu'
  spec.version       = Mandu::VERSION
  spec.authors       = ['HAHWUL']
  spec.email         = ['hahwul@gmail.com']

  spec.summary       = 'Ruby gem for Easy Web Hacking'
  spec.description   = 'MITM Proxy, en/decode, http reqeust handling, etc...'
  spec.homepage      = 'https://www.hahwul.com'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'evil-proxy', '~> 0.2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
