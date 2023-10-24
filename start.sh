if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TeluguZone/ TFI-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TFI-Bot
fi
cd /TFI-Bot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
