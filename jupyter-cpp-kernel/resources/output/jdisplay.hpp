/*==============================================================================
Jupyter Display Handler - C++ header

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

#include "ytlinkpro.hpp"

namespace jdisplay {
    
    void IFrame (std::string url, std::string width, std::string height) {
        std::cout << "<iframe width=\"" << width << "\" height=\"" << height << "\" src=\"" << url << "\" allowfullscreen></iframe>" << std::endl;
    }

    void Audio (std::string source) {
        std::cout << "<figure><audio controls src=\"" << source << "\"><a href=\"" << source << "\"></a></audio></figure>" << std::endl;
    }

    void CodeString (std::string code) {
        std::cout << "```\n" << code << "\n```" << std::endl;
    }

    void Image (std::string data, std::string width, std::string height) {
        std::cout << "<img src=\"" << data << "\" width=\"" << width<< "\" height=\"" << height << "\" />" << std::endl;
    }

    void PDF (std::string pdffile, std::string width, std::string height) {
        std::cout << "<object data=\"" << pdffile << "\" type=\"application/pdf\" width=\"" << width << "\" height=\"" << height << "\" ><embed src=\"" << pdffile << "\"></embed></object>" << std::endl;
    }

    void Video (std::string video, std::string width, std::string height) {
        std::cout << "<video width=\"" << width << "\" height=\"" << height << "\" controls src=\"" << video << "\">animation</video>" << std::endl;
    }

    void YouTuberPlayer (std::string token, std::string width, std::string height) {
        token = jdisplayyt::YouTubeLinkExtractor(token);

        if (token == "NULL") {
            std::cout << "<br>The input YouTube link is invalid</br>. Please check your link. Either you're performed a crashed request." << std::endl;
        } else if (token == "ERROR") {
            std::cout << "<br>The input link isn't come from YouTube</br>. Please consider to use `jdisplay::IFrame()`, or other Jupyter Display method to display this." << std::endl;
        } else {
            std::cout << "<iframe width=\"" << width << "\" height=\"" << height << "\" src=\"" << "https://youtube.com/embed/" << token << "\" allowfullscreen></iframe>" << std::endl;
        }
    }
}