require File.join(File.dirname(__FILE__), 'base_kde_formula')

class Kdevelop < BaseKdeFormula
  homepage 'http://kdevelop.org/'
  url 'http://download.kde.org/stable/kdevelop/4.7.2/src/kdevelop-4.7.2.tar.xz'
  sha256 '5801a38a9abfebead18b74c0a0f5a6d68118b297c96ef1e2f75c8bfae3463b19'
  depends_on 'kdevplatform'
  depends_on 'kde-runtime'
  kde_build_deps
end
