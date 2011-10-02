/***************************************************************************
 *   Copyright (C) 2010~2011 by CSSlayer                                   *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/

#ifndef FCITX_IPC_H
#define FCITX_IPC_H

#ifdef __cplusplus
extern "C" {
#endif

#define FCITX_IM_DBUS_PATH "/inputmethod"
#define FCITX_IC_DBUS_PATH "/inputcontext_%d"
#define FCITX_IC_DBUS_PATH_QSTRING "/inputcontext_%1"

#define FCITX_IM_DBUS_INTERFACE "org.fcitx.Fcitx.InputMethod"
#define FCITX_IC_DBUS_INTERFACE "org.fcitx.Fcitx.InputContext"

#ifdef __cplusplus
}
#endif

#endif // FCITX_IPC_H
// kate: indent-mode cstyle; space-indent on; indent-width 0;
