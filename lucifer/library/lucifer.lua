---@meta _

---@author:  2024-04-28

---
---### LUCIFER BUILT-IN SECTION
---

---@enum Bubble
Bubble = {
    none = 0,
    talk = 1,
    brb = 2
}

---@enum Platform
Platform = {
    macos = 2,
    android = 4,
    windows = 0
}

---@enum BotStatus
BotStatus = {
    server_busy = 10,
    bypassing_server_data = 28,
    bad_name_length = 13,
    stopped = 26,
    server_overload = 7,
    http_block = 12,
    getting_server_data = 27,
    offline = 0,
    changing_subserver = 25,
    network_restricted = 17,
    high_ping = 24,
    online = 1,
    wrong_password = 2,
    player_entered = 22,
    advanced_account_protection = 6,
    captcha_requested = 20,
    mod_entered = 21,
    location_banned = 4,
    error_connecting = 18,
    logon_fail = 19,
    maintenance = 9,
    invalid_account = 14,
    account_restricted = 16,
    version_update = 5,
    guest_limit = 11,
    too_many_login = 8,
    high_load = 23,
    account_banned = 3
}

---@enum Proxy
Proxy = {
    none = 0,
    http = 1,
    https = 2,
    socks5 = 3
}


---@enum CaptchaStatus
CaptchaStatus = {
    no_captcha = 0,
    invalid_key = 7,
    wrong = 4,
    invalid_token = 8,
    solved = 2,
    not_found = 5,
    failed = 3,
    solving = 1,
    no_access = 6
}

---@enum Event
Event = {
    update_packet = 1,
    got_punched = 5,
    generic_text = 3,
    render = 7,
    track_packet = 2,
    mod_enter = 6,
    variantlist = 0,
    game_message = 4
}

---@enum StorageType
StorageType = {
    seed = 1,
    pack = 0
}

---@enum Method
Method = {
    post   = 1,
    patch  = 2,
    get    = 0,
    put    = 3,
    head   = 5,
    delete = 4
}

---@class InventoryItem A structure representing an item in an inventory.
---@field public isActive boolean a boolean indicating whether or not the item is currently weared.
---@field public count number an integer representing the number of this item in the inventory.
---@field public id number an integer representing the ID of the item.

---@class Inventory The Inventory class represents a player's inventory in the game. It contains information about the items the player has, including the item ID, count, and whether the item is active.
---@field public items userdata A table containing all the InventoryItem objects in the inventory.
---@field public slotcount number The number of slots available in the inventory.
---@field public version number The version of the inventory.
---@field public itemcount number The number of items in the inventory.
local Inventory = {}

--- Returns the InventoryItem with the specified item ID. It returns nil if not found.
---@param item number|string
---@return InventoryItem
---@nodiscard
function Inventory:getItem(item) end

--- Returns a table containing all the InventoryItem objects in the inventory.
---@return InventoryItem[]
---@nodiscard
function Inventory:getItems() end

--- Returns the InventoryItem count with the
---@param id number|string
---@return number
---@nodiscard
function Inventory:findItem(id) end

--- Returns the InventoryItem count with the
---@param id number|string
---@return number
---@nodiscard
function Inventory:getItemCount(id) end

--- Returns true if the player can collect the item with the specified item ID, false otherwise.
---@param itemID number
---@return boolean
function Inventory:canCollect(itemID) end

---@class ProxyManager
---@field public cooldown number
---@field public switch_on_shadow boolean
---@field public main_ip_reference number
---@field public auto_switch boolean
---@field public spread boolean
---@field public custom_http_proxy boolean
---@field public auto_check boolean
---@field public localize boolean
---@field public use_rotate boolean
---@field public switch_on_block boolean
---@field public http_cooldown number
---@field public proxies ProxyData
---@field public switch_on_ban boolean
---@field public timeout number
local ProxyManager = {}

---@param proxy string
function ProxyManager:addProxy(proxy) end

---@param num number
function ProxyManager:setLimit(num) end

---@param ip string
---@param port number
function ProxyManager:removeProxy(ip, port) end

---@class WorldManager
local WorldManager = {}

--- Selects the farm world on the menu.
---@param name string
function WorldManager:selectFarm(name) end

--- Adds new rotation farm to the list.
---@param name string
---@param id number
function WorldManager:addFarm(name, id) end

--- Removes Farm World from list if it exists.
---@param name string
function WorldManager:removeFarm(name) end

--- Unselects the storage world on the menu.
---@param name string
---@param type StorageType
function WorldManager:unselectStorage(name, type) end

---@param name string
function WorldManager:unselectFarm(name) end

--- Selects the storage world on the menu.
---@param name string
---@param type StorageType
function WorldManager:selectStorage(name, type) end

--- Distributes everything to the bots.
function WorldManager:assign() end

--- Applies selected farms and storages to the bot.
---@param bot Bot
function WorldManager:apply(bot) end

--- Unselects all farm and storage worlds.
function WorldManager:unselectAll() end

--- Removes Storage World from list if it exists.
---@param name string
---@param type StorageType
function WorldManager:removeStorage(name, type) end

--- Selects all farm and storage worlds.
function WorldManager:selectAll() end

--- Applies selected farms to the bot.
---@param bot Bot
function WorldManager:applyFarm(bot) end

--- Distributes farm worlds to the bots.
function WorldManager:assignFarm() end

---@param name string
---@param type StorageType
---@param id number
function WorldManager:addStorage(name, type, id) end

