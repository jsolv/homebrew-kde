require File.join(File.dirname(__FILE__), 'base_kde_formula')

class KdevelopPhp < BaseKdeFormula
  homepage 'http://kdevelop.org/'
  url 'http://download.kde.org/stable/kdevelop/4.7.2/src/kdevelop-php-1.7.2.tar.xz'
  sha256 '75de9a5afe32ecaa35eb14e1ae04dd9c6d3e9abf87274ca4537fbdc3b296a369'

  depends_on 'kdevelop'
  depends_on 'kdevelop-pg-qt'
  depends_on 'kdevelop-php-docs'
  kde_build_deps
end
