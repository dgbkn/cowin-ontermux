  
#!/bin/sh
# Install script for termux

install_pkg(){
pkg install git && git clone https://github.com/truroshan/cowin-termux.git
cd cowin-termux && bash install.sh

}

do_main(){
python cowin.py --m <MOBILE-NO> --p <PIN-CODE> --a <YOUR-AGE> --t <INTERVAL-MINUTE> --d <DOSE-COUNT> --fast
}

install_pkg && do_main()
