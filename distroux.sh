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
  echo "Distro $distro iniciada com sucesso."
else
  if [[ $? -eq 3 ]]; then
    echo 
  else
    proot-distro install $distro && proot-distro login $distro
  fi
fi
