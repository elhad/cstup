            #!/bin/bash
            # Created by http://www.overses.net
            # Dilarang Keras Mengambil/mencuplik/mengcopy sebagian atau seluruh script ini.
            # Hak Cipta overses.net (Dilindungi Undang-Undang nomor 19 Tahun 2002)
            red='\e[1;31m'
            green='\e[0;32m'
            blue='\e[1;34m'
            NC='\e[0m'
            echo "Connecting to overses.net..."
            sleep 0.2
            echo "Checking Permision..."
            sleep 0.3
            echo -e "${green}Permission Accepted...${NC}"
            sleep 1
            echo""
            read -p "Masukkan Username yang ingin anda hapus: " username
            grep -E "^$username" /etc/ppp/chap-secrets >/dev/null
            if [ $? -eq 0 ]; then
            # proses mengganti passwordnya
            username2="/$username/d";
            sed -i $username2 /etc/ppp/chap-secrets
            sed -i $username2 /var/lib/premium-script/data-user-pptp
            sed -i '/^$/d' /etc/ppp/chap-secrets
            sed -i '/^$/d' /var/lib/premium-script/data-user-pptp
            echo""
            echo "Script by overses.net"
            echo "Terimakasih sudah berlangganan di overses.net"
            echo " "
            echo "-----------------------------------------------"
            echo -e "Username ${blue}$username${NC} Sudah berhasil di ${red}HAPUS${NC}."
            echo -e "Akses Login untuk username ${blue}$username${NC} sudah dihapus"
            echo "-----------------------------------------------"
            else
            echo "Username tidak ditemukan di server anda"
            exit 1
            fi