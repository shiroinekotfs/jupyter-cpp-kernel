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

#include <iostream>
#include <string>

namespace jdisplayyt {

    std::string YouTubeLinkExtractor (std::string link) {
        if (link.find("youtube.com") != std::string::npos || link.find("youtu.be") != std::string::npos) {
            if (link.find("youtube.com/watch?v=")) {
                return link.substr(link.find("youtube.com/watch?v=") + 1);
            } else if (link.find("youtu.be/")) {
                return link.substr(link.find("youtu.be/") + 1);
            } else if (link.find("youtube.com/embed/")) {
                return link.substr(link.find("youtube.com/embed/") + 1);
            } else {
                return "NULL";
            }
        } else {
            return "ERROR";
        }
    }
}