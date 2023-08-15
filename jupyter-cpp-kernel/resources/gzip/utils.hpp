/*==============================================================================
GZIP Untils header

Copyright (C) Mapbox

Component: Component Header

Purpose:   gzip compression and decompression for C++ programs
Owner:     Mapbox
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: Dane Springmeyer (signed-off by Tsuki Takineko)
==============================================================================*/

#include <cstdlib>

namespace gzip {

// These live in gzip.hpp because it doesn't need to use deps.
// Otherwise, they would need to live in impl files if these methods used
// zlib structures or functions like inflate/deflate)

inline bool is_compressed(const char* data, std::size_t size)
{
    return size > 2 &&
           (
               // zlib
               (
                   static_cast<uint8_t>(data[0]) == 0x78 &&
                   (static_cast<uint8_t>(data[1]) == 0x9C ||
                    static_cast<uint8_t>(data[1]) == 0x01 ||
                    static_cast<uint8_t>(data[1]) == 0xDA ||
                    static_cast<uint8_t>(data[1]) == 0x5E)) ||
               // gzip
               (static_cast<uint8_t>(data[0]) == 0x1F && static_cast<uint8_t>(data[1]) == 0x8B));
}
} // namespace gzip
