require 'formula'

class OxygenIcons < Formula
  homepage 'http://www.oxygen-icons.org'
  url 'http://download.kde.org/stable/4.14.3/src/oxygen-icons-4.14.3.tar.xz'
  sha256 '9b222399c8c188feb3af342b0744fde12d58cdb4e5b88ee2b056ea082a9392db'

  depends_on 'cmake' => :build

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end