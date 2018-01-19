require File.join(File.dirname(__FILE__), 'base_kde_formula')

class KdevelopPgQt < BaseKdeFormula
  homepage 'http://kdevelop.org/'
  url 'git@github.com:KDE/kdevelop-pg-qt.git', :using => :git, :branch => "1.1"
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

  depends_on 'kdelibs'
  kde_build_deps
end
