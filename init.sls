# install spotify
/etc/apt/trusted.gpg.d/spotify-2021-10-27-5E3C45D7B312C643.gpg:
  file.managed:
    - source: salt://projekti/spotify-2021-10-27-5E3C45D7B312C643.gpg

/etc/apt/trusted.gpg.d/spotify-2020-09-08-D1742AD60D811D58.gpg:
  file.managed:
    - source: salt://projekti/spotify-2020-09-08-D1742AD60D811D58.gpg

/etc/apt/sources.list.d/spotify.list:
  file.managed:
    - source: salt://projekti/spotify.list

spotify-client:
  pkg.installed:
    - refresh: True

#Install Steam
/etc/apt/trusted.gpg.d/steam.gpg:
  file.managed:
    - source: salt://projekti/steam.gpg

/etc/apt/sources.list.d/steam.list:
  file.managed:
    - source: salt://projekti/steam.list

dpkg --add-architecture i386:
  cmd.run

libgl1-mesa-dri:amd64:
  pkg.installed  

libgl1-mesa-dri:i386:
  pkg.installed:
    - refresh: True

libgl1-mesa-glx:amd64:
  pkg.installed

libgl1-mesa-glx:i386:
  pkg.installed

steam-launcher:
  pkg.installed:
    - refresh: True

#install discord

/home/discord-fixed.deb:
  file.managed:
    - source: salt://projekti/discord-fixed.deb

apt install -y  /home/discord-fixed.deb:
  cmd.run