---@class Info
---@field public texture_hash number
---@field public drop_chance number
---@field public editable_type number
---@field public level number
---@field public null_Item boolean
---@field public flags2 number
---@field public action_type number
---@field public texture_y number
---@field public name string
---@field public flags1 number
---@field public texture string
---@field public seed_overlay_color number
---@field public item_kind number
---@field public id number
---@field public strength number
---@field public rarity number
---@field public item_category number
---@field public clothing_type number
---@field public hit_sound_type number
---@field public grow_time number
---@field public seed_color number
---@field public collision_type number

---@class PathData
---@field public x number
---@field public y number

---@class AutoClear
---@field public seed_storage string
---@field public item_storage string
---@field public no_number boolean
---@field public keep_lock boolean
---@field public name_length number
---@field public enabled boolean
---@field public keep_jammer boolean

---@class AutoSynth
---@field public tool_storage string
---@field public world string
---@field public x number
---@field public y number
---@field public reward_storage string
---@field public enabled boolean

---@class AutoPlant
---@field public loop_mode boolean
---@field public enabled boolean
local AutoPlant = {}

--- function to remove world from list.
---@param world string
function AutoPlant:remove(world) end

--- function to set storage seed with format world|id.
---@param cred string
function AutoPlant:setStorage(cred) end

--- function to add world with format world:id:seedId
---@param cred string
function AutoPlant:add(cred) end

---@class AutoGeiger
---@field public use_chocolate boolean --- Enable or disable use hot chocolate
---@field public insta_path boolean --- Enable or disable insta path to green signal
---@field public enabled boolean --- Enable Auto geiger.
---@field public afk boolean --- Enable or disable afk to wait dead geiger.
local AutoGeiger = {}

---@param world string
function AutoGeiger:removeStorage(world) end

--- function to added geiger world.
---@param world string
function AutoGeiger:addWorld(world) end

--- func to spread world for bot.
function AutoGeiger:spread() end

--- func to add storage geiger.
---@param world string
function AutoGeiger:addStorage(world) end

---@param world string
function AutoGeiger:removeWorld(world) end

---@class AutoFish
---@field public auto_trash boolean --- Enable or disable auto trash while auto fish.
---@field public auto_trawler boolean --- Enable or disable auto eat consumable trawler.
---@field public y number --- Set position y fish.
---@field public auto_drill boolean --- Enable or disable to use hand drill.
---@field public auto_gemonade boolean -- Enable or disable auto eat consumable gemonade.
---@field public reward_storage string -- Credentials of reward storage.
---@field public item_storage string -- Credentials to taking item storage.
---@field public world string -- World for auto fish.
---@field public x number -- set position x fish.
---@field public enabled boolean -- Enable or auto fish.
local AutoFish = {}

--- func to get bait
function AutoFish:getBait() end

---@param id number
function AutoFish:setBait(id) end

---@param id number
function AutoFish:setRod(id) end

function AutoFish:getRod() end

---@class AutoSetPos
---@field public world string -- Destination world to set pos.
---@field public move_delay number -- move delay to pos.
---@field public warp_delay number -- warp delay for each send packet
---@field public enabled boolean -- Enable auto set pos.

---@class AutoCarnival
---@field public auto_trash boolean -- Auto trash while auto carnival.
---@field public ticket_storage string -- Credentials storage to take ticket.
---@field public auto_buy boolean -- Auto exchange to ticket.
---@field public selected_game number -- Selected game carnival.
---@field public reward_storage string -- Credentials storage to storing reward item.
---@field public enabled boolean -- Enable auto carnival

---
---### AUTO HARVEST BUILT-IN SECTION
---
--- Example usage:
---
--- local harvest = getBot().auto_harvest
---
--- harvest:setStorage("NURON|123")
---
--- harvest:add("NURON:ID:4585")
---
--- harvest.enabled = true
---@class AutoHarvest
---@field public recycle_mode boolean -- Enable or disable automatic block recycling.
---@field public loop_mode boolean -- Enable or disable farm loop.
---@field public auto_take_fuel boolean -- Enable or disable automatic fuel collection.
---@field public enabled boolean -- Enable automatic harvesting.
local AutoHarvest = {}

---@param cred string -- add harvest world with format world:id:itemId.
function AutoHarvest:add(cred) end

---@param world string -- remove world from list.
function AutoHarvest:remove(world) end

---@param world string -- Credentials storage to storing block n seed.
function AutoHarvest:addStorage(world) end

---@class AutoSpam
---@field public interval number
---@field public show_emote boolean
---@field public use_color boolean
---@field public random_interval boolean
---@field public enabled boolean
local AutoSpam = {}

---@param index number
---@param message string
function AutoSpam:setText(index, message) end

---@class Rotation
---@field public break_y number
---@field public auto_leave_on_player boolean
---@field public harvest_roots boolean
---@field public auto_exchange boolean
---@field public loop_mode boolean
---@field public one_by_one boolean
---@field public auto_rest boolean
---@field public harvest_interval number
---@field public dynamic_delay boolean
---@field public enabled boolean
---@field public world_limit number
---@field public status number
---@field public index number
---@field public visit_random_worlds boolean
---@field public seed_drop_amount number
---@field public auto_fill boolean
---@field public warp_interval number
---@field public harvest_until_level boolean
---@field public zigzag_mode boolean
---@field public pnb_world string
---@field public plant_interval number
---@field public farms table
---@field public ignore_plant boolean
---@field public break_x number
---@field public clear_objects boolean
---@field public break_interval number
---@field public id number
---@field public auto_break_position boolean
---@field public pnb_in_home boolean

---@class AutoMessage
---@field public victim_uid number
---@field public messaging boolean
---@field public ignore_admin boolean
---@field public interval number
---@field public type number
---@field public loop_mode boolean
---@field public auto_sb boolean
---@field public anti_exit boolean
---@field public uid_count number
---@field public message string
---@field public enabled boolean
---@field public growid_count number

