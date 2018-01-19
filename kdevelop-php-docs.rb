require File.join(File.dirname(__FILE__), 'base_kde_formula')

class KdevelopPhpDocs < BaseKdeFormula
  homepage 'http://kdevelop.org/'
  url 'http://download.kde.org/stable/kdevelop/4.7.2/src/kdevelop-php-docs-1.7.2.tar.xz'
  sha256 '2dff2f54f631296c87007be84a0dc439d328d473717577c0d1450a9fc7e6e828'

  depends_on 'kdevelop'
  kde_build_deps
end
