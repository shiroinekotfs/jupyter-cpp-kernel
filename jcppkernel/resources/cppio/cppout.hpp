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

#include <iostream>
#include <string>

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

    static void Javascript(const std::string& jsfile) {
        std::cout << "<script src='" << jsfile << "'></script>" << std::endl;
    }

    static void GeoJSON(const std::string& geojsonfile) {
        std::cout << "<div id='map' style='height:400px;'></div>\n";
        std::cout << "<script src='https://unpkg.com/leaflet/dist/leaflet.js'></script>\n";
        std::cout << "<script>\nvar map = L.map('map').setView([0, 0], 2);\n"
                  "L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);\n"
                  "fetch('" << geojsonfile << "').then(res => res.json()).then(data => L.geoJSON(data).addTo(map));\n"
                  "</script>" << std::endl;
    }


    //model
    static void OBJ(const std::string& objfile) {
        std::cout << "<script src='https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js'></script>\n";
        std::cout << "<script src='https://cdn.jsdelivr.net/npm/three@0.128/examples/js/loaders/OBJLoader.js'></script>\n";
        std::cout << "<div id='obj-container' style='width:600px; height:400px;'></div>\n";
        std::cout << "<script>\nvar scene = new THREE.Scene();\n"
                  "var camera = new THREE.PerspectiveCamera(75, 600/400, 0.1, 1000);\n"
                  "var renderer = new THREE.WebGLRenderer();\n"
                  "renderer.setSize(600, 400);\n"
                  "document.getElementById('obj-container').appendChild(renderer.domElement);\n"
                  "var loader = new THREE.OBJLoader();\n"
                  "loader.load('" << objfile << "', function(object){ scene.add(object); renderer.render(scene, camera); });\n"
                  "</script>" << std::endl;
    }

    //text
    void PlainText (std::string plaintextfile, std::string width="auto", std::string height = "auto") {
        MimeHandler::_jupyter_text("plain", plaintextfile, width, height);
    }

    static void LaTex(const std::string& latexcode) {
        std::cout << "<script src='https://polyfill.io/v3/polyfill.min.js?features=es6'></script>\n";
        std::cout << "<script id='MathJax-script' async src='https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js'></script>\n";
        std::cout << "<p>\\(" << latexcode << "\\)</p>" << std::endl;
    }

    void HTML (std::string htmlfile, std::string width="auto", std::string height = "auto") {
        MimeHandler::_jupyter_text("html", htmlfile, width, height);
    }

    static void CSV(const std::string& csvfile) {
        std::cout << "<script>\nfetch('" << csvfile << "').then(response => response.text()).then(csv => {\n"
                  "let rows = csv.split('\n');\n"
                  "let table = '<table border=\"1\">';\n"
                  "rows.forEach(row => { table += '<tr>' + row.split(',').map(cell => '<td>' + cell + '</td>').join('') + '</tr>'; });\n"
                  "table += '</table>';\n"
                  "document.write(table);\n"
                  "});\n"
                  "</script>" << std::endl;
    }
}

#endif