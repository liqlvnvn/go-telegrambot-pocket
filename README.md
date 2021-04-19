1. Create an app on [pocket website](https://getpocket.com/developer/apps/). Save a consumer key.
2. Create a bot using @BotFather. Save a token.
3. Create .env file in root directory of the project with 3 variables:
```
TOKEN={Telegram Token}
CONSUMER_KEY={Pocket Consumer Key}
AUTH_SERVER_URL={IP of a Server or http://localhost/ for testing}
```
4. ```make image```
5. ```make start```
6. In Telegram enter the bot page.
```/start```
7. After authorization you can send any link to the bot, and a link will be saved in your Pocket account.