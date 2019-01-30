# LODSum
4IZ440 - ZS 2018/19 - Semestrální práce - Dominik Bláha

# Použití

## 1. Adresářová struktura

Pro použití LODSum na Vašem serveru je třeba vytvořit následující adresářovou strukturu:

rzzw/ **"název hlavního adresáře - tento adresář můžete nazvat jak chcete"**<br/>
├── todo/<br/>
├── logs/<br/>
│   └── err<br/>
├── done/<br/>
├── lodsum/<br/>
│   ├── LODSight.jar<br/>
│   └── config.properties<br/>
├── css/<br/>
│   ├── style.css<br/>
│   └── jquery-ui.css<br/>
├── js/<br/>
│   ├── script.js<br/>
│   └── autosize.js<br/>
├── lodsum.php<br/>
├── lodstat.php<br/>
├── lib.php<br/>
├── lodshell.sh<br/>
└── index.htm<br/>
    
## 2. Změny absolutních cest v souborech

### lodshell.sh

**GitHub verze:**<br/>
2. řádek - cd /data/www/blaha/rzzw/todo/<br/>
19. řádek - nohup java -jar /data/www/blaha/rzzw/lodsum/LODSight.jar /data/www/blaha/rzzw/lodsum/config.properties $attr 1>>$out 2>>$err &

**Vaše verze:**<br/>
2. řádek - cd **"cesta k Vašemu hlavnímu adresáři"**/todo/<br/>
19. řádek - nohup java -jar **"cesta k Vašemu hlavnímu adresáři"**/lodsum/LODSight.jar **"cesta k Vašemu hlavnímu adresáři"**/lodsum/config.properties $attr 1>>$out 2>>$err &

## 3. Nastavení pro cron - soubor cron_setup

### crontab -e

**GitHub verze:**<br/>
*/10 * * * * php -q /data/www/blaha/rzzw/lodsum.php status<br/>
*/8 * * * * sh /data/www/blaha/rzzw/lodshell.sh<br/>
*/6 * * * * php -q /data/www/blaha/rzzw/lodstat.php sum

**Vaše verze:**<br/>
*/10 * * * * php -q **"cesta k Vašemu hlavnímu adresáři"**/lodsum.php status<br/>
*/8 * * * * sh **"cesta k Vašemu hlavnímu adresáři"**/lodshell.sh<br/>
*/6 * * * * php -q **"cesta k Vašemu hlavnímu adresáři"**/lodstat.php sum

