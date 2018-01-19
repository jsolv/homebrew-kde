require File.join(File.dirname(__FILE__), 'base_kde_formula')

class Kactivities < BaseKdeFormula
  homepage 'http://www.kde.org/'
  url 'http://kde.mirrors.pair.com/Attic/4.13.0/src/kactivities-4.13.0.tar.xz'
  sha256 'ade779134c52226a78a09bd85ebb2e094bbc211d90e7a9d057cd5db1a33c86b7'

  depends_on 'kdelibs'
  kde_build_deps
end
