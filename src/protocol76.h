//////////////////////////////////////////////////////////////////////
// OpenTibia - an opensource roleplaying game
//////////////////////////////////////////////////////////////////////
// The protocoll for the clients version 7.6
// the newer clients still use the same protocoll just with a 
// prequel defined in the 6.5 protocoll
//////////////////////////////////////////////////////////////////////
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software Foundation,
// Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//////////////////////////////////////////////////////////////////////


#ifndef tprot76_h
#define tprot76_h

#include "protocol.h"
#include "creature.h"
#include "item.h"
#include "container.h"
#include <string>

class NetworkMessage;

class Protocol76 : public Protocol
{
public:
	// our constructor get's the socket of the client and the initial
	// message the client sent
	Protocol76(SOCKET s);
	virtual ~Protocol76();
	
	bool ConnectPlayer(
#ifdef YUR_LOGIN_QUEUE
		int* placeInQueue = NULL
#endif //YUR_LOGIN_QUEUE
		);
	void ReceiveLoop();  
	void WriteBuffer(NetworkMessage &add);
	virtual void reinitializeProtocol();
	
private:
	// the socket the player is on...
	NetworkMessage OutputBuffer;
	std::list<uint32_t> knownPlayers;
	void checkCreatureAsKnown(uint32_t id, bool &known, uint32_t &removedKnown);
	
	// we have all the parse methods
	void parsePacket(NetworkMessage &msg);
	
	void parseLogout(NetworkMessage &msg);
	
	void parseCancelMove(NetworkMessage &msg);
	void parseModes(NetworkMessage &msg);
	void parseDebug(NetworkMessage &msg);
	
	void parseMoveByMouse(NetworkMessage &msg);
	
	void parseMoveNorth(NetworkMessage &msg);
	void parseMoveEast(NetworkMessage &msg);
	void parseMoveSouth(NetworkMessage &msg);
	void parseMoveWest(NetworkMessage &msg);
	void parseMoveNorthEast(NetworkMessage &msg);
	void parseMoveSouthEast(NetworkMessage &msg);
	void parseMoveSouthWest(NetworkMessage &msg);
	void parseMoveNorthWest(NetworkMessage &msg);
	
	void parseTurnNorth(NetworkMessage &msg);
	void parseTurnEast(NetworkMessage &msg);
	void parseTurnSouth(NetworkMessage &msg);
	void parseTurnWest(NetworkMessage &msg);
	
	void parseRequestOutfit(NetworkMessage &msg);
	void parseSetOutfit(NetworkMessage &msg);
	
	void parseSay(NetworkMessage &msg);
	
	void parseLookAt(NetworkMessage &msg);
	
	void parseAttack(NetworkMessage &msg);
	
	void parseThrow(NetworkMessage &msg);
	void parseUseItemEx(NetworkMessage &msg);
	void parseBattleWindow(NetworkMessage &msg);
	void parseUseItem(NetworkMessage &msg);
	void parseCloseContainer(NetworkMessage &msg);
	void parseUpArrowContainer(NetworkMessage &msg);
	void parseTextWindow(NetworkMessage &msg);
	
	void parseRequestTrade(NetworkMessage &msg);
	void parseLookInTrade(NetworkMessage &msg);
	void parseAcceptTrade(NetworkMessage &msg);
	void parseCloseTrade();

#ifdef CVS_DAY_CYCLE
	virtual void sendWorldLightLevel(uint8_t lightlevel, uint8_t color);
	virtual void sendPlayerLightLevel(const Player* player);
#endif //CVS_DAY_CYCLE
	
#ifdef BD_HOUSE_WINDOW
	void sendHouseWindow(std::string members);
	void parseHouseWindow(NetworkMessage& msg);
	Game* getGame() { return game; }
#endif //BD_HOUSE_WINDOW

#ifdef ELEM_VIP_LIST
	void elemParseRemoveVip(NetworkMessage &msg);
	void elemParseAddVip(NetworkMessage &msg);
#endif //ELEM_VIP_LIST

#ifdef TLM_SKULLS_PARTY
	void sendSkull(const Creature *creature);
	void sendPartyIcons(const Player *playa, int icontype, bool skull, bool removeskull);
	void parseInviteParty(NetworkMessage &msg);
	void parseRevokeParty(NetworkMessage &msg);
	void parseJoinParty(NetworkMessage &msg);
	void parsePassLeadership(NetworkMessage &msg);
#endif //TLM_SKULLS_PARTY

