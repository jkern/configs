--
-- An Example from:
-- http://www.xmonad.org/xmonad-docs/xmonad-contrib/XMonad-Doc-Configuring.html
--

import IO
import XMonad
import XMonad.Layout.NoBorders
import XMonad.Layout.Grid
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run
import System.IO
import System.Exit

-- Basic Configuration
-------------------------------------------------------------------------------
--
-- Set the default terminal
--
myTerminal = "urxvtc"

--
-- Set the Mod Key
--
myModMask = mod4Mask

--
-- Colors and Such
--
myBorderWidth = 1
myNormalBorderColor = "#dddddd"
myFocusedBorderColor= "#ff0000"

-------------------------------------------------------------------------------

--
-- Floating Windows
--
myManageHook = composeAll     [ className =? "xine"  --> doFloat
                              , className =? "feh"  --> doFloat 
                              , className =? "glxgears"  --> doFloat 
                              , title     =? "Save a Bookmark"  --> doFloat -- del.icio.us popup
                              , title     =? "Edit Bookmark"  --> doFloat -- del.icio.us popup
                              , className =? "mplayer" --> doFloat ]


--
-- Status bars and logging
--
newManageHook = myManageHook <+> manageHook defaultConfig <+> manageDocks
myLayoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig ||| Grid


-------------------------------------------------------------------------------


--
-- The main loop
--

main = do
        xmobar <- spawnPipe "xmobar"  -- spawns xmobar and returns a handle
        xmonad $  defaultConfig {

        -- Simple Stuff
                  terminal                = myTerminal
                , modMask                 = myModMask
                , borderWidth             = myBorderWidth
                , normalBorderColor       = myNormalBorderColor
                , focusedBorderColor      = myFocusedBorderColor

        -- Hooks, layouts
                -- print the output of xmobarPP to the handle
                , logHook = dynamicLogWithPP $ xmobarPP { ppOutput = hPutStrLn xmobar } 
                , manageHook      = newManageHook
                , layoutHook      = myLayoutHook
        }
