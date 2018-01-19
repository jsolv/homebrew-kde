require File.join(File.dirname(__FILE__), 'base_kde_formula')

class Grantlee < BaseKdeFormula
  homepage 'http://grantlee.org/'
  version '0.5.1'
  url 'http://www.grantlee.org/downloads/grantlee-0.5.1.tar.gz'
  sha256 '191809bf4c9b7ef877af0fd29345061c2372edfb4506aa7d5df5c71a570fa0ac'
  head 'https://gitorious.org/grantlee/grantlee.git'

  kde_build_deps
  depends_on 'qt' => ["with-d-bus", "with-qt3support"]
end
