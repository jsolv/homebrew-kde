require 'formula'

class Attica < Formula
  homepage 'http://www.kde.org/'
  url 'http://download.kde.org/stable/attica/attica-0.4.2.tar.bz2'
  sha256 '3b9c53770862c0b21b7af7ea15951c35831126022bb8d052760d9cf8bd7ee4f8'
  
  depends_on 'cmake' => :build
  depends_on 'qt' => ["with-d-bus", "with-qt3support"]

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
