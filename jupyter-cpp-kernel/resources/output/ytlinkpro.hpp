/*==============================================================================
YouTube Token Extractor - C++ header

Copyright (C) 2024 shiroinekotfs

Component: Component Header

Purpose:   Jupyter Display Handler provides functions within `jdisplay` namespace, 
           helping people interacting with Jupyter web-based engine. Allows 
           displaying beautiful outputs, using HTML/CSS, JavaScript, and Markdown.
Owner:     shiroinekotfs
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: shiroinekotfs (signed-off by shiroinekotfs)

Help Link: https://github.com/shiroinekotfs/jupyter-cpp-kernel
Report issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues
==============================================================================*/

#ifndef _YTLINKPRO_HPP
#define _YTLINKPRO_HPP

#include <iostream>
#include <string>
#include <regex>

namespace jdisplayyt {

    std::string YouTubeLinkExtractor(std::string url) {
        std::regex regExp("^.*((youtu.be\\/)|(v\\/)|(\\/u\\/\\w\\/)|(embed\\/)|(watch\\?))\\??v?=?([^#\\&\\?]*).*");
        std::smatch match;
        if (std::regex_match(url, match, regExp) && match[7].length() == 11) {
            std::string b = match[7];
            return b;
        } else {
            return "ERROR";
        }
    }
}

#endif