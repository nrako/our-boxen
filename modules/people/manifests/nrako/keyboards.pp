class people::nrako::keyboards {
  $plist = "com.apple.HIToolbox.plist"

  file { "/Users/${::boxen_user}/Library/Keyboard Layouts/Swiss FR Dev.keylayout":
    ensure  => 'link',
    source  => 'puppet:///modules/people/Swiss FR Dev.keylayout',
    require => File["${boxen::config::srcdir}"],
  }

}