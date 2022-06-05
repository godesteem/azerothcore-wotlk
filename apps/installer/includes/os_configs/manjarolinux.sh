if ! command -v lsb_release &>/dev/null ; then
       sudo apt-get install -y lsb-release
fi

DEBIAN_VERSION=$(lsb_release -sr)

sudo pacman -Syy


sudo pacman -Sy gdb unzip curl \
                     libncurses-dev libreadline-dev clang \
                     gcc git cmake make ccache

sudo pacman -Sy default-libmysqlclient-dev libssl-dev libreadline-dev libncurses-dev mariadb-server
libboost-system1.6*-dev libboost-filesystem1.6*-dev libboost-program-options1.6*-dev libboost-iostreams1.6*-dev \
