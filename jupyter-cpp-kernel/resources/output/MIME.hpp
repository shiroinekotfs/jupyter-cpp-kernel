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

/*
BASIC INTRO
===========

These are MIME type groups provided by IANA:
    application
    audio
    font
    example
    image
    message
    model
    multipart
    text
    video
*/

#ifndef _MIME_TYPE_H
#define _MIME_TYPE_H

#include <iostream>
#include <string>

namespace MIME {

    class MimeHandler {
    public:
        void _jupyter_application(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
            __embed__("application", type, source, width, height);
        }

        void _jupyter_audio(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
            __embed__("audio", type, source, width, height);
        }

        void _jupyter_font(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
            __embed__("font", type, source, width, height);
        }

        void _jupyter_example(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
            __embed__("example", type, source, width, height);
        }

        void _jupyter_image(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
            __embed__("image", type, source, width, height);
        }

        void _jupyter_message(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
            __embed__("message", type, source, width, height);
        }

        void _jupyter_model(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
            __embed__("model", type, source, width, height);
        }  

        void _jupyter_multipart(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
            __embed__("multipart", type, source, width, height);
        }

        void _jupyter_text(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
            __embed__("text", type, source, width, height);
        }

        void _jupyter_video(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
            __embed__("video", type, source, width, height);
        }

    private:
        void __embed__(const std::string& category, const std::string& type, const std::string& source, const std::string& width, const std::string& height) {
            std::cout << "<embed src=\"" << source << "\" width=\"" << width << "\" height=\"" << height << "\" type=\"" << category << "/" << type << "\" >" << std::endl;
        }
    };

}

#endif
