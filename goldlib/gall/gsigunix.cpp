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
//  $Id: gsigunix.cpp,v 1.1.1.1 2000/02/25 10:11:11 asa Exp $
//  ------------------------------------------------------------------
//  Unix signal functions. Based on SLang source.
//  ------------------------------------------------------------------

#include <signal.h>
#include <unistd.h>
#include <gsigunix.h>


//  ------------------------------------------------------------------
//  We are primarily interested in blocking signals that would cause
//  the application to reset the tty.  These include suspend signals
//  and possibly interrupt signals.

static sigset_t gsig_old_signal_mask;
static volatile uint gsig_blocked_depth;


//  ------------------------------------------------------------------

int gsig_block_signals() {

  sigset_t new_mask;

  gsig_blocked_depth++;
  if(gsig_blocked_depth != 1)
    return 0;

  sigemptyset(&new_mask);
  sigaddset(&new_mask, SIGINT);
  sigaddset(&new_mask, SIGQUIT);
  #ifdef SIGTSTP
  sigaddset(&new_mask, SIGTSTP);
  sigaddset(&new_mask, SIGTTIN);
  sigaddset(&new_mask, SIGTTOU);
  #endif

  sigprocmask(SIG_BLOCK, &new_mask, &gsig_old_signal_mask);
  return 0;
}


//  ------------------------------------------------------------------

int gsig_unblock_signals() {

  if(gsig_blocked_depth == 0)
    return -1;

  gsig_blocked_depth--;

  if(gsig_blocked_depth != 0)
    return 0;

  sigprocmask(SIG_SETMASK, &gsig_old_signal_mask, NULL);
  return 0;
}


//  ------------------------------------------------------------------
