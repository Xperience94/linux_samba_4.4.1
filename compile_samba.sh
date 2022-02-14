mkdir -p build
export TEGRA_KERNEL_OUT=$(pwd)/build/
export CROSS_COMPILE=$HOME/l4t-gcc/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export LOCALVERSION=-tegra
rm ~/nvidia/nvidia_sdk/JetPack_4.4.1_Linux_JETSON_AGX_XAVIER/Linux_for_Tegra/kernel/dtb/tegra194-agx-cti-AGX101-JCB002-IMX390-8CAM.dtb
cd DeviceTree
dtc -I dtb -O dts -f tegra194-agx-cti-AGX101-JCB002-IMX390-8CAM.dtb -o devicetree_second_version.dts
chmod 777 tegra194-agx-cti-AGX101-JCB002-IMX390-8CAM.dtb
cp tegra194-agx-cti-AGX101-JCB002-IMX390-8CAM.dtb ~/nvidia/nvidia_sdk/JetPack_4.4.1_Linux_JETSON_AGX_XAVIER/Linux_for_Tegra/kernel/dtb/
cd ..
cd kernel-4.9
# executer la ligne ci-dessous si le fichier de config est inexistant
#make ARCH=arm64 O=$TEGRA_KERNEL_OUT tegra_defconfig
make ARCH=arm64 O=$TEGRA_KERNEL_OUT