	void parseAddVip(NetworkMessage &msg);
	void parseRemVip(NetworkMessage &msg);

	void parseRotateItem(NetworkMessage &msg);
		
	// channel tabs
	void parseGetChannels(NetworkMessage &msg);
	void parseOpenChannel(NetworkMessage &msg);
	void parseOpenPriv(NetworkMessage &msg);
	void parseCloseChannel(NetworkMessage &msg);
	virtual void sendChannelsDialog();
	virtual void sendChannel(uint16_t channelId, std::string channelName);
	virtual void sendOpenPriv(const std::string &receiver);
	virtual void sendToChannel(const Creature *creature, SpeakClasses type, const std::string &text, uint16_t channelId);
	
	virtual void sendNetworkMessage(NetworkMessage *msg);
	virtual void sendIcons(int icons);
	
	//container to container
	virtual void sendThingMove(const Creature *creature, const Container *fromContainer, uint8_t from_slotid,
		const Item* fromItem, int oldFromCount, Container *toContainer, uint8_t to_slotid, const Item *toItem, int oldToCount, int count);
	
	//inventory to container
	virtual void sendThingMove(const Creature *creature, slots_t fromSlot, const Item* fromItem,
		int oldFromCount, const Container *toContainer, uint8_t to_slotid, const Item *toItem, int oldToCount, int count);
	
	//inventory to inventory
	virtual void sendThingMove(const Creature *creature, slots_t fromSlot, const Item* fromItem,
		int oldFromCount, slots_t toSlot, const Item* toItem, int oldToCount, int count);
	
	//container to inventory
	virtual void sendThingMove(const Creature *creature, const Container *fromContainer, uint8_t from_slotid,
		const Item* fromItem, int oldFromCount, slots_t toSlot, const Item *toItem, int oldToCount, int count);
	
	//container to ground
	virtual void sendThingMove(const Creature *creature, const Container *fromContainer, uint8_t from_slotid,
		const Item* fromItem, int oldFromCount, const Position &toPos, const Item *toItem, int oldToCount, int count);
	
	//inventory to ground
	virtual void sendThingMove(const Creature *creature, slots_t fromSlot,
		const Item* fromItem, int oldFromCount, const Position &toPos, const Item *toItem, int oldToCount, int count);
	
	//ground to container
	virtual void sendThingMove(const Creature *creature, const Position &fromPos, int stackpos, const Item* fromItem,
		int oldFromCount, const Container *toContainer, uint8_t to_slotid, const Item *toItem, int oldToCount, int count);
	
	//ground to inventory
	virtual void sendThingMove(const Creature *creature, const Position &fromPos, int stackpos, const Item* fromItem,
		int oldFromCount, slots_t toSlot, const Item *toItem, int oldToCount, int count);
	
	//ground to ground
	virtual void sendThingMove(const Creature *creature, const Thing *thing,
		const Position *oldPos, uint8_t oldstackpos, uint8_t oldcount,
		uint8_t count, bool tele = false);
	
	void autoCloseContainers(const Container *container, NetworkMessage &msg);
	
	virtual void sendThingDisappear(const Thing *thing, uint8_t stackPos, bool tele = false);
	virtual void sendThingAppear(const Thing *thing);
	virtual void sendThingTransform(const Thing* thing,int stackpos);
	virtual void sendThingRemove(const Thing *thing);
	virtual void sendDistanceShoot(const Position &from, const Position &to, uint8_t type);
	virtual void sendMagicEffect(const Position &pos, uint8_t type);
	virtual void sendAnimatedText(const Position &pos, uint8_t color, std::string text);
	virtual void sendCreatureHealth(const Creature *creature);
	virtual void sendSkills();
	virtual void sendPing();
	virtual void sendCreatureTurn(const Creature *creature, uint8_t stackpos);
	virtual void sendCreatureSay(const Creature *creature, SpeakClasses type, const std::string &text);
	