---@class AutoCrime
---@field public tool_storage string
---@field public reward_storage string
---@field public world string
---@field public auto_wave boolean
---@field public enabled boolean A boolean indicating whether the auto-crime feature is on or off.
---@field public auto_bbq boolean
local AutoCrime = {}

---@param index number
---@param active boolean
function AutoCrime:setActive(index, active) end

---@class AutoCook
---@field public world string A properties that set of food storage.
---@field public food_storage string A properties that set of food storage.
---@field public x number
---@field public y number
---@field public interval number The interval between packets.
---@field public ingredient_storage string A properties that set of ingridient storage.
---@field public is_cooking boolean A boolean indicating whether the bot is cooking or not.
local AutoCook = {}

---@param temp number -- A function that updates selected temperature. (0: low, 1: medium, 2: high)
function AutoCook:setTemperature(temp) end

--- A function that changes state of selected tiles on menu.
---@param index number
---@param active boolean
function AutoCook:setActive(index, active) end

--- A function that updates selected food by food index. Range: [0, 33]
---@param index number
function AutoCook:setFood(index) end

--- A function that starts auto-cook.
function AutoCook:start() end

--- A function that stops auto-cook.
function AutoCook:stop() end

---@class AutoCombine
---@field public output_world string
---@field public world string
---@field public output_id number
---@field public enabled boolean
---@field public ingredient_storage string
local AutoCombine = {}

function AutoCombine:setIngridient() end

---@class AutoEvent
---@field public storage string
---@field public enabled boolean

---@class AutoFossil
---@field public fossil_storage string
---@field public use_brush boolean
---@field public tool_storage string
---@field public place_rock boolean
---@field public loop_mode boolean
---@field public enabled boolean

---@class AutoParkour
---@field public block number
---@field public type number The type of parkour. (0: wolf, 1: fenrir, 2: clash)
---@field public limit number The limit of the consuming ticket.
---@field public enabled boolean A boolean indicating whether the auto-parkour feature is on or off.
local AutoParkour = {}


--- A function that updates the webhook link.
---@param url string
function AutoParkour:setWebhook(url) end

--- A function that updates the ticket storage. (Must be uppercase.) (Format: NAME|ID)
---@param world string
function AutoParkour:setTicket(world) end

---  function that updates the reward storage. (Must be uppercase.) (Format: NAME|ID)
---@param world string
function AutoParkour:setReward(world) end

---@class AutoFarm
---@field public seed_storage string World to store seed.
---@field public speed number Farming Speed.
---@field public drop_seeds boolean Is Drop-seeds mode actived.
---@field public auto_place boolean Is Auto-Place mode actived.
---@field public auto_remote boolean Is Auto-remove mode actived
---@field public block_storage string World to take block.
---@field public auto_break boolean Is Auto-Break mode actived.
---@field public mag_y number position x magplant.
---@field public mag_x number position y magplant.
---@field public id number Farming Item id.
---@field public auto_retrieve boolean Is Auto-retrieve mode actived.
---@field public enabled boolean A boolean indicating whether the auto-farm feature is on or off.
local AutoFarm = {}

--- A function that will toggle active status by menu index.
---@param index number
---@param active boolean
function AutoFarm:setActive(index, active) end

---@class AutoTransfer
---@field public per_item boolean Item's buy method.
---@field public set_price number Item's price to set on vend.
---@field public restock_vend boolean A boolean indicating whether the restock-vend feature is on or off.
---@field public enabled boolean A boolean indicating whether the auto-transfer feature is on or off.
---@field public input string A prorperties that updates the take storage. (Must be uppercase.) (Format: NAME:ID)
---@field public buy_price number Item's price to buy from vend.
---@field public drop_vertical boolean A boolean indicating whether the drop-vertical feature is on or off.
---@field public output string A prorperties that updates the drop storage. (Must be uppercase.) (Format: NAME:ID)
---@field public itemid number  The itemid of transfering item.
---@field public auto_vend boolean A boolean indicating whether the auto-vend feature is on or off.

