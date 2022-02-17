if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/LEGEND-OS/HACKBOT.git /HACKBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /HACKBOT
fi
cd /HACKBOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
