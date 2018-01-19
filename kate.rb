require File.join(File.dirname(__FILE__), 'base_kde_formula')

class Kate < BaseKdeFormula
  homepage 'http://kate-editor.org'
  url 'http://download.kde.org/stable/4.14.3/src/kate-4.14.3.tar.xz'
  sha256 '513d4ae2c36fa6b59caf3b2b685e3ea1167093d16025859cfac90d75617e707d'

  depends_on 'kdelibs'
  depends_on 'kde-runtime'
  kde_build_deps

  def patches
    DATA
  end
end

__END__
--- a/kwrite/kwritemain.h
+++ b/kwrite/kwritemain.h
@@ -44,7 +44,7 @@
 class KRecentFilesAction;
 class KSqueezedTextLabel;

-class KWrite : public KParts::MainWindow
+class KTEXTEDITOR_EXPORT KWrite : public KParts::MainWindow
 {
   Q_OBJECT


