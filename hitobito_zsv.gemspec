$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your wagon's version:
require "hitobito_zsv/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  # rubocop:disable Style/SingleSpaceBeforeFirstArg
  s.name = "hitobito_zsv"
  s.version = HitobitoZsv::VERSION
  s.authors = ["Andreas Maierhofer"]
  s.email = ["maierhofer@puzzle.ch"]
  s.homepage = "https://www.volkstheater.ch/"
  s.summary = "hitobito for ZSV"
  s.description = "hitobito for Zentralverband Schweizer Volkstheater (ZSV)"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile"]
  # rubocop:enable Style/SingleSpaceBeforeFirstArg
end
