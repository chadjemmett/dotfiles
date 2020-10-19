
# Programs=(postman, google-chrome, slack)
Programs=(nudoku 2048-cli greed)


for i in "${Programs[@]}"; do
  # brew install $i
  sudo apt-get install $i
done
