/*==============================================================================
GZIP Version header

Copyright (C) Mapbox

Component: Component Header

Purpose:   gzip compression and decompression for C++ programs
Owner:     Mapbox
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: Dane Springmeyer (signed-off by Tsuki Takineko)
==============================================================================*/

#ifndef GZIP_VERSION_HPP
#define GZIP_VERSION_HPP

#pragma once

/// The major version number
#define GZIP_VERSION_MAJOR 1

/// The minor version number
#define GZIP_VERSION_MINOR 0

/// The patch number
#define GZIP_VERSION_PATCH 0

/// The complete version number
#define GZIP_VERSION_CODE (GZIP_VERSION_MAJOR * 10000 + GZIP_VERSION_MINOR * 100 + GZIP_VERSION_PATCH)

/// Version number as string
#define GZIP_VERSION_STRING "1.0.0"

#endif