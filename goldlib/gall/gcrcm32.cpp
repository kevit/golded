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
//  $Id: gcrcm32.cpp,v 1.2 2005/10/31 22:18:26 ssianky Exp $
//  ------------------------------------------------------------------
//  CRC-16, CRC-32 and Hashing
//  ------------------------------------------------------------------

#include <gctype.h>
#include <gcrcall.h>


//  ------------------------------------------------------------------
//  Generate CRC-32 of a memory block

dword memCrc32(const void* _m, long l, bool __case, dword mask) {

  long n;
  dword crc = mask;
  const char *m = (const char *)_m;

  if(__case) {
    for(n=0; n<l; n++)
      crc = updCrc32(g_toupper(*m++), crc);
  }
  else {
    for(n=0; n<l; n++)
      crc = updCrc32(*m++, crc);
  }

  return crc;
}


//  ------------------------------------------------------------------
