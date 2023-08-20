/*==============================================================================
YouTube Token Extractor - C++ header

Copyright (C) 2023 Tsuki Takineko

Component: Component Header

Purpose:   Jupyter Display Handler provides functions within `jdisplay` namespace, 
           helping people interacting with Jupyter web-based engine. Allows 
           displaying beautiful outputs, using HTML/CSS, JavaScript, and Markdown.
Owner:     Tsuki Takineko
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: Tsuki Takineko (signed-off by Tsuki Takineko)

Help Link: https://github.com/takinekotfs/jupyter-cpp-kernel
Report issue: https://github.com/takinekotfs/jupyter-cpp-kernel/issues
==============================================================================*/

#ifndef YTLINKPRO_HPP
#define YTLINKPRO_HPP

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