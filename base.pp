node default {
    group { "puppet":
            ensure => "present",
          }
}

node 'build' inherits default {
  package { "openjdk-6-jdk" :
        ensure => "latest"
  }
  package { "git" :
        ensure => "latest"
  }
  package { "ant" :
        ensure => "latest"
  }
  package { "libwagon-java" :
        ensure => "latest"
  }
  package { "maven" :
        ensure => "latest"
  }
}