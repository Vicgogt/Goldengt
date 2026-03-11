#!/bin/bash

# ════════════════════════════════
#   SubScanLTM Installer
#   Creado por @Vicgogt_Connection
# ════════════════════════════════

REPO="https://raw.githubusercontent.com/Vicgogt/Goldengt/main/Script_Scann"
INSTALL_DIR="/usr/local/bin"
CMD_NAME="subscan"

echo ""
echo "======================================"
echo "      Instalando SubScanLTM"
echo "======================================"
echo ""

# verificar python
if ! command -v python3 &> /dev/null
then
    echo "[+] Instalando Python3..."
    apt update -y && apt install python3 python3-pip -y
fi

# descargar script
echo "[+] Descargando SubScanLTM..."
curl -sL $REPO -o $INSTALL_DIR/$CMD_NAME

# permisos
chmod +x $INSTALL_DIR/$CMD_NAME

echo ""
echo "======================================"
echo "  Instalacion completada ✔"
echo "======================================"
echo ""
echo "Ejecuta el comando:"
echo ""
echo "subscan"
echo ""
