pkg install proot &&
banner='
╔═══╦══╦═══╦════╦═══╦═══╦╗─╔╦═╗╔═╗
╚╗╔╗╠╣╠╣╔═╗║╔╗╔╗║╔═╗║╔═╗║║─║╠╗╚╝╔╝
─║║║║║║║╚══╬╝║║╚╣╚═╝║║─║║║─║║╚╗╔╝
─║║║║║║╚══╗║─║║─║╔╗╔╣║─║║║─║║╔╝╚╗
╔╝╚╝╠╣╠╣╚═╝║─║║─║║║╚╣╚═╝║╚═╝╠╝╔╗╚╗
╚═══╩══╩═══╝─╚╝─╚╝╚═╩═══╩═══╩═╝╚═╝'

echo "$banner"
read -p "Qual distro você quer usar? " distro

if proot-distro login "$distro"; then
echo 
else
    proot-distro install "$distro" && proot-distro login "$distro"
fi
