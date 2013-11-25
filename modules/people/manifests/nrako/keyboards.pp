class people::nrako::keyboards {
  $homedir = "/Users/${::boxen_user}"

  file { "/Users/${::boxen_user}/Library/Keyboard Layouts/Swiss FR Dev.keylayout":
    ensure  => 'link',
    source  => 'puppet:///modules/people/Swiss FR Dev.keylayout',
    require => File["${boxen::config::srcdir}"],
  }

  file { "${homedir}/Library/Preferences/com.apple.HIToolbox.plist":
    ensure  => link,
    source  => 'puppet:///modules/people/com.apple.HIToolbox.plist',
    require => File["${boxen::config::srcdir}"],
  }

}