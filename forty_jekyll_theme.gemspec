# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "forty_jekyll_theme"
  spec.version       = "1.2"
  spec.authors       = ["Andrew Banchich"]
  spec.email         = ["andrewbanchich@gmail.com"]

  spec.summary       = %q{A Jekyll version of the "Forty" theme by HTML5 UP.}
  spec.homepage      = "https://gitlab.com/andrewbanchich/forty-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_development_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 2.0.1"
  spec.add_development_dependency "jekyll-redirect-from"
  spec.add_development_dependency "emoji_for_jekyll"
  spec.add_development_dependency "jekyll-seo-tag"
  spec.add_development_dependency "jekyll-sitemap"
  spec.add_development_dependency "jekyll-admin"
  spec.add_development_dependency "jekyll-feed"
  spec.add_development_dependency "jekyll-youtube"
  spec.add_development_dependency "jekyll-asciinema"
  spec.add_development_dependency "jekyll-language-plugin"
  spec.add_development_dependency "searchyll"
  
end
