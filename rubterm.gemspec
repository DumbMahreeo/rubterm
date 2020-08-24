Gem::Specification.new do |spec|
  spec.name          = "rubterm"
  spec.version       = "0.1.2.1"
  spec.authors       = ["Massimiliano Noviello"]
  spec.email         = ["massi.noviello@gmail.com"]

  spec.summary       = %q{Use colors and move the cursor in your terminal.}
  spec.description   = %q{A gem that lets you easily control your terminal trough ANSI escape codes.}
  spec.homepage      = "https://github.com/DumbMahreeo/rubterm"
  spec.license       = "LGPL-2.1"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = [
    "LICENSE",
    "README.md",
    "DOCSnormal.md",
    "DOCSstring.md",
    "Rakefile",
    "Gemfile",
    "rubterm.gemspec",
    "bin/console",
    "bin/setup",
    "lib/rubterm.rb",
    "lib/rubterm_string.rb"
  ]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
