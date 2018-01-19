require File.join(File.dirname(__FILE__), 'base_kde_formula')

class KdevelopRuby < BaseKdeFormula
  homepage 'http://kdevelop.org/'
  url 'https://github.com/adymo/kdevelop-ruby/archive/kdevelop-4-7.zip'
  sha256 '8272090d55554a48c7680898282eb1cd0b1ad38fd62b2e4debba76515216e4dc'

  depends_on 'kdevelop'
  kde_build_deps
end
