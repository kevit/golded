//  This may look like C code, but it is really -*- C++ -*-

//  ------------------------------------------------------------------
//  The Goldware Library
//  Copyright (C) 1990-1999 Odinn Sorensen
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
//  $Id: gcharset.h,v 1.3 2007/02/05 08:23:18 stas_degteff Exp $
//  ------------------------------------------------------------------
//  Charset handling utility.
//  ------------------------------------------------------------------

#ifndef __gcharset_h
#define __gcharset_h

//  ------------------------------------------------------------------
//  Charset is set to this value if charset can't be taken from OS
#define GOLDED_DEFAULT_CHARSET "CP437"
//  ------------------------------------------------------------------

const char *get_charset(void);
const char *get_dos_charset(const char *);

//  ------------------------------------------------------------------

#endif // __gcharset_h