---@class Bot: _G
---@field public tutorial_world string A read-only property that returns tutorial world.
---@field public auto_clear AutoClear Auto clear instance.
---@field public y number The Y position of the player on tile.
---@field public status number The status of the player.
---@field public auto_collect boolean A boolean property that enables/disables auto-collect.
---@field public auto_leave_on_admin boolean A boolean property that enables/disables auto-leave when an admin is in the world.
---@field public move_interval number The interval between movement packets on pathfinding.
---@field public auto_synth AutoSynth Auto Synth Instance.
---@field public rest_interval number The interval between rests.
---@field public object_collect_delay number A number property that sets the delay for collecting spawned objects.
---@field public ignore_essences boolean A boolean property that enables/disables ignoring essences.
---@field public collect_range number A number property that sets the range for collecting.
---@field public auto_accept boolean A boolean property that enables/disables auto-accept
---@field public selected boolean Is bot selected on the menu.
---@field public collect_all boolean A bool property that enables/disables collect all mode while collecting.
---@field public auto_leave_on_mod boolean A boolean property that enables/disables auto-leave when a mod is in the world.
---@field public auto_stop boolean A boolean property that enables/disables legit-mode.
---@field public auto_plant AutoPlant Auto Plant Instance.
---@field public maximum_ping number
---@field public auto_build userdata Auto build isntance.
---@field public legit_mode boolean A boolean property that enables/disables legit-mode.
---@field public auto_geiger AutoGeiger Auto Geiger Instance.
---@field public auto_fish AutoFish Auto Fish instance.
---@field public auto_disconnect boolean A boolean property that enables/disables auto-disconnect.
---@field public auto_set_pos AutoSetPos Auto set pos instance.
---@field public auto_carnival AutoCarnival Auto Carnival instance.
---@field public auto_harvest AutoHarvest Auto harvest instance.
---@field public auto_tutorial boolean A boolean property that enables/disables auto-tutorial.
---@field public rest_time number Rest time of the bot.
---@field public collect_interval number A number property that sets the interval for collecting.
---@field public auto_spam AutoSpam Auto spam instance.
---@field public home_world string A read-only property that returns current home-world.
---@field public anti_toxic boolean A boolean property that enables/disables anti-toxic.
---@field public rotation Rotation Rotation instance.
---@field public level number The level of the bot.
---@field public auto_message AutoMessage auto message instance.
---@field public auto_rest_mode boolean A boolean property that enables/disables auto-rest-mode.
---@field public move_range number The range between tiles while pathfinding.
---@field public pearl_count number The number of pearls the bot has.
---@field public auto_crime AutoCrime Auto crime instance.
---@field public history table A read-only property that returns recently worlds.
---@field public reconnect_interval number Reconnect interval of the bot.
---@field public auto_cook AutoCook Auto cook instance.
---@field public auto_follow boolean A boolean property that enables/disables Auto follow people.
---@field public auto_combine AutoCombine Auto combine instance.
---@field public auto_event AutoEvent Auto event instance
---@field public name string The name of the bot.
---@field public auto_take_pickaxe boolean A boolean property that enables/disables auto-take-pickaxe.
---@field public auto_wear boolean A boolean property that enables/disables auto_wear.
---@field public bypass_logon boolean A boolean property that enables/disables bypass logon.
---@field public ignore_gems boolean A boolean property that enables/disables ignoring gems.
---@field public consume_id number The item id of the consumable.
---@field public captcha_status CaptchaStatus The status of the captcha.
---@field public disconnect_on_rest boolean A boolean property that enables/disables disconnect-on-rest.
---@field public x number The X position of the player on tile.
---@field public anti_fire boolean A boolean property that enables/disables anti-fire.
---@field public auto_reconnect boolean A boolean property that enables/disables auto-reconnect.
---@field public auto_expand_inventory boolean A boolean property that enables/disables auto-expand-inventory.
---@field public auto_fossil AutoFossil Auto fossil instance.
---@field public is_account_secured boolean A read-only property that returns whether the bot account is secured.
---@field public consume_interval number The interval between consumes.
---@field public collect_path_check boolean A bool property that enables/disables path check while collecting.
---@field public auto_parkour AutoParkour Auto parkour instance.
---@field public auto_consume boolean A boolean property that enables/disables auto-consume.
---@field public auto_transfer AutoTransfer Auto transfer instance.
---@field public index number A read-only property that returns index of bots.
---@field public auto_ban boolean A boolean property that enables/disables auto-ban.
---@field public hide_gems boolean A boolean property that enables/disables hide-gems.
---@field public auto_trash boolean  boolean property that enables/disables auto-trash.
---@field public gem_count number The number of gems the bot has.
---@field public wear_id number The item id of the wear.
---@field public obtained_gem_count number The number of gems the bot obtained.
---@field public auto_farm AutoFarm Auto farm instance.
local Bot = {}


--- Sending packet to retrieve gaia or gaut
---@param x number
---@param y number
---@param count? number
function Bot:retrieve(x, y, count) end

--- Send a server packet from the bot.
---@param type number
---@param packet string
function Bot:sendPacket(type, packet) end

--- Send a respawn packet
function Bot:respawn() end

--- Get a role mission
---@return string
function Bot:getRoleMission() end

--- Send a collect packet.
---@param range number
---@param int number
function Bot:collect(range, int) end

--- Send a punch packet on specific position.
---@param x number
---@param y number
function Bot:hit(x, y) end

--- Check if the bot is specific tile or not.
---@param x number
---@param y number
---@return boolean
---@nodiscard
function Bot:isInTile(x, y) end

--- Send a disconnect packet
function Bot:disconnect() end

--- Check if the bot on tutorial world.
---@return boolean
function Bot:isInTutorial() end

--- Set bubble of the bot.
---@param enum Bubble
function Bot:setBubble(enum) end

--- Set Platform of the bot
---@param enum Platform
function Bot:setPlatform(enum) end

--- Updates bot.
---@param name string
function Bot:updateBot(name) end

--- Updates bot.
---@param name string
---@param password string
function Bot:updateBot(name, password) end

--- Updates bot.
---@param name string
---@param mac string
---@param rid string
function Bot:updateBot(name, mac, rid) end

--- Updates bot.
---@param name string
---@param password string
---@param mac string
---@param rid string
function Bot:updateBot(name, password, mac, rid) end

--- Sending packet to buy from store.
---@param debug string
function Bot:buy(debug) end

--- Sending packet to buy from vend.
---@param id number --- item id
---@param count number --- item count u want to buy
---@param price number --- maximum price to buy
function Bot:buy(id, count, price) end

--- Send packet raw to eat consumable.
---@param id number
function Bot:use(id) end

--- Send a drop packet to drop an item id with custom count if there is any.
---@param id number
---@param count number
function Bot:fastDrop(id, count) end

--- Send packet raw to collect item from object id
---@param oid number
---@param range number
function Bot:collectObject(oid, range) end

--- Get play time of bot.
---@return number
function Bot:getPlaytime() end

---@param id number
function Bot:activate(id) end

--- Check if the bot is world or not.
---@param world? string
---@return boolean
---@nodiscard
function Bot:isInWorld(world) end

