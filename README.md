# EthPrice_ApiScrap Part 1
Going further with Shell and Bash on linux. This time i created a daemon to query Ether's market value from [CoinGecko API](https://www.coingecko.com/en/api)
Then pushing it to a SQLITE Database to study its value and detect high variations

## Scrapping API ETH Price Value

## basic Linux file and directory creation :

mkdir Project
cd Project
vim api.sh
chmod +x api.sh

## SQLITE3 Configuration
sudo apt-get install sqlite3
cd Project
sqlite3 MyDb
MyDb> Create Table Used()

# EthPrice_ApiScrap Part 2
I then create a frontend website that queries my values on my Database in order to host history of previous abnormal fluctuations detected. (Still in progress, maybe for long ... RIP)
