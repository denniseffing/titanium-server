//////////////////////////////////////////////////////////////////////
// OpenTibia - an opensource roleplaying game
//////////////////////////////////////////////////////////////////////
// base class for every creature
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

#ifndef __CHAT_H
#define __CHAT_H

#include <map>
#include <list>
#include <string>

#include "const76.h"

class Player;

class ChatChannel {
public:
    ChatChannel(uint16_t channelId, std::string channelName);

    ~ChatChannel() {};

    bool addUser(Player *player);

    bool removeUser(Player *player);

    bool talk(Player *fromPlayer, SpeakClasses type, std::string &text, uint16_t channelId);

    const std::string &getName() { return m_name; };

    const uint16_t getId() { return m_id; };
private:
    typedef std::map<long, Player *> UsersMap;
    UsersMap m_users;
    std::string m_name;
    uint16_t m_id;
};

typedef std::list<ChatChannel *> ChannelList;

class Chat {
public:
    Chat();

    ~Chat() {};

    ChatChannel *createChannel(Player *player, uint16_t channelId);

    bool deleteChannel(Player *player, uint16_t channelId);

    bool addUserToChannel(Player *player, uint16_t channelId);

    bool removeUserFromChannel(Player *player, uint16_t channelId);

    void removeUserFromAllChannels(Player *player);

    bool talkToChannel(Player *player, SpeakClasses type, std::string &text, uint16_t channelId);

    std::string getChannelName(Player *player, uint16_t channelId);

    ChannelList getChannelList(Player *player);

private:
    ChatChannel *getChannel(Player *player, uint16_t channelId);

    typedef std::map<uint16_t, ChatChannel *> NormalChannelMap;
    typedef std::map<uint32_t, ChatChannel *> GuildChannelMap;
    NormalChannelMap m_normalChannels;
    GuildChannelMap m_guildChannels;
};

#endif
