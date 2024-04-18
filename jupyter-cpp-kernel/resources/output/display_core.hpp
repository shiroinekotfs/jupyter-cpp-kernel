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
#include <regex>

namespace _MIME_YouTube {

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

namespace _Jupyter_Display {

    class MimeHandler {
        public:
            static void _jupyter_application(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("application", type, source, width, height);
            }

            static void _jupyter_audio(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("audio", type, source, width, height);
            }

            static void _jupyter_font(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("font", type, source, width, height);
            }

            static void _jupyter_example(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("example", type, source, width, height);
            }

            static void _jupyter_image(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("image", type, source, width, height);
            }

            static void _jupyter_message(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("message", type, source, width, height);
            }

            static void _jupyter_model(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("model", type, source, width, height);
            }  

            static void _jupyter_multipart(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("multipart", type, source, width, height);
            }

            static void _jupyter_text(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("text", type, source, width, height);
            }

            static void _jupyter_video(const std::string& type, const std::string& source, const std::string& width = "auto", const std::string& height = "auto") {
                __embed__("video", type, source, width, height);
            }

        private:
            static void __embed__(const std::string& category, const std::string& type, const std::string& source, const std::string& width, const std::string& height) {
                std::cout << "<embed src=\"" << source << "\" width=\"" << width << "\" height=\"" << height << "\" type=\"" << category << "/" << type << "\">" << std::endl;
            }
    };

    //IFrame types
    void IFrame (std::string url, std::string width = "auto", std::string height = "auto") {
        std::cout << "<iframe width=\"" << width << "\" height=\"" << height << "\" src=\"" << url << "\" allowfullscreen></iframe>" << std::endl;
    }

    void YouTubePlayer (std::string token, std::string width = "auto", std::string height = "auto") {
        token = _MIME_YouTube::YouTubeLinkExtractor(token);

        if (token == "ERROR") {
            std::cout << "<b>The input YouTube link is invalid.</b> Please check your link. Either you're performed a crashed request." << std::endl;
        } else {
            std::cout << "<iframe width=\"" << width << "\" height=\"" << height << "\" src=\"" << "https://youtube.com/embed/" << token << "\" allowfullscreen></iframe>" << std::endl;
        }
    }

    //Browser-based types (Audio, PDF, Video, ProgressBar)
    void Audio (std::string source) {
        std::cout << "<figure><audio controls src=\"" << source << "\"><a href=\"" << source << "\"></a></audio></figure>" << std::endl;
    }

    void Video (std::string video, std::string width = "auto", std::string height = "auto") {
        std::cout << "<video width=\"" << width << "\" height=\"" << height << "\" controls src=\"" << video << "\">animation</video>" << std::endl;
    }

    void CodeString (std::string code) {
        std::cout << "```\n" << std::endl << code << std::endl << "\n```\n" << std::endl;
    }

    void Image (std::string data, std::string width = "auto", std::string height = "auto") {
        std::cout << "<img src=\"" << data << "\" width=\"" << width<< "\" height=\"" << height << "\" />" << std::endl;
    }

    void ProgressBar(std::string html_width = "auto",  std::string maxvalue = "100", std::string progress ) {
        "<progress style='width:" + html_width + "' max='" + maxvalue + "' value='" + progress + "'></progress>";
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


    //model
    void OBJ (std::string objfile, std::string width = "auto", std::string height = "auto") {
        MimeHandler::_jupyter_model("obj", objfile, width, height);
    }

    void STL (std::string stlfile, std::string width = "auto", std::string height = "auto") {
        MimeHandler::_jupyter_model("stl", stlfile, width, height);
    }

    void U3D (std::string u3dfile, std::string width = "auto", std::string height = "auto") {
        MimeHandler::_jupyter_model("u3d", u3dfile, width, height);
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