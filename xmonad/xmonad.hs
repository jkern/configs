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
import qualified Data.Map as M
import XMonad.Prompt
import XMonad.Prompt.AppendFile
import XMonad.Prompt.Shell
import XMonad.Prompt.XMonad

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
-- New Keybindings
--
newKeys x =
			      [ ((modMask x, xK_F12), xmonadPrompt prompt')
			      , ((modMask x .|. controlMask, xK_n), appendFilePrompt prompt' "/home/jkern/personal/notes/log/.txt")
			       ,((modMask x, xK_F3 ), shellPrompt  prompt')]

myKeys x = M.union (keys defaultConfig x) (M.fromList (newKeys x))

--
-- Floating Windows
--
myManageHook = composeAll     [ className =? "xine"  		--> doFloat
                              , className =? "feh"  		--> doFloat 
                              , className =? "glxgears"  	--> doFloat 
                              , title     =? "Save a Bookmark"  --> doFloat -- del.icio.us popup
                              , title     =? "Edit Bookmark"  	--> doFloat -- del.icio.us popup
                              , className =? "mplayer" 		--> doFloat ]


prompt' = defaultXPConfig {      font = "xft:ProFont:pixelsize=13:antialias=true:hinting=true"
			        , bgColor = "#2c2c32"
			        , defaultText  = ""
			        , fgColor = "#AFAF87"
			        , bgHLight = "#2c2c32"
			        , fgHLight = "#E04613"
			        , borderColor = "#E04613"
			        , promptBorderWidth = 0
			        , position = Bottom
			        , height = 10 
			        , historySize = 256 }

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
		, keys			  = myKeys
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
