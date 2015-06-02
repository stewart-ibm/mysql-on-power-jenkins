include apt

#This key is at http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key
apt::key { 'jenkins':
	 id => '150FDE3F7787E7D11EF4E12A9B7D32F2D50582E6',
	 source => 'http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key',
}

apt::source { 'jenkins':
	    location => 'http://pkg.jenkins-ci.org/debian-stable',
	    release => 'binary/',
	    repos => '',
	    require => [
	    	    Apt::Key['jenkins'],
		    Package['openjdk-7-jre-headless'],
		    ],
}

package { 'openjdk-7-jre-headless':
	ensure => present,
}

package { 'jenkins': ensure=>latest }

package {"libssl-dev": ensure=>latest }
package { "autoconf": ensure => latest }
package { "automake": ensure => latest }
package { "bison": ensure => latest }
package { "bzr": ensure => latest }
package { "cmake": ensure => latest }
package { "flex": ensure => latest }
package { "gawk": ensure => latest }
package { "libtool": ensure => latest }
package { "make": ensure => latest }
package { "quilt": ensure => latest } # not on centos
package { "valgrind": ensure => latest }
package { "wget": ensure => latest }
package { "gcc": ensure => latest }
package { "g++": ensure => latest }
package {"libaio-dev": ensure => latest}
package {"zlib1g-dev": ensure => latest}
package {"libncurses-dev": ensure=>latest}
package { "mysql-client": ensure=>latest }
package { "python-mysqldb": ensure=>latest }

package { "devscripts": ensure=>latest }
package { "debhelper": ensure=>latest }
package { "po-debconf": ensure=>latest }
package { "chrpath": ensure=>latest }
package { "dpatch": ensure=>latest }
package { "libwrap0-dev": ensure=>latest }
package { "libdbd-mysql-perl": ensure=>latest }
package { "libtest-unit-perl": ensure=>latest }

package { "eatmydata": ensure=>latest }
