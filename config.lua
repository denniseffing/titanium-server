---------------------------- OTServ configuration Titanium World 7.6 ------------------------------

-- datadir
datadir = "data/"

-- sets what map to load
map = "data/world/queen2.otbm"

-- OTBM for binary, SQL for SQL map, XML for OTX maps
mapkind = "OTBM"

-- SQL for acc/player info from SQL, XML for acc/player info from XML
sourcedata = "XML"

-- the message the player gets when he logs in
loginmsg = "event timeis over 1% XP loose!:.:.:.: registration: http://titanium.no-ip.org/hi.php .:.:.:. Spell list : http://titanium.no-ip.org/DSL/spells.html .:.:.:. Read the rules on forum: http://52422.rapidforum.com .:.:.:. summons: Dark guard, Monks Healler .:.:.:. No FIeld runes in the Arena ( like: do not use deathbomb in arena)."


-- the port otserv listens on
port = "7171"

-- name of our server
servername = "Newwave World 7.6"

-- name of the owner of our server
ownername = "Titan"

-- email of the owner of our server
owneremail = "TitaniumWorld@web.de"

-- the url for more server info
url = "newave.no-ip.org"

-- the location of the server
location = "Egypt"

-- the ip the server should redirect too
ip = "41.196.215.251"
-- The messagebox you sometimes get before you choose characters
motd = "Welcome to Titanium World Reloaded (http://titanium.no-ip.org/hi.html)"
motdnum="1"

-- use md5 passwords for accounts, yes/no
md5passwords = "no"

-- world type. options: pvp, no-pvp, pvp-enforced
worldtype = "pvp"

-- max number of players allowed
maxplayers = "600"

-- exhausted time in ms (1000 = 1sec)
exhausted = 1100

-- exhaustion time for healing spells (1000 = 1sec)
exhaustedheal = 1000

-- how many ms to add if the player is already exhausted and tries to cast a spell (1000 = 1sec)
exhaustedadd = 300

-- how long does the player has to stay out of fight to get pz unlocked in ms (1000 = 1sec)
pzlocked = 60*1000

-- allow multiple logins of the same char
allowclones = 0


-- vocation names
vocations = {"a Wizard", "a Mystic", "a Hunter", "a Crussader", "a Consellor","a Ninja"}
promoted_vocations = {" Dark Bloody Wizard", "an Ancient Demono Prophet", "a Skull Head Hunter", "a Doom Warcryer", "a Blade Ninja"}



--- SQL part
sql_host = "localhost"
sql_user = "root"
sql_pass = ""
sql_db   = "otserv"


--- SQL MAP part
sqlmap = "test_map"
map_host = "localhost"
map_user = "root"
map_pass = ""
map_db   = ""

------------------------- YurOTS basic configuration ---------------------------

-- name of your world (seen on the character list when logging in)
worldname = "TiTaNiUm World"

-- how often do server saves it's state (0 = off, 5 = 5min, 60 = hour)
autosave = 35

-- do you want to enable cap system? (yes/no)
capsystem = "yes"

-- do you want players to learn spells before they can use them? (yes/no)
learnspells = "no"

-- do you want to give premium account to all players? (yes/no)
freepremmy = "yes"

-- do you want premium players to wait in queue as others? (yes/no)
queuepremmy = "yes"

-- how much % of {exp, mana, skill, eq, bp} do you lose when dying
diepercent = {"1", "1", "0", "10", "10"}

-- how many summons player can have
maxsummons = 4

-- do you want to give summons for all vocations? (yes/no)
summonsallvoc = "yes"

-- chance of losing a spear when shot (0 - none lost, 100000 - all lost)
spearlosechance = 0

-- anti-afk - maximum idle time to kick player (1 = 1min)
kicktime = 90

-- maximum number of items player can keep in his/her depot
maxdepotitems = 5000

-- maximum number of items on a house tile (including those in containers)
maxhousetileitems = 3000

-- how much death entries are saved in players file (old are deleted)
maxdeathentries = 15

-- mana consumend by {snakebite, moonlight, volcanic, quagmire, tempest} rod
rodmana = {"2", "3", "5", "8", "13"}

-- mana consumed by wand of {vortex, dragonbreath, plague, cosmic energy, inferno}
wandmana = {"2", "3", "5", "8", "13"}

