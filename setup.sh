#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' 

echo -ne "\033]0;Depin Alliance Bot by @MeoMunDep\007"

print_green() {
    echo -e "${GREEN}$1${NC}"
}

print_yellow() {
    echo -e "${YELLOW}$1${NC}"
}

print_red() {
    echo -e "${RED}$1${NC}"
}

chmod +x "$0"

if [ -d "../node_modules" ]; then
    print_green "Found node_modules in parent directory"
    MODULES_DIR=".."
else
    print_green "Using current directory for node_modules"
    MODULES_DIR="."
fi

create_default_configs() {
    cat > configs.json << EOL
{
  "delayEachAccount": [1, 1],
  "timeToRestartAllAccounts": 300,
  "skipInvalidProxy": false,
  "howManyAccountsRunInOneTime": 100,
  "isDoTasks": true,
  "isPlayGames": true,
  "isBuyCards": true,
  "maxPriceOfItems": 50000000,
  "howManyPiecesOfEachItem": 1,
  "howManyBoxsDoYouWantToBuy": 5,
  "isUpgradeSkills": true,
  "howManyTimesToUpgrade_Programming_Skill": 5,
  "howManyTimesToUpgrade_Financial_Skill": 5,
  "howManyTimesToUpgrade_Innovation_Skill": 5,
  "howManyTimesToUpgrade_DataAnalysis_Skill": 5,
  "howManyTimesToUpgrade_StrategicPlanning_Skill": 5,
  "howManyPointsYouWantToContributeToLeague": 100000,
  "isContributeAutomatic": true,
  "referralCode": "OdZUfRzp80",
  "itemThatYouWantToContributeToLeague": ["RAM_4GB", 1]
}
EOL
}

check_configs() {
        if ! node -e "try { const cfg = require('./configs.json'); if (!cfg.howManyAccountsRunInOneTime || typeof cfg.howManyAccountsRunInOneTime !== 'number' || cfg.howManyAccountsRunInOneTime < 1) throw new Error(); } catch { process.exit(1); }"; then
        print_red "Invalid configuration detected. Resetting to default values..."
        create_default_configs
        print_green "Configuration reset completed."
    fi
}

print_yellow "Checking configuration files..."
if [ ! -f configs.json ]; then
    create_default_configs
    print_green "Created configs.json with default values"
fi

check_configs

for file in datas.txt proxies.txt; do
    if [ ! -f "$file" ]; then
        touch "$file"
        print_green "Created $file"
    fi
done

print_green "Configuration files have been checked."

print_yellow "Checking dependencies..."
cd "$MODULES_DIR"
npm install user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy
cd - > /dev/null
print_green "Dependencies installation completed!"

print_green "Starting the bot..."
node meomundep
