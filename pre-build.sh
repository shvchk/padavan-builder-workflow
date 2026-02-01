sed -i '86d' padavan-ng/trunk/build_firmware.sh
sed -i 's/^CONFIG_RT_SINGLE_SKU=y*/# CONFIG_RT_SINGLE_SKU is not set/' padavan-ng/trunk/configs/boards/ASUS/RT-AC51U/kernel-3.4.x.config
apt update
apt install -y gcc-multilib