	virtual void sendCancel(const char *msg);
	virtual void sendCancelWalk();
	virtual void sendChangeSpeed(const Creature* creature);
	virtual void sendCancelAttacking();
	void sendSetOutfit(const Creature* creature);
	virtual void sendTileUpdated(const Position &Pos);
	virtual void sendInventory(uint8_t sl_id);
	virtual void sendStats();
	virtual void sendTextMessage(MessageClasses mclass, const char* message);
	virtual void sendTextMessage(MessageClasses mclass, const char* message,const Position &pos, uint8_t type);
	
	virtual bool CanSee(int x, int y, int z) const;
	virtual bool CanSee(const Creature*) const;
	virtual void logout();
	
	void flushOutputBuffer();
	void WriteMsg(NetworkMessage &msg);
	
	virtual void sendContainer(uint8_t index, Container *container);
	virtual void sendTradeItemRequest(const Player* player, const Item* item, bool ack);
	virtual void sendCloseTrade();
	
	virtual void sendCloseContainer(uint8_t containerid);
	void sendItemAddContainer(const Container *container, const Item *item);
	void sendItemRemoveContainer(const Container* container,const uint8_t slot);
	void sendItemUpdateContainer(const Container* container,const Item* item,const uint8_t slot);
	void sendTextWindow(Item* item,const uint16_t maxlen, const bool canWrite);
	
	virtual void sendVIPLogIn(uint32_t guid);
	virtual void sendVIPLogOut(uint32_t guid);
	virtual void sendVIP(uint32_t guid, const std::string &name, bool isOnline);
	
#ifdef TRS_GM_INVISIBLE
	void GetTileDescription(const Tile* tile, NetworkMessage &msg, Player* p);
	void GetMapDescription(uint16_t x, uint16_t y, uint8_t z,
                         uint16_t width, uint16_t height,
                         NetworkMessage &msg, Player* p);
#else
	void GetTileDescription(const Tile* tile, NetworkMessage &msg);
	void GetMapDescription(uint16_t x, uint16_t y, uint8_t z,
                         uint16_t width, uint16_t height,
                         NetworkMessage &msg);
#endif //TRS_GM_INVISIBLE

	virtual void AddTextMessage(NetworkMessage &msg,MessageClasses mclass, const char* message);
	virtual void AddAnimatedText(NetworkMessage &msg,const Position &pos, uint8_t color, std::string text);
	virtual void AddMagicEffect(NetworkMessage &msg,const Position &pos, uint8_t type);
	virtual void AddDistanceShoot(NetworkMessage &msg,const Position &from, const Position &to, uint8_t type);
	virtual void AddCreature(NetworkMessage &msg,const Creature *creature, bool known, uint32_t remove);
	virtual void AddPlayerStats(NetworkMessage &msg,const Player *player);
	virtual void AddPlayerInventoryItem(NetworkMessage &msg,const Player *player, int item);
	virtual void AddCreatureSpeak(NetworkMessage &msg,const Creature *creature, SpeakClasses type, std::string text, uint16_t channelId);
	virtual void AddCreatureHealth(NetworkMessage &msg,const Creature *creature);
	virtual void AddPlayerSkills(NetworkMessage &msg,const Player *player);
	virtual void AddRemoveThing(NetworkMessage &msg, const Position &pos,uint8_t stackpos);
	virtual void AddAppearThing(NetworkMessage &msg, const Position &pos);
	virtual void AddTileUpdated(NetworkMessage &msg, const Position &pos);
	virtual void AddItemContainer(NetworkMessage &msg,uint8_t cid, const Item *item);
	virtual void AddItemContainer(NetworkMessage &msg,uint8_t cid, const Item *item,uint8_t count);
	virtual void TransformItemContainer(NetworkMessage &msg,uint8_t cid,uint8_t slot, const Item *item);
	virtual void RemoveItemContainer(NetworkMessage &msg,uint8_t cid,uint8_t slot);
	
	
	OTSYS_THREAD_LOCKVAR bufferLock;
	uint32_t windowTextID;
	Item *readItem;
	
	friend OTSYS_THREAD_RETURN ConnectionHandler(void *dat);
};

#endif
