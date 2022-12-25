if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kikkaras/brightprincess.git /brightprincess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /brightprincess
fi
cd /brightprincess
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