--- Send a move packet with relative position.
---@param x number
---@param y number
function Bot:moveTo(x, y) end

--- Sending packet to wrench player by specific netid
---@param netid number
function Bot:wrenchPlayer(netid) end

--- Set flags of bot country.
---@param id string
function Bot:setCountry(id) end

--- Set rid of bot
---@param rid string
function Bot:setRid(rid) end

--- Send a chat packet from the bot.
---@param msg string
function Bot:say(msg) end

--- Check if the bot rest or not.
---@return boolean
function Bot:isResting() end

--- Find path to position
---@param x number
---@param y number
function Bot:findPath(x, y) end

--- Get age of the bot.
---@return number
function Bot:getAge() end

--- Get path of the specific position.
---@param x number
---@param y number
---@return PathData[]
---@nodiscard
function Bot:getPath(x, y) end

--- Check if script is running on the bot or no.
---@return boolean
function Bot:isRunningScript() end

--- Send a wear packet to wear an clothing item id.
---@param id number
---@return nil
function Bot:wear(id) end

--- Send packet to join specific world.
---@param world string
---@param id? string
---@return nil
function Bot:warp(world, id) end

--- Send packet to leave from world.
---@return nil
function Bot:leaveWorld() end

--- function to update proxy socks5.
---@param data string
function Bot:updateProxy(data) end

--- Send packet to trash item.
---@param id number
---@param count number
function Bot:trash(id, count) end

--- Set mac of bot.
---@param mac string
function Bot:setMac(mac) end

--- Check if the bot in area or not.
---@param px number
---@param py number
---@param dx number
---@param dy number
---@return boolean
function Bot:isInArea(px, py, dx, dy) end

--- func to update ubi bot.
---@param mail string
---@param pass string
---@param user? string
function Bot:updateUbiBot(mail, pass, user) end

--- Get active time of bot.
---@return number
---@nodiscard
function Bot:getActiveTime() end

--- Set the skin of the bot.
--- @param id number The skin ID. Must be a number between 1 and 6.
function Bot:setSkin(id) end

--- Send a packet to move left side.
---@param range? number
function Bot:moveLeft(range) end

--- Send a packet to collect by specific id
---@param id number
function Bot:collectByID(id) end

--- Send a packet to set direction of bot
---@param bool boolean true to left,false to right
function Bot:setDirection(bool) end

--- Check if the bot is supporter or no
---@return boolean
---@nodiscard
function Bot:isSupporter() end

--- Send a packet to enter door.
function Bot:enter() end

--- Send packet to trash item.
---@param id number
---@param count number
function Bot:fastTrash(id, count) end

--- Send a connect packet.
function Bot:connect() end

--- Execute script from executor.
---@param script string
function Bot:runScript(script) end

--- Get ping of bot.
---@return number
---@nodiscard
function Bot:getPing() end

---@param x number
---@param y number
function Bot:active(x, y) end

--- Send a packet to move right side.
---@param range? number
function Bot:moveRight(range) end

--- Send a wrench packet on specific position.
---@param x number
---@param y number
function Bot:wrench(x, y) end

--- func to stop script from execute
function Bot:stopScript() end

--- Send a place packet on specific position with item id.
---@param x number
---@param y number
---@param id number
function Bot:place(x, y, id) end

---Send a drop packet to drop an item id with custom count if there is any.
---@param id number
---@param count number
function Bot:drop(id, count) end

--- Send a move packet to specific tile position
---@param x number
---@param y number
function Bot:moveTile(x, y) end

--- Send a unwear packet to unwear an weared clothing item id.
---@param id number
function Bot:unwear(id) end

--- Send a packet to move up side.
---@param range number
function Bot:moveUp(range) end

--- Send a packet to move down side.
---@param range number
function Bot:moveDown(range) end

---@class TileExtra The extra datas of the tile.
---@field public length number Label Length
---@field public label string Tile Label
---@field public audio_label string Tile Audio Label
---@field public crystal_count number Tile Crystal Count
---@field public locked number is Door Locked
---@field public growth number Tile Growth Data
---@field public uid number Primary UID
---@field public owner number Primary UID
---@field public id number Primary Item ID
---@field public item1 number Primary Item ID
---@field public shelf1 number Shelf Item #1
---@field public shelf2 number Shelf Item #2
---@field public shelf3 number Shelf Item #3
---@field public shelf4 number Shelf Item #4
---@field public note number Note ID of steam organ
---@field public note_volume number Note Volume of Audio
---@field public temperature number Oven Temperature
---@field public slab_state number Slab State
---@field public kranken_pattern_id number Kranken Pattern
---@field public cycle number Infinity Weather Cycle
---@field public storm_cycle number Storm Cloud Cycle
---@field public big_node number Chemsynth Big Node Color ID
---@field public small_node number Chemsynth Small Node Color ID
---@field public hat number Hat ID
---@field public shirt number Shirt ID
---@field public pant number Pant ID
---@field public shoes number Shoes ID
---@field public eye number Eye ID
---@field public hand number Hand ID
---@field public wing number Wing ID
---@field public hair number Hair ID
---@field public neck number Neck ID
---@field public pet_count number Pet count on cage
---@field public ghost_count number Ghost Jar count on SSU
---@field public expression number Facial Expression
---@field public admin_count number Admin Count on a Lock or VIP Entrance
---@field public egg_count number Bunny Egg Count
---@field public gbc_count number Golden Booty Chest Count on Well of Love
---@field public fish_count number Fish Count on Port
---@field public item_count number Item Count
---@field public ingredient_count number Ingredient Count on Oven
---@field public command_count number Command Count on Cybots
---@field public item_price number Item Price on Vend
---@field public food_satiety number Food Satiety of Silkworm or Fish
---@field public water_satiety number Water Satiety of Silkworm
---@field public cloud_animation_time number Cloud Animation Time on Storm Cloud
---@field public is_angelic_punched number Angelic Cloud is punched
---@field public role number Portrait Role ID (6 = default)
---@field public xp number Training Fish XP
---@field public spirit_item_count number Spirit Item Count
---@field public sick_growth number Sick growth of Silkworm
---@field public status number Status of Automation Machines (Tm, Hog)
---@field public level number Training Fish Level
---@field public required_player_count number Required player count for spirit board.
---@field public gem_count number Gem count on automation machines
---@field public item2 number Item2 (TOE 2nd Item)
---@field public item2_count number Item2 Count
---@field public fruit_count number Fruit Count of a Tree
---@field public random_number number Random Number on block like dice (Starts from 0)
---@field public achievement number Achievement ID
---@field public mount_lb number Displaying Fish Mount LB
---@field public lb number Fish LB
---@field public toe_harvesting boolean Toe Harvesting Enabled
---@field public toe_collecting_seeds boolean Toe Collecting Seeds Enabled
---@field public emote_timer number Emote Timer of Silkworm
---@field public flags number Checkbox Flags
---@field public instrument number Instrument on Steam Organ
---@field public angelic_value number Angelic Value as Number
---@field public emote number Silkworm Emote
---@field public skincolor number Color
---@field public blockcolor number Color
---@field public itemcolor number Color
---@field public color number Color


