//////////////////////////////////////////////////////////////////////
// OpenTibia - an opensource roleplaying game
//////////////////////////////////////////////////////////////////////
// 
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

#ifndef __OTSERV_FILELOADER_H__
#define __OTSERV_FILELOADER_H__

#include <string>
#include <string.h>
#include "stdio.h"

typedef uint32_t NODE;

#define NO_NODE 0

enum FILELOADER_ERRORS {
    ERROR_NONE,
    ERROR_INVALID_FILE_VERSION,
    ERROR_CAN_NOT_OPEN,
    ERROR_CAN_NOT_CREATE,
    ERROR_EOF,
    ERROR_SEEK_ERROR,
    ERROR_NOT_OPEN,
    ERROR_INVALID_NODE,
    ERROR_INVALID_FORMAT,
    ERROR_TELL_ERROR,
    ERROR_COULDNOTWRITE,
    ERROR_CACHE_ERROR,
};

class PropStream;

class FileLoader {
public:
    FileLoader();

    virtual ~FileLoader();

    bool openFile(const char *filename, bool write, bool caching = false);

    const uint8_t *getProps(const NODE, uint32_t &size);

    bool getProps(const NODE, PropStream &props);

    const NODE getChildNode(const NODE parent, uint32_t &type);

    const NODE getNextNode(const NODE prev, uint32_t &type);

    void startNode(uint8_t type);

    void endNode();

    int setProps(void *data, uint16_t size);

    int getError() { return m_lastError; }

    void clearError() { m_lastError = ERROR_NONE; }

protected:
    enum SPECIAL_BYTES {
        NODE_START = 0xFE,
        NODE_END = 0xFF,
        ESCAPE_CHAR = 0xFD,
    };

    inline bool readByte(int &value);

    inline bool checks(const NODE node);

    inline bool safeSeek(uint32_t pos);

    inline bool safeTell(long &pos);
    //inline bool writeData(void* data, int size, bool unescape);
public:
    inline bool FileLoader::writeData(const void *data, int size, bool unescape) {
        for (int i = 0; i < size; ++i) {
            uint8_t c = *(((uint8_t *) data) + i);
            if (unescape && (c == NODE_START || c == NODE_END || c == ESCAPE_CHAR)) {
                uint8_t escape = ESCAPE_CHAR;
                size_t value = fwrite(&escape, 1, 1, m_file);
                if (value != 1) {
                    m_lastError = ERROR_COULDNOTWRITE;
                    return false;
                }
            }
            size_t value = fwrite(&c, 1, 1, m_file);
            if (value != 1) {
                m_lastError = ERROR_COULDNOTWRITE;
                return false;
            }
        }

        return true;
    }

protected:
    FILE *m_file;
    FILELOADER_ERRORS m_lastError;
    uint32_t m_buffer_size;
    uint8_t *m_buffer;

    bool m_use_cache;
    struct _cache {
        uint32_t loaded;
        uint32_t base;
        uint32_t size;
        uint8_t *data;
    };
#define CACHE_BLOCKS 3
    uint32_t m_cache_size;
    _cache m_cached_data[CACHE_BLOCKS];
    long m_cache_index;
    long m_cache_offset;

    inline long getCacheBlock(uint32_t pos);

    long loadCacheBlock(uint32_t pos);
};


class PropStream {
public:
    PropStream() {
        end = NULL;
        p = NULL;
    }

    ~PropStream() {};

    void init(char *a, uint32_t size) {
        p = a;
        end = a + size;
    }

    template<typename T>
    inline bool GET_STRUCT(T *&ret) {
        if (size() < sizeof(T)) {
            ret = NULL;
            return false;
        }
        ret = (T *) p;
        p = p + sizeof(T);
        return true;
    }

    template<typename T>
    inline bool GET_VALUE(T &ret) {
        if (size() < sizeof(T)) {
            return false;
        }
        ret = *((T *) p);
        p = p + sizeof(T);
        return true;
    }

    inline bool GET_ULONG(uint32_t &ret) {
        return GET_VALUE(ret);
    }

    inline bool GET_USHORT(uint16_t &ret) {
        return GET_VALUE(ret);
    }

    inline bool GET_UCHAR(uint8_t &ret) {
        return GET_VALUE(ret);
    }

    inline bool GET_STRING(std::string &ret) {
        char *str;
        uint16_t str_len;

        if (!GET_USHORT(str_len)) {
            return false;
        }
        if (size() < str_len) {
            return false;
        }
        str = new char[str_len + 1];
        memcpy(str, p, str_len);
        str[str_len] = 0;
        ret = str;
        delete str;
        p = p + str_len;
        return true;
    }


protected:
    long size() { return long(end - p); };
    char *p;
    char *end;
};


#endif
