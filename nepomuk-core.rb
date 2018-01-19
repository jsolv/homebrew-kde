require File.join(File.dirname(__FILE__), 'base_kde_formula')

class NepomukCore < BaseKdeFormula
  homepage 'http://www.kde.org/'
  url 'http://download.kde.org/stable/4.14.3/src/nepomuk-core-4.14.3.tar.xz'
  sha256 '74e725577f2f513c577c138e395448c3ca451cd894e35e14017b4b3ce63eab3d'

  depends_on 'kdelibs'
  kde_build_deps
end
