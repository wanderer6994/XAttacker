if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/XAttacker"
    BIN_DIR="$PREFIX/bin/"
    BASH_PATH="$PREFIX/bin/bash"
    TERMUX=true
    pkg install -y git perl make
    wget http://search.cpan.org/CPAN/authors/id/O/OA/OALDERS/HTTP-Message-6.14.tar.gz
    tar zxf HTTP-Message-6.14.tar.gz
    cd HTTP-Message-6.14/ && perl Makefile.PL && make && make test && make install
    wget http://search.cpan.org/CPAN/authors/id/E/ET/ETHER/libwww-perl-6.31.tar.gz
    tar zxf libwww-perl-6.31.tar.gz
    cd libwww-perl-6.31/ && perl Makefile.PL && make && make test && make install
    cpan install Getopt::Long
    cpan install HTTP::Request
    cpan install LWP::UserAgent
    cpan install IO::Select
    cpan install HTTP::Cookies
    cpan install HTTP::Response
    cpan install Term::ANSIColor
    cpan install URI::URL
    cpan install IO::Socket::INET
    cpan install Try::Tiny
    else
    INSTALL_DIR="/usr/share/doc/fsociety"
    BIN_DIR="/usr/bin/"
    BASH_PATH="/bin/bash"
    TERMUX=false
    apt-get install -y git python
fi
