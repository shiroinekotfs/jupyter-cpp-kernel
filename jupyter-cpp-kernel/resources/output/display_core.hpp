/*==============================================================================
Jupyter Display Core Handler - C++ header

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

#ifndef _DISPLAY_CORE_H_
#define _DISPLAY_CORE_H_

#include <iostream>
#include <string>

#include "MIME.hpp"
#include "MIME_YouTube.hpp"

namespace _Jupyter_Display {

    void IFrame (std::string url, std::string width = "auto", std::string height = "auto") {
        std::cout << "<iframe width=\"" << width << "\" height=\"" << height << "\" src=\"" << url << "\" allowfullscreen></iframe>" << std::endl;
    }

    void YouTubePlayer (std::string token, std::string width = "auto", std::string height = "auto") {
        token = MIME_YouTube::YouTubeLinkExtractor(token);

        if (token == "ERROR") {
            std::cout << "<b>The input YouTube link is invalid.</b> Please check your link. Either you're performed a crashed request." << std::endl;
        } else {
            std::cout << "<iframe width=\"" << width << "\" height=\"" << height << "\" src=\"" << "https://youtube.com/embed/" << token << "\" allowfullscreen></iframe>" << std::endl;
        }
    }

    void Display_HTML() {
        
    }
}

#endif