---@class Tile The Tile class represents a single tile in the game world.
---@field public flags number
---@field public background number
---@field public x number
---@field public fg number
---@field public foreground number
---@field public parent number
---@field public bg number
---@field public y number
local Tile = {}

--- Returns a pointer to the extra data field for the tile. Returns nil if the tile has no extra data.
---@return TileExtra
---@nodiscard
function Tile:getExtra() end

--- Returns true if tree is ready.
---@return boolean
---@nodiscard
function Tile:canHarvest() end

--- Returns true if the flag is actived on tile.
---@param id number
---@return boolean
---@nodiscard
function Tile:hasFlag(id) end

--- Returns true if the tile has an extra data field, false otherwise.
---@return boolean
function Tile:hasExtra() end

---@class NPC The NPC class that represents a npc in a world. Which is like ghost, pinata etc.
---@field public type number The type of the npc.
---@field public y number Current x-coordinate of npc.
---@field public x number Current y-coordinate of npc.
---@field public unk string Unk Value.
---@field public destx number Destination x of npc. (Aka next position)
---@field public id number The world index of the npc.
---@field public var number NPC variable.
---@field public desty number Destination y of npc. (Aka next position)

---@class Adventure
---@field public x number
---@field public id number
---@field public y number

---@class Clothes The Clothes class represents the clothing items that a player's avatar is wearing. It contains information about each item, including the item ID.
---@field public hat number The ID of the hat the avatar is wearing.
---@field public shirt number The ID of the shirt the avatar is wearing.
---@field public pants number The ID of the pants the avatar is wearing.
---@field public shoes number The ID of the shoes the avatar is wearing.
---@field public face number The ID of the face item the avatar is wearing.
---@field public hand number The ID of the hand item the avatar is wearing.
---@field public wings number The ID of the wings item the avatar is wearing.
---@field public mask number The ID of the mask the avatar is wearing.
---@field public neck number The ID of the neck item the avatar is wearing.
---@field public ances number The ID of the accessory item the avatar is wearing.
---@field public unk1 number An unknown value related to the avatar's clothing.
---@field public unk2 number An unknown value related to the avatar's clothing.

---@class Player The Player class represents an in-game player and contains various properties to access information about the player.
---@field public clothes Clothes An instance of the Clothes class representing the clothes of the player. See Clothes class documentation for more details.
---@field public team number
---@field public isFriendWithOwner boolean A boolean indicating whether the player is a friend of the owner.
---@field public roleskin number The role skin of the player.
---@field public roleicon number The role icon of the player.
---@field public country string The country of the player as a string.
---@field public posx number The X position of the player.
---@field public isLocalPlayer boolean  A boolean indicating whether the player is the local player.
---@field public name string The display name of the player.
---@field public flag2019 number The 2019 flag of the player.
---@field public battle_item number
---@field public userid number The user ID of the player.
---@field public vecy number The Y velocity of the player.
---@field public skincolor number The skin color of the player.
---@field public avatarFlags number The avatar flags of the player.
---@field public posy number The Y position of the player.
---@field public isSuperModerator boolean A boolean indicating whether the player is a super moderator.
---@field public altName string The alternative name of the player.
---@field public bubble Bubble The text bubble of the player.
---@field public battle_score number
---@field public isModerator boolean A boolean indicating whether the player is a moderator.
---@field public vecx number The X velocity of the player.
---@field public netid number The network ID of the player.

---@class Growscan
---@field public tiles table A table containing the IDs of the tiles that were found in the growscan, along with the number of times each tile was found.
---@field public objets table A table containing the IDs of the objects that were found in the growscan, along with the number of times each object was
local GrowScan = {}

--- A table containing the IDs of the tiles that were found in the growscan, along with the number of times each tile was found.
---@return table
function GrowScan:getTiles() end

--- A table containing the IDs of the objects that were found in the growscan, along with the number of times each object was
---@return table
function GrowScan:getObjects() end

---@class Object
---@field public x number
---@field public oid number
---@field public y number
---@field public count number
---@field public flags number
---@field public id number

