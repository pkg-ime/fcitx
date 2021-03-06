/***************************************************************************
 *   Copyright (C) 2010~2010 by CSSlayer                                   *
 *   wengxt@gmail.com                                                      *
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
 *   51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.              *
 ***************************************************************************/

#ifndef _FCITX_PROFILE_H_
#define _FCITX_PROFILE_H_

#include <fcitx-config/fcitx-config.h>

#ifdef __cplusplus
extern "C" {
#endif
    struct _FcitxInstance;

    /**
     * @file profile.h
     *
     * @brief define and function for ~/.config/fcitx/profile
     */

    /**
     * @brief struct for ~/.config/fcitx/profile
     **/
    typedef struct _FcitxProfile {
        /**
         * @brief derives from FcitxGenericConfig
         **/
        FcitxGenericConfig gconfig;
        /**
         * @brief use remind mode
         **/
        boolean bUseRemind;

        /**
         * @brief current im index
         **/
        char* imName;

        /**
         * @brief use full width punc
         **/
        boolean bUseWidePunc;

        /**
         * @brief use full width char
         **/
        boolean bUseFullWidthChar;

        /**
         * @brief show preedit string in client or not
         **/
        boolean bUsePreedit;

        /**
         * @brief enabled im list
         **/
        char* imList;

    } FcitxProfile;

    /**
     * @brief load profile
     *
     * @param profile profile instance
     * @return boolean loading successful
     **/
    boolean FcitxProfileLoad(FcitxProfile* profile, struct _FcitxInstance* instance);
    /**
     * @brief save profile
     *
     * @param profile profile instance
     * @return void
     **/
    void FcitxProfileSave(FcitxProfile* profile);

#ifdef __cplusplus
}
#endif

#endif

// kate: indent-mode cstyle; space-indent on; indent-width 0;
