require 'formula'

class SharedDesktopOntologies < Formula
  homepage 'http://sourceforge.net/apps/trac/oscaf/'
  url 'http://downloads.sourceforge.net/project/oscaf/shared-desktop-ontologies/0.11.0/shared-desktop-ontologies-0.11.0.tar.bz2'
  sha256 '82afe6c24cf574f242c1fa85a5daff8c3631cc9b4cbcb80379dce6f364b4bbd4'

  depends_on 'cmake' => :build

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