---@class World The World class represents a game world. It contains information about the size of the world, tiles, objects, players, and NPCs.
---@field public version number The version of the world.
---@field public npcs NPC[] A table containing all the Npcs in the world.
---@field public objects userdata A table containing all the NetObjects in the world.
---@field public name string The name of the world.
---@field public tile_count number The total number of tiles in the world.
---@field public weather number The weather of the world.
---@field public adventures Adventure[] A table containing bot adventure item data in the world.
---@field public public boolean A boolean value indicating whether the world is public or not.
---@field public battle userdata A table containing game battle data in the world.
---@field public tiles Tile[] A table containing all the Tiles in the world.
---@field public y number The width of the world.
---@field public x number The height of the world.
---@field public growscan Growscan  A Growscan object representing the world's growscan.
---@field public players Player[] A table containing all the Players in the world.
local World = {}

--- Returns adventure datas.
---@return Adventure[]
---@nodiscard
function World:getAdventures() end

--- Returns the NetNPC object with the specified NPC ID. It returns nil if not found.
---@return NPC[]
---@param npcId number
---@nodiscard
function World:getNPC(npcId) end

--- Returns true if the specified x,y position is valid.
---@param x number
---@param y number
---@nodiscard
function World:isValidTile(x, y) end

---Get tiles data inside the world.
---@return Tile[]
---@nodiscard
function World:getTiles() end

--- Returns true if the player has access to the specified x,y position, false otherwise.
---@param x number
---@param y number
---@return number
---@nodiscard
function World:hasAccess(x, y) end

--- Returns the NetAvatar object representing the local player.
---@return Player
---@nodiscard
function World:getLocal() end

--- Returns true if bot has adventure_item actived.
---@param item number
---@return boolean
function World:hasAdventure(item) end

--- Returns adventure data at index.
---@param index number
---@return Adventure
---@nodiscard
function World:getAdventure(index) end

--- Returns the NetAvatar object with the specified player netID or name. It returns nil if not
---@param user number|string
---@return Player
---@nodiscard
function World:getPlayer(user) end

---Returns players.
---@return Player[]
---@nodiscard
function World:getPlayers() end

---@return Object[]
---@nodiscard
function World:getObjects() end

---@return Tile[]
function World:getTilesSafe() end

---Get tile data.
---@param x number
---@param y number
---@return Tile
---@nodiscard
function World:getTile(x, y) end

---@param oid number
---@return Object
---@nodiscard
function World:getObject(oid) end

--- Returns true if the specified x,y position is within the bounds of the world.
---@param x number
---@param y number
---@return boolean
function World:isValidPosition(x, y) end

---@return NPC[]
---@nodiscard
function World:getNPCs() end

--- Returns the Tile that the specified Tile is attached to.
---@param tile Tile
---@return Tile
---@nodiscard
function World:getTileParent(tile) end

---@return World
---@nodiscard
function Bot:getWorld() end

---@class ProxyData
---@field public port number
---@field public username string
---@field public ip string
---@field public password string


--- Returns proxy instance of bot.
---@return ProxyData
---@nodiscard
function Bot:getProxy() end

---@return string
function Bot:getCaptcha() end

---@class Login
---@field public mac string
---@field public platform_id number
---@field public country string
---@field public name string
---@field public vid string
---@field public rid string
---@field public cbits number
---@field public filter_messages boolean
---@field public is_guest boolean
---@field public requested_name string
---@field public wk string
---@field public device_id number
---@field public gid string
---@field public player_age number
---@field public aid string

--- Returns bot login.
---@return Login
function Bot:getLogin() end

---@class Console
---@field public contents string
---@field public enabled boolean
local Console = {}

---@param text string
function Console:append(text) end

--- Returns bot console.
---@return Console
---@nodiscard
function Bot:getConsole() end

---@class Log A structure representing a log for displaying text.
---@field public content string a string containing the current content of the logs tab.
local Log = {}

--- appends the specified text to the log content.
---@param text string
function Log:append(text) end

--- clears the logs.
function Log:clear() end

---@return Log
---@nodiscard
function Bot:getLog() end

--- Finishing role.
function Bot:finishRole() end

--- Store role
function Bot:stopRole() end

--- Start role
function Bot:startRole() end

---@class GameUpdatePacket
GameUpdatePacket = {}

---@class GameUpdate
---@field public int_y? number
---@field public float_var? number
---@field public vec_x? number
---@field public int_x? number
---@field public particle_rotation? number
---@field public netid? number
---@field public int_data? number
---@field public item? number
---@field public pos_x? number
---@field public vec2_y? number
---@field public pos2_x? number
---@field public vec_y? number
---@field public object_type? number The type of object change type.
---@field public vec2_x? number
---@field public pos2_y? number
---@field public count2? number A count variable used in certain types of packets.
---@field public type number The type of packet.
---@field public flags? number
---@field public count1? number A count variable used in certain types of packets.
---@field public pos_y? number

---@return GameUpdate
function GameUpdatePacket.new() end

---@param rawPacket GameUpdatePacket
function Bot:sendRaw(rawPacket) end

function Bot:getSignal() end

---@return Inventory
---@nodiscard
function Bot:getInventory() end

--- Get current selected bot.
---@overload fun(name: string|number|nil) : Bot
---@return Bot
---@nodiscard
function getBot() end

--- Get all added bots.
---@return Bot[]
---@nodiscard
function getBots() end

---@return WorldManager
function getWorldManager() end

---Get tile data.
---@param x number
---@param y number
---@return Tile
---@nodiscard
function getTile(x, y) end

---Get tiles data inside the world.
---@return Tile[]
---@nodiscard
function getTiles() end

---@return Tile[]
---@nodiscard
function getTilesSafe() end

