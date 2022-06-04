LATEST=""

BOARDS=""

DATA="tplink_tl-wdr4300-v1"

REPO="https://downloads.openwrt.org"
RELEASES="${REPO}/releases/"


VERSION="21.02.0"
CORE="ath79"
DEVICE="tplink_tl-wdr4300-v1-il"
FS="squashfs"
FILE="sysupgrade.bin"
PACKAGE="openwrt-${VERSION}-${CORE}-generic-${DEVICE}-${FS}-${FILE}"

# openwrt-21.02.0-ath79-generic-tplink_tl-wdr4300-v1-il-squashfs-sysupgrade.bin

export S_URL=https://downloads.openwrt.org/releases/21.02.0/targets/ath79/generic/openwrt-21.02.0-ath79-generic-tplink_tl-wdr4300-v1-il-squashfs-sysupgrade.bin

download() {
$c=$(which curl)
$f=$(which uclient-fetch)

if [[ -e $c ]]; then
  $c -fSS $url -O $target
else
  echo "curl not found"
  read -p "try with uclient-fetch?" $try
    if [[ $try == "y" || $try == "yes" ]]; then 
    
    else 
      echo "exit"
      exit 1;
    fi;
  fi;
}
