require File.join(File.dirname(__FILE__), 'base_kde_formula')

class Konversation < BaseKdeFormula
  homepage 'http://konversation.kde.org/'
  url 'http://download.kde.org/stable/konversation/1.5.1/src/konversation-1.5.1.tar.xz'
  sha256 '97838dc3cb07210c96154958237e216ad05cffa334f5e549d8619b4c70961986'

  depends_on 'kdelibs'
  depends_on 'kde-runtime'
  kde_build_deps
end
