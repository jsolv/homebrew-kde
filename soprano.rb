require 'formula'

class Soprano < Formula
  homepage 'http://soprano.sourceforge.net/'
  url 'http://downloads.sourceforge.net/project/soprano/Soprano/2.9.4/soprano-2.9.4.tar.bz2'
  sha256 '64066fbd54e71d7ae4c8a4116997448a72808a2813cff3bb5d2c28f0fce9e0e5'

  depends_on 'cmake' => :build
  depends_on 'qt' => ["with-d-bus", "with-qt3support"]
  depends_on 'clucene'
  depends_on 'raptor'
  depends_on 'redland'

  def patches
    DATA
  end

  def install
    ENV['CLUCENE_HOME'] = HOMEBREW_PREFIX

    disabled_options = [
      "-DSOPRANO_DISABLE_SESAME2_BACKEND=TRUE",
    ].join(' ')
    system "cmake #{std_cmake_parameters} #{disabled_options} ."
    system "make install"
  end
end

__END__
--- a/soprano/vocabulary/rdf.h
+++ b/soprano/vocabulary/rdf.h
@@ -24,6 +24,8 @@
 #include <QtCore/QUrl>
 #include "soprano_export.h"

+#undef nil
+
 namespace Soprano {
     namespace Vocabulary {
         namespace RDF {
