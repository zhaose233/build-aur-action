FROM archlinux:latest
RUN pacman -Syu base-devel git --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg && sed -i 's|-march=x86-64|-march=x86-64-v3|g' /etc/makepkg.conf
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
