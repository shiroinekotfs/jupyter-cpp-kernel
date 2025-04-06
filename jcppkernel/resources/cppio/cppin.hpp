/*==============================================================================
C++ Header for Jupyter C++ kernel

Copyright (C) 2025 shiroinekotfs
Copyright (C) 2025 anhvlt-2k6

Component: Input Header

Purpose:   Allow user to enter input into Jupyter, without the need to manipulate
           on source code with Regex (Python Kernel file)
Owner:     shiroinekotfs and anhvlt-2k6 (signed off by shiroinekotfs)
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux

First created by: shiroinekotfs and anhvlt-2k6 (signed off by shiroinekotfs)

Help Link: https://github.com/shiroinekotfs/jupyter-cpp-kernel
Report issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues
==============================================================================*/

#ifndef _CPPIN_HPP
#define _CPPIN_HPP

#define __GET_INPUT_STREAM_JP "<inputRequest>"
namespace cpp_in_ns {

    // Custom streambuf that prints the prompt at the beginning of each new input line.
    class PromptedStreambuf: public std::streambuf {
        private: std::streambuf * orig;
        bool new_line;
        public: PromptedStreambuf(std::streambuf * sb): orig(sb),
        new_line(true) {}

        protected:
            // Called when the input buffer is empty.
            int underflow() override {
                if (new_line) {
                    std::cout << __GET_INPUT_STREAM_JP;
                    std::cout.flush();
                    new_line = false;
                }
                return orig -> sgetc();
            }

        // Called when a character is extracted.
        int uflow() override {
            if (new_line) {
                std::cout << __GET_INPUT_STREAM_JP;
                std::cout.flush();
                new_line = false;
            }
            int ch = orig -> sbumpc();
            if (ch == '\n') {
                new_line = true;
            }
            return ch;
        }

        // Handles block input, used by std::getline.
        std::streamsize xsgetn(char * s, std::streamsize count) override {
            if (new_line) {
                std::cout << __GET_INPUT_STREAM_JP;
                std::cout.flush();
                new_line = false;
            }
            std::streamsize result = orig -> sgetn(s, count);
            // If a newline is encountered in the block, prepare for the next prompt.
            for (std::streamsize i = 0; i < result; ++i) {
                if (s[i] == '\n') {
                    new_line = true;
                    break;
                }
            }
            return result;
        }
    };
}

struct cpp_in_ns_Initializer {
    cpp_in_ns::PromptedStreambuf * psb;
    std::streambuf * orig;
    cpp_in_ns_Initializer() {
            orig = std::cin.rdbuf();
            psb = new cpp_in_ns::PromptedStreambuf(orig);
            std::cin.rdbuf(psb);
        }
        ~cpp_in_ns_Initializer() {
            std::cin.rdbuf(orig);
            delete psb;
        }
};

static cpp_in_ns_Initializer cpp_in_ns_initializer;

#endif