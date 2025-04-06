/*==============================================================================
Jupyter Display Core Handler - C++ header

Copyright (C) 2024 shiroinekotfs

Component: Component Header

Purpose:   Jupyter Display Handler provides functions within `_Jupyter_Display` 
           namespace, helping people interacting with Jupyter web-based engine. 
           Allows displaying beautiful outputs, using HTML/CSS, JavaScript, 
           Markdown, and even more.
Owner:     shiroinekotfs
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: shiroinekotfs (signed-off by shiroinekotfs)

Help Link: https://github.com/shiroinekotfs/jupyter-cpp-kernel
Report issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues
==============================================================================*/

#ifndef _CPPOUT_HPP
#define _CPPOUT_HPP

namespace _Jupyter_Display {

    class MimeHandler {
        public:
            static void _jupyter_application(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("application", type, source, width, height);
            }

            static void _jupyter_audio(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("audio", type, source, width, height);
            }

            static void _jupyter_image(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("image", type, source, width, height);
            }
           
            static void _jupyter_text(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("text", type, source, width, height);
            }

            static void _jupyter_video(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("video", type, source, width, height);
            }
        
        private:
            static void __embed__(const std::string& category, const std::string& type, const std::string& source, const std::string& width, const std::string& height) {
                std::cout << "<embed src=\"" << source << "\" width=\"" << width << "\" height=\"" << height << "\" type=\"" << category << "/" << type << "\">\n";
            }
    };

    //IFrame types
    void IFrame (std::string url, std::string width = "auto", std::string height = "auto") {
        std::cout << "<iframe width=\"" << width << "\" height=\"" << height << "\" src=\"" << url << "\" allowfullscreen></iframe>\n";
    }

    //Browser-based types (Audio, PDF, Video, ProgressBar)
    void Audio (std::string source) {
        std::cout << "<figure><audio controls src=\"" << source << "\"><a href=\"" << source << "\"></a></audio></figure>\n";
    }

    void Video (std::string video, std::string width = "auto", std::string height = "auto") {
        std::cout << "<video width=\"" << width << "\" height=\"" << height << "\" controls src=\"" << video << "\">animation</video>\n";
    }

    void Image (std::string data, std::string width = "auto", std::string height = "auto") {
        std::cout << "<img src=\"" << data << "\" width=\"" << width<< "\" height=\"" << height << "\" />\n";
    }

    /*
    These 'embed' are sorted by this method
    1.      application
            audio
            font
            example
            image
            message
            model
            multipart
            text
            video
    2. Each of types sorted by name
    */

   //application
    void PDF (std::string pdffile, std::string width = "auto", std::string height = "auto") {
        MimeHandler::_jupyter_application("pdf", pdffile, width, height);
    }

    void JSON (std::string jsonfile, std::string width = "auto", std::string height = "auto") {
        MimeHandler::_jupyter_application("json", jsonfile, width, height);
    }

    void Javascript (std::string jsfile, std::string width = "auto", std::string height = "auto") {
        MimeHandler::_jupyter_application("javascript", jsfile, width, height);
    }

    void GeoJSON (std::string geojsonfile, std::string width = "auto", std::string height = "auto") {
        MimeHandler::_jupyter_application("geo+json", geojsonfile, width, height);
    }


    //text
    void PlainText (std::string plaintextfile, std::string width="auto", std::string height = "auto") {
        MimeHandler::_jupyter_text("plain", plaintextfile, width, height);
    }

    void LaTex (std::string plaintextfile, std::string width="auto", std::string height = "auto") {
        MimeHandler::_jupyter_text("latex", plaintextfile, width, height);
    }

    void HTML (std::string htmlfile, std::string width="auto", std::string height = "auto") {
        MimeHandler::_jupyter_text("html", htmlfile, width, height);
    }
}

#endif