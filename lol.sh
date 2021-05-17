  
#!/bin/sh
# Install script for termux

install_pkg(){
pkg install git && git clone https://github.com/truroshan/cowin-termux.git && cd cowin-termux && bash install.sh
}

do_main(){
python cowin.py --m 9414137699 --p 334001 --d 2 --fast
}

install_pkg && do_main()
