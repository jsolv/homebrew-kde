require File.join(File.dirname(__FILE__), 'base_kde_formula')

class Kdepimlibs < BaseKdeFormula
  homepage 'http://www.kde.org/'
  url 'http://download.kde.org/stable/4.14.3/src/kdepimlibs-4.14.3.tar.xz'
  sha256 '65edb1bec191be1b6f8450dc71eadae734f4ab0585aab0a885207390399868d7'

  depends_on 'kdelibs'
  depends_on 'gpgme'
  depends_on 'akonadi'
  depends_on 'libical'
  kde_build_deps
  
  def extra_cmake_args
    "-DLDAP_INCLUDE_DIR=/usr/include/"
  end

end
