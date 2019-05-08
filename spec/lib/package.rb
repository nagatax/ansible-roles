class Package

  NAME = 'name'
  DAEMON = 'daemon'

  PACKAGE_LIST = {
    apache: {
      redhat: { name: 'httpd',   daemon: 'httpd'  },
      debian: { name: 'apache', daemon: 'apache'  },
      others: { name: 'http',   daemon: 'httpd'   }
    },
    docker: {
      redhat: { name: 'docker',   daemon: 'docker' },
      debian: { name: 'docker',   daemon: 'docker' },
      others: { name: 'docker',   daemon: 'docker' }
    },
    jenkins: {
      redhat: { name: 'jenkins',   daemon: 'jenkins' },
      debian: { name: 'jenkins',   daemon: 'jenkins'  },
      others: { name: 'jenkins',   daemon: 'jenkins'  }
    },
    mariadb: {
      redhat: { name: 'MariaDB-server',   daemon: 'mariadb' },
      debian: { name: 'mariadb',   daemon: 'mariadb'  },
      others: { name: 'mariadb',   daemon: 'mariadb'  }
    },
    mongodb: {
      redhat: { name: 'mongodb-org',   daemon: 'mongod' },
      debian: { name: 'mongodb-org',   daemon: 'mongod'  },
      others: { name: 'mongodb-org',   daemon: 'mongod'  }
    },
    nginx: {
      redhat: { name: 'nginx',   daemon: 'nginx' },
      debian: { name: 'nginx',   daemon: 'nginx'  },
      others: { name: 'nginx',   daemon: 'nginx'  }
    },
    ntp: {
      redhat: { name: 'ntp',   daemon: 'ntpd' },
      debian: { name: 'ntp',   daemon: 'ntpd' },
      others: { name: 'ntp',   daemon: 'ntpd' }
    },
    ssh: {
      redhat: { name: 'openssh-server',   daemon: 'sshd' },
      debian: { name: 'ssh',   daemon: 'ssh'  },
      others: { name: 'ssh',   daemon: 'ssh'  }
    },
    redis: {
      redhat: { name: 'redis',   daemon: 'redis' },
      debian: { name: 'redis',   daemon: 'redis'  },
      others: { name: 'redis',   daemon: 'redis'  }
    }
  }.freeze

  def self.getPackageName(package, os, type)
    return PACKAGE_LIST[ package.to_sym ][ os.to_sym ][ type.to_sym ]
  end
end
