/*==============================================================================
Jupyter Display Handler - C++ header

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

#ifndef _JDISPLAY_HPP
#define _JDISPLAY_HPP

#include <iostream>
#include <string>

#include "ytlinkpro.hpp"

namespace jdisplay {
    
    void IFrame (std::string url, std::string width = "auto", std::string height = "auto") {
        std::cout << "<iframe width=\"" << width << "\" height=\"" << height << "\" src=\"" << url << "\" allowfullscreen></iframe>" << std::endl;
    }

    void Audio (std::string source) {
        std::cout << "<figure><audio controls src=\"" << source << "\"><a href=\"" << source << "\"></a></audio></figure>" << std::endl;
    }

    void CodeString (std::string code) {
        std::cout << "```\n" << std::endl << code << std::endl << "\n```\n" << std::endl;
    }

    void Image (std::string data, std::string width = "auto", std::string height = "auto") {
        std::cout << "<img src=\"" << data << "\" width=\"" << width<< "\" height=\"" << height << "\" />" << std::endl;
    }

    void PDF (std::string pdffile, std::string width = "auto", std::string height = "auto") {
        std::cout << "<embed src=\"" << pdffile << "\" width=\"" << width << "\" height=\"" << height << "\" type=\"application/pdf\" >" << std::endl;
    }

    void Video (std::string video, std::string width = "auto", std::string height = "auto") {
        std::cout << "<video width=\"" << width << "\" height=\"" << height << "\" controls src=\"" << video << "\">animation</video>" << std::endl;
    }

    void YouTubePlayer (std::string token, std::string width = "auto", std::string height = "auto") {
        token = jdisplayyt::YouTubeLinkExtractor(token);

        if (token == "ERROR") {
            std::cout << "<b>The input YouTube link is invalid.</b> Please check your link. Either you're performed a crashed request." << std::endl;
        } else {
            std::cout << "<iframe width=\"" << width << "\" height=\"" << height << "\" src=\"" << "https://youtube.com/embed/" << token << "\" allowfullscreen></iframe>" << std::endl;
        }
    }
}

#endif