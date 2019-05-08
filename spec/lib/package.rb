class Package

  NAME = 'name'
  DAEMON = 'daemon'

  PACKAGE_LIST = {
    apache: {
      redhat: { name: 'httpd',   daemon: 'httpd'   },
      ubuntu: { name: 'apache2', daemon: 'apache2' },
      others: { name: 'http',    daemon: 'httpd'   }
    },
    docker: {
      redhat: { name: 'docker',    daemon: 'docker' },
      ubuntu: { name: 'docker-ce', daemon: 'docker' },
      others: { name: 'docker',    daemon: 'docker' }
    },
    jenkins: {
      redhat: { name: 'jenkins',   daemon: 'jenkins' },
      ubuntu: { name: 'jenkins',   daemon: 'jenkins'  },
      others: { name: 'jenkins',   daemon: 'jenkins'  }
    },
    mariadb: {
      redhat: { name: 'MariaDB-server', daemon: 'mariadb' },
      ubuntu: { name: 'mariadb-server', daemon: 'mariadb' },
      others: { name: 'mariadb',        daemon: 'mariadb' }
    },
    memcached: {
      redhat: { name: 'memcached', daemon: 'memcached' },
      ubuntu: { name: 'memcached', daemon: 'memcached' },
      others: { name: 'memcached', daemon: 'memcached' }
    },
    mongodb: {
      redhat: { name: 'mongodb-org',   daemon: 'mongod' },
      ubuntu: { name: 'mongodb-org',   daemon: 'mongod'  },
      others: { name: 'mongodb-org',   daemon: 'mongod'  }
    },
    nginx: {
      redhat: { name: 'nginx',   daemon: 'nginx' },
      ubuntu: { name: 'nginx',   daemon: 'nginx'  },
      others: { name: 'nginx',   daemon: 'nginx'  }
    },
    ntp: {
      redhat: { name: 'ntp',   daemon: 'ntpd' },
      ubuntu: { name: 'ntp',   daemon: 'ntp'  },
      others: { name: 'ntp',   daemon: 'ntpd' }
    },
    ssh: {
      redhat: { name: 'openssh-server',   daemon: 'sshd' },
      ubuntu: { name: 'openssh-server',   daemon: 'ssh'  },
      others: { name: 'openssh-server',   daemon: 'sshd' }
    },
    redis: {
      redhat: { name: 'redis',   daemon: 'redis' },
      ubuntu: { name: 'redis',   daemon: 'redis'  },
      others: { name: 'redis',   daemon: 'redis'  }
    }
  }.freeze

  def self.getPackageName(package, os, type)
    return PACKAGE_LIST[ package.to_sym ][ os.to_sym ][ type.to_sym ]
  end
end
