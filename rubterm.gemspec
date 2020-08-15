require_relative 'lib/rubterm/version'

Gem::Specification.new do |spec|
  spec.name          = "rubterm"
  spec.version       = Rubterm::VERSION
  spec.authors       = ["Massimiliano Noviello"]
  spec.email         = ["massi.noviello@gmail.com"]

  spec.summary       = %q{Use colors and move the cursor in your terminal.}
  spec.description   = %q{A gem that lets you easily control your terminal trough ANSI escape codes.}
  spec.homepage      = "https://github.com/DumbMahreeo/rubterm"
  spec.license       = "LGPL-2.1"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
