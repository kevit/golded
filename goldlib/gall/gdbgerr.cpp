//  This may look like C code, but it is really -*- C++ -*-

//  ------------------------------------------------------------------
//  The Goldware Library
//  Copyright (C) 1990-1999 Odinn Sorensen
//  Copyright (C) 1999-2000 Alexander S. Aganichev
//  ------------------------------------------------------------------
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Library General Public
//  License as published by the Free Software Foundation; either
//  version 2 of the License, or (at your option) any later version.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Library General Public License for more details.
//
//  You should have received a copy of the GNU Library General Public
//  License along with this program; if not, write to the Free
//  Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
//  MA 02111-1307, USA
//  ------------------------------------------------------------------
//  $Id: gdbgerr.cpp,v 1.6 2011/02/22 07:45:45 stas_degteff Exp $
//  ------------------------------------------------------------------
//  Debugging and logging.
//  ------------------------------------------------------------------

#include <string.h>
#include <stdio.h>
//  ------------------------------------------------------------------
#include <gutlmisc.h>
#include <gfilutil.h>
#include <gdbgerr.h>
#include <gstrall.h>

//  ------------------------------------------------------------------

int errorlevel = 0;
int error_exit = 0;

const char* etext[] = {
  "No",
  "Open",
  "Read",
  "Seek",
  "Memory",
  "Index",
  "Write",
  "Tell",
  "Close",
  "Config",
  "Break",
  "NoKeys",
  "Test",
  "Environment",
  "Lock",
  "Pointer",
  ""
};


// -------------------------------------------------------------------

static char gerrbuf[100];


// -------------------------------------------------------------------

char* gerrinfo(int __type, const char* __file, int __line) {

  sprintf(gerrbuf, "%s error exit at [%s,%u].", etext[__type], CleanFilename(__file), __line);
  return gerrbuf;
}


// -------------------------------------------------------------------

char* gerrinfo(const char* __message, const char* __file, int __line) {

  snprintf(gerrbuf, sizeof(gerrbuf), "%s at [%s,%u].", __message, CleanFilename(__file), __line);
  return gerrbuf;
}


// -------------------------------------------------------------------

char* gerrosinfo() {

  sprintf(gerrbuf, "%s reports error %u: %s.", ggetosstring(), errno, strerror(errno));
  return gerrbuf;
}


//  ------------------------------------------------------------------