-- shooting range of {snakebite, moonlight, volcanic, quagmire, tempest} rod
rodrange = {"4", "3", "2", "1", "3"}

-- shooting range of  wand of {vortex, dragonbreath, plague, cosmic energy, inferno}
wandrange = {"4", "3", "2", "1", "3"}

-- damage of burst arrows blast
-- default is from (1*lvl+5*mlvl)*0.24 to (1*lvl+5*mlvl)*0.55
burstarrowdmg = {"1.0", "5.0", "0.24", "0.55"}

-- speed of attack in seconds (no-voc, sorc, druid, pally, knight)
speed = {"2.5", "2.0", "2.0", "1.0", "0.7"}

---------------- Life Ring and ROH ----
-- Life Ring Configuration
LifeRingHealth = "45"
LifeRingMana = "25"

-- ROH Configuration
RoHHealth = "90"
RoHMana = "45"

--------------------------- Multipliers and gains ------------------------------


-- experience multiplier (how much faster you got exp from monsters)
expmul = 10

-- experience multiplier for pvp-enforced (how much faster you got exp from players)
expmulpvp = 2

-- skill multipliers: 1 - rl tibia, 10 - ten times faster etc. {no-voc, sorcerer, druid, paladin, knight}
weaponmul = {"1", "1", "1", "1", "95"}
distmul = {"1", "1", "1", "90", "1"}
shieldmul = {"1", "1", "1", "70", "90"}
manamul = {"0", "3", "3", "2", "2"}

-- how much points of life,mana,cap do you get when advancing {no-voc, sorcerer, druid, paladin, knight}
capgain = {"10", "10", "10", "20", "25"}
managain = {"5", "30", "30", "15", "5"}
hpgain = {"5", "5", "5", "10", "15"}

-- how much faster do you recovery life,mana after eating food (1 - rl tibia)
healthtickmul = 15
manatickmul = 50

-------------------------------- Skull system ----------------------------------

-- how many unjustified kills to get a red skull
redunjust = 10

-- how many unjustified kills to get banned
banunjust = 21

-- how long do you have white skull after attacking player (1 = 1min)
hittime = 3

-- how long do you have white skull after killing player (1 = 1min)
whitetime = 30

-- how long do you have red skull (1 = 1min)
redtime = 6*40

-- how long do you have to wait to lose 1 unjustified kill (1 = 1min)
fragtime = 60

------------------------------ GM access rights --------------------------------

-- access to walk into houses and open house doors
accesshouse = 5

-- access to login without waiting in the queue or when server is closed
accessenter = 2

-- access to ignore damage, exhaustion, cap limit and be ignored by monsters
accessprotect = 3

-- access to broadcast messages and talk in colors (#c blabla - in public channels)
accesstalk = 1

-- access to move distant items from/to distant locations
accessremote = 3

-- access to see id and position of the item you are looking at
accesslook = 3
------

--Exp color
-- COLORS
-- (darkblue = 2, red = 180, orange = 199, gray = 121, green = 84) 
-- (lime = 102, yellow = 169, light blue = 71, white = 983) 
expcolor = 71


-- house price for 1 sqm
priceforsqm = 20000

-- max houses for player
maxhouses = 1

--Distance away from spawn to remove a monster - The Chaos
dist = 40

--Do you want the fancy animations?!
animations = "yes"
-- color of advance animations 
-- (darkblue = 2, red = 180, orange = 199, gray = 121, green = 84) 
-- (lime = 102, yellow = 169, light blue = 71, white = 983) 
anicolor = 84

--How many mana and Hp you recovery using Life Ring
liferingmana = "80"
liferinghealth = "40"

--How many mana and Hp you recovery using Ring of Healing
healingringmana = "120"
healingringhealth = "80"

-- How many percent increase magic damage when u have mystic turban?
mysticturban = 20

-- How many % increase magic damage when u have blue robe?
bluerobe = 7

--Do you want Atack Animations (Fire AXE etc.)?!  yes/no
atackanimations = "yes"

-- Name of City when depot id is 1 (for send parcels)
city1 = "a"

-- Name of City when depot id is 2 (for send parcels)
city2 = "b"

-- Name of City when depot id is 3 (for send parcels)
city3 = "c"

-- hours to lost in sex change

