require File.join(File.dirname(__FILE__), 'base_kde_formula')

class Akonadi < BaseKdeFormula
  homepage 'http://pim.kde.org/akonadi/'
  url 'http://download.kde.org/stable/akonadi/src/akonadi-1.13.0.tar.bz2'
  sha256 '8c7f690002ea22c139f3a64394aef2e816e00ca47fd971af7d54a66087356dd2'

  depends_on 'shared-mime-info'
  depends_on 'mysql'
  depends_on 'soprano'
  depends_on 'boost'
  depends_on 'qt' => ["with-d-bus", "with-qt3support"]

  kde_build_deps

  #def patches
  #  {:p0 => [
  #    "http://bugsfiles.kde.org/attachment.cgi?id=69519"
  #  ]}
  #end
  
end
