
sur chrome ouvrir le tutoriel d'installation du sdk et du bsp à l'adresse : https://connecttech.com/resource-center/kdb373/

ci-dessous un exemple de mise oeuvre du tutoriel:
================================================

Si vous utiliser un Unbuntu 20.04, veuillez modifier le fichier suivant : 

cd /etc
sudo nano os-release

et changer le champ Version_ID="18.04" 

cliquer sur le lien:
1- Open NVIDIA SDK Manager. For first time use, you must log in to your NVIDIA Developer account.

pour ouvrir "https://developer.nvidia.com/nvidia-sdk-manager"

à partir de la page "https://developer.nvidia.com/nvidia-sdk-manager"
en bas de page cliquer sur le bouton:
"Get Started: download"
pour ouvrir la page: https://developer.nvidia.com/sdkmanager_deb 
et télécharger sdkmanager_1.7.1-8928_amd64.deb



sur chrome ouvrir
https://connecttech.com/resource-center/l4t-board-support-packages/

Sélectionner "NVIDIA Jetson AGX Xavier"
télécharger le BSP à partir de la ligne:JetPack 4.4.1 - L4T r32.4.4	AGX L4T r32.4.4 BSP

à partir de ~/Téléchargement
mv CTI-L4T-AGX-32.4.4-V005.tgz ~/nvidia/nvidia_sdk/JetPack_4.4.1_Linux_JETSON_AGX_XAVIER/Linux_for_Tegra

cd  ~/nvidia/nvidia_sdk/JetPack_4.4.1_Linux_JETSON_AGX_XAVIER/Linux_for_Tegra
tar -zxf CTI-L4T-AGX-32.4.4-V005.tgz 
ls
cd CTI-L4T
ls
sudo ./install.sh
cd ..
lsusb /* check if the board nvidia is listed */
ls

Attention avant de flasaher se mettre ne mode recovery sur la carte nvidia:
- mettre la carte nvivia hor tension
- appuyer sur le bouton recovery avec une etiquette ....
- puis lancer le script comm indiqué ci-dessous:

sudo ./cti-flash.sh


