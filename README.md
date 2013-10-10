Alexander Dymo's Homebrew
=========================
Homebrew tap to build KDevelop and Kate on Mac OS. Based on https://github.com/somekool/homebrew but actually works. Note, this is not a full KDE distribution. It contains only KDE apps I use (which is KDevelop and Kate).

You can tap this repository to your existing homebrew with "brew tap adymo/kde".

Installation
------------

Prepare your environment:

* prepend /usr/local/bin to your PATH in ~/.bash_profile (note, it's important that your setting extends $PATH, not replaces it, otherwise things will not compile with strange errors)  
  <code>export PATH=/usr/local/bin:$PATH</code>
* . ~/.bash_profile

Tap my KDE repository:

* brew tap adymo/kde

Install Qt from my tap (kde requires qt compiled from source with additional options like dbus and qt3support):

* brew uninstall qt
* brew install adymo/kde/qt 

Install KDevelop and (optionally) additional language support plugins

* brew install kdevelop
* brew install kdevelop-ruby

Launch D-Bus
* mkdir -p ~/Library/LaunchAgents
* cp <dbus cellar dir>/org.freedesktop.dbus-session.plist ~/Library/LaunchAgents/
* launchctl load -w ~/Library/LaunchAgents/org.freedesktop.dbus-session.plist

Update system configuration:

* restart your system (optional, but helps prevent various dbus-related problems)
* kbuildsycoca4 --noincremental
* update-mime-types /usr/local/share/mime
* open ~/Application/kdevelop.app

Troubleshooting
---------------

* if kbuildsycoca4 never finishes, then stop dbus, remove its lock file (run "env | grep DBUS" to find out where it is) and start dbus again
* if dbus fails to start, check whether you have /usr/local/etc/dbus-1/session.d directory
* if something does not compile, make sure you do not override $PATH in .bash_profile, but rather prepend /usr/local/bin to it like this:  
  <code>export PATH=/usr/local/bin:$PATH</code>