---@return Inventory
---@nodiscard
function getInventory() end

---@param npcId number
---@return NPC
---@nodiscard
function getNpc(npcId) end

---@return NPC[]
---@nodiscard
function getNpcs() end

---@param oid number
---@return Object
---@nodiscard
function getObject(oid) end

---@return Object[]
---@nodiscard
function getObjects() end

---@param netid string|number
---@return Player
function getPlayer(netid) end

---@return Player[]
function getPlayers() end

---@return Player
function getLocal() end

--- func desc
---@param x number
---@param y number
---@return number
function hasAccess(x, y) end

---@return World
---@nodiscard
function getWorld() end

---@param fun function
function runThread(fun, ...) end

---@param ms number
function sleep(ms) end

---@return string
function getUsername() end

---@param cred string
function addProxy(cred) end

---@param ip string
---@param port number
function removeProxy(ip, port) end

---@param event Event
---@param fun function
function addEvent(event, fun) end

---@param event Event
function removeEvent(event) end

function removeEvents() end

---@param item string|number
---@return Info
function getInfo(item) end

---@return Info[]
function getInfos() end

---@return ProxyManager
function getProxyManager() end

---@param name string
---@param password? string
---@param mac? string
---@param rid? string
---@return Bot
function addBot(name, password, mac, rid) end

---@param mail string
---@param password string
---@param username? string
---@return Bot
function addUbiBot(mail, password, username) end

---@overload fun(name: string|number|nil)
function removeBot() end

---@param text  string
---@return string
function removeColor(text) end

---@class HttpClient
HttpClient = {}

---@class HttpStruct
---@field public method number
---@field public url string
---@field public content string
---@field public headers userdata
---@field public timeout number
local HttpStruct = {}

---@param type number
---@param proxies string
function HttpStruct:setProxy(type,proxies) end

---@param method number
function HttpStruct:setMethod(method) end

---@class HttpRequest
---@field public body string
---@field public error number
---@field public status number
local HttpRequest = {}

function HttpRequest:getError() end

---@return HttpRequest
---@nodiscard
function HttpStruct:request() end

---@return HttpStruct
---@nodiscard
function HttpClient.new() end

---@class MessageBox
MessageBox = {}

---@class Message
---@field public description string
---@field public title string
---@field public class_cast userdata
---@field public __name string
---@field public class_check userdata
local Message = {}

function Message:send() end

---@return Message
---@nodiscard
function MessageBox.new() end

---@class Webhook
Webhook = {}

---@class Footer
---@field public text string
---@field public icon_url string

---@class Author
---@field public name string
---@field public url string
---@field public icon_url string

---@class Embed
---@field public title string String value representing the title of the embed.
---@field public url string String value representing the URL associated with the embed.
---@field public author Author Object representing the author of the embed. It has the following properties
---@field public color number Integer value representing the color of the embed.
---@field public thumbnail string String value representing the URL of the thumbnail image
---@field public image string The image url of the embed.
---@field public timestamp osdate|string
---@field public footer Footer Object representing the footer of the embed. It has the following properties
---@field public description string String value representing the description of the embed.
---@field public use boolean Boolean value indicating whether the embed should be used or not.
---@field public type string String value representing the type of the embed.
local Embed = {}

--- Adds a new field to the embed. It takes three arguments
---@param name string String value representing the name of the field.
---@param value string String value representing the value of the field.
---@param inline boolean Boolean value indicating whether the field should be displayed inline or not.
function Embed:addField(name,value,inline) end

---@class WebhookStruct
---@field public username string string variable representing the username of the webhook.
---@field public url string string variable representing the webhook url.
---@field public content string string variable representing the content of the message to be sent.
---@field public embed1 Embed variable representing the first embed of the webhook message.
---@field public embed2 Embed variable representing the second embed of the webhook message.
---@field public avatar_url string string variable representing the avatar url of the webhook.
local WebhookStruct = {}

function WebhookStruct:send() end

---@param messageId string
function WebhookStruct:edit(messageId) end

---@return string
---@nodiscard
function WebhookStruct:makeContent() end

---@param url string
---@return WebhookStruct
function Webhook.new(url) end

function unlistenEvents() end

---@param s number
function listenEvents(s) end

---@class HttpServer
HttpServer = {}

---@class HttpServers
local HttpServers = {}

---@class HttpRequests
---@field public path string
---@field public version string
---@field public body string
---@field public method string
---@field public headers userdata
---@field public files string
local HttpRequests = {}

---@param key string
function HttpRequests:getHeader(key) end

---@param key string
---@return string
function HttpRequests:getParam(key) end

---@class HttpResponse
---@field public version string
---@field public body string
---@field public headers userdata
---@field public status number
local HttpResponse = {
}

---@param content string
---@param type string
function HttpResponse:setContent(content,type) end

---@param path string
---@param callback fun(request: HttpRequests,response: HttpResponse)
function HttpServers:delete(path, callback) end

---@param url string
---@param port number
function HttpServers:listen(url, port) end

---@param path string
---@param callback fun(request: HttpRequests,response: HttpResponse)
function HttpServers:post(path, callback) end

---@param callback fun(request: HttpRequests,response: HttpResponse)
function HttpServers:setLogger(callback) end

---@param path string
---@param callback fun(request: HttpRequests,response: HttpResponse)
function HttpServers:patch(path, callback) end

---@param path string
---@param callback fun(request: HttpRequests,response: HttpResponse)
function HttpServers:put(path, callback) end

---@param path string
---@param callback fun(request: HttpRequests,response: HttpResponse)
function HttpServers:get(path,callback) end

---@return HttpServers
function HttpServer.new() end