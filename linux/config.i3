##############################################################################
###################    Core i3 settings and keybindings    ####################
###############################################################################
# Set mod key (Mod1=<Alt>, Mod4=<Super>)
set $mod Mod1

# set default desktop layout (default is tiling)
# workspace_layout tabbed <stacking|tabbed>

# Configure border style <normal|1pixel|pixel xx|none|pixel>
default_border pixel 0
default_floating_border none

# Hide borders
hide_edge_borders none

# change borders
bindsym $mod+u border none
# bindsym $mod+y border pixel 1
bindsym $mod+n border normal

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font xft:FireCode-Retina 11

# Use Mouse+$mod to drag floating windows
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec terminology -e "fish" #--font="FiraCode-Retina.otf" 

# kill focused window
bindsym $mod+Shift+q kill

# start program launcher
bindsym $mod+d exec --no-startup-id dmenu_recency

# launch categorized menu
bindsym $mod+z exec --no-startup-id morc_menu

################################################################################################
## sound-section - DO NOT EDIT if you wish to automatically upgrade Alsa -> Pulseaudio later! ##
################################################################################################

exec --no-startup-id volumeicon
bindsym $mod+Ctrl+m exec terminal -e 'alsamixer'
#exec --no-startup-id pulseaudio
#exec --no-startup-id pa-applet
#bindsym $mod+Ctrl+m exec pavucontrol

###############################################################################
#########    Removed all applications bound to MOD+X for startup     ##########
###############################################################################
# Screen brightness controls
# bindsym XF86MonBrightnessUp exec "xbacklight -inc 10; notify-send 'brightness up'"
# bindsym XF86MonBrightnessDown exec "xbacklight -dec 10; notify-send 'brightness down'"

# Start Applications
# bindsym $mod+Ctrl+b exec terminal -e 'bmenu'
# bindsym $mod+i exec calamares_polkit
# bindsym $mod+Ctrl+a exec terminal -e 'setup'
# bindsym $mod+F2 exec palemoon
# bindsym $mod+F3 exec pcmanfm
# bindsym $mod+F3 exec ranger
# bindsym $mod+Shift+F3 exec gksu pcmanfm
# bindsym $mod+F5 exec terminology -e 'mocp'
# bindsym $mod+t exec --no-startup-id pkill compton
# bindsym $mod+Ctrl+t exec --no-startup-id compton -b
# bindsym $mod+Shift+d --release exec "killall dunst; exec notify-send 'restart dunst'"
# bindsym Print exec --no-startup-id i3-scrot
# bindsym $mod+Print --release exec --no-startup-id i3-scrot -w
# bindsym $mod+Shift+Print --release exec --no-startup-id i3-scrot -s
# bindsym $mod+F1 exec xdg-open /usr/share/doc/manjaro/i3_help_live.pdf
# bindsym $mod+Ctrl+x --release exec --no-startup-id xkill

# focus_follows_mouse no

###############################################################################
####################       Keys for navigating windows     ####################
###############################################################################
# change focus - vim
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

# change focus - arrow
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window - vim
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# move focused window - arrow
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split orientation
bindsym $mod+x split h;exec notify-send 'tile across x-axis'
bindsym $mod+y split v;exec notify-send 'tile across y-axis'
bindsym $mod+q split toggle

# toggle fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+t layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+f floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# toggle sticky
bindsym $mod+Shift+s sticky toggle

# focus the parent container
bindsym $mod+a focus parent

### REMOVED SCRATCHPAD CONTROLS
##
# move the currently focused window to the scratchpad
# bindsym $mod+Shift+minus move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
# bindsym $mod+minus scratchpad show


###############################################################################
###################         Workspace configuations        ####################
###############################################################################
# Workspace names
# to display names or symbols instead of plain workspace numbers you can use
# something like: set $ws1 1:mail
#                 set $ws2 2:

set $ws1 Term
set $ws2 Code
set $ws3 FiFo
set $ws4 Disc
set $ws5 Spot
set $ws6 6
set $ws7 7
set $ws8 8

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8

# Move focused container to workspace
bindsym $mod+Ctrl+1 move container to workspace $ws1
bindsym $mod+Ctrl+2 move container to workspace $ws2
bindsym $mod+Ctrl+3 move container to workspace $ws3
bindsym $mod+Ctrl+4 move container to workspace $ws4
bindsym $mod+Ctrl+5 move container to workspace $ws5
bindsym $mod+Ctrl+6 move container to workspace $ws6
bindsym $mod+Ctrl+7 move container to workspace $ws7
bindsym $mod+Ctrl+8 move container to workspace $ws8

# Move to workspace with focused container
bindsym $mod+Shift+1 move container to workspace $ws1; workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2; workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3; workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4; workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5; workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6; workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7; workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8; workspace $ws8

# workspace back and forth (with/without active container)
workspace_auto_back_and_forth yes
bindsym $mod+b workspace back_and_forth
bindsym $mod+Shift+b move container to workspace back_and_forth; workspace back_and_forth

#navigate workspaces next / previous
bindsym $mod+Ctrl+Right workspace next
bindsym $mod+Ctrl+Left workspace prev


# Open applications on specific workspaces
# assign [class="Thunderbird"] $ws1
# assign [class="Pale moon"] $ws2
# assign [class="Pcmanfm"] $ws3
# assign [class="Skype"] $ws5

# Open specific applications in floating mode
for_window [title="alsamixer"] floating enable border pixel 1
for_window [class="calamares"] floating enable border normal
for_window [class="Clipgrab"] floating enable
for_window [title="File Transfer*"] floating enable
for_window [class="Galculator"] floating enable border pixel 1
for_window [class="GParted"] floating enable border normal
for_window [title="i3_help"] floating enable sticky enable border normal
for_window [class="Lightdm-settings"] floating enable
for_window [class="Lxappearance"] floating enable border normal
for_window [class="Manjaro-hello"] floating enable border normal
for_window [class="Manjaro Settings Manager"] floating enable border normal
for_window [title="MuseScore: Play Panel"] floating enable
for_window [class="Nitrogen"] floating enable sticky enable border normal
for_window [class="Oblogout"] fullscreen enable
for_window [class="octopi"] floating enable
for_window [title="About Pale Moon"] floating enable
for_window [class="Pamac-manager"] floating enable
for_window [class="Pamac-updater"] floating enable
for_window [class="Pavucontrol"] floating enable
for_window [class="Qtconfig-qt4"] floating enable border normal
for_window [class="qt5ct"] floating enable sticky enable border normal
for_window [title="sudo"] floating enable border normal
for_window [class="Simple-scan"] floating enable border normal
for_window [class="(?i)System-config-printer.py"] floating enable border normal
for_window [class="Skype"] floating enable border normal
for_window [class="Timeset-gui"] floating enable border normal
for_window [class="(?i)virtualbox"] floating enable border normal
for_window [class="Xfburn"] floating enable

# switch to workspace with urgent window automatically
for_window [urgent=latest] focus

# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart

# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# Set shut down, restart and locking features
bindsym $mod+0 mode "$mode_system"
set $mode_system (l)ock, (e)xit, switch_(u)ser, (s)uspend, (h)ibernate, (r)eboot, (Shift+s)hutdown
mode "$mode_system" {
    bindsym l exec --no-startup-id i3exit lock, mode "default"
    bindsym s exec --no-startup-id i3exit suspend, mode "default"
    bindsym u exec --no-startup-id i3exit switch_user, mode "default"
    bindsym e exec --no-startup-id i3exit logout, mode "default"
    bindsym h exec --no-startup-id i3exit hibernate, mode "default"
    bindsym r exec --no-startup-id i3exit reboot, mode "default"
    bindsym Shift+s exec --no-startup-id i3exit shutdown, mode "default"

    # exit system mode: "Enter" or "Escape"
    bindsym Return mode "default"
    bindsym Escape mode "default"
}


###############################################################################
###################         Controls for resize mode       ####################
###############################################################################
bindsym $mod+r mode "resize"
mode "resize" {
        # Remapped the bindings to grow in the direction you click 
	# Allow both Vim keybindings for direction and arrow keys
        bindsym h           resize grow   left  5 px or 5 ppt
        bindsym j           resize grow   down  5 px or 5 ppt
        bindsym k           resize grow   up    5 px or 5 ppt
        bindsym l           resize grow   right 5 px or 5 ppt

        bindsym Left        resize grow   left  5 px or 5 ppt
        bindsym Down        resize grow   down  5 px or 5 ppt
        bindsym Up          resize grow   up    5 px or 5 ppt
        bindsym Right       resize grow   right 5 px or 5 ppt

	# Mapped new bindings to shrink the panel in the given direction
	# Allow both Vim keybindings for direction and arrow keys
	bindsym Shift+h     resize shrink right 5 px or 5 ppt
	bindsym Shift+j     resize shrink up    5 px or 5 ppt
	bindsym Shift+k     resize shrink down  5 px or 5 ppt
	bindsym Shift+l     resize shrink left  5 px or 5 ppt

	bindsym Shift+Left  resize shrink right 5 px or 5 ppt
        bindsym Shift+Down  resize shrink up    5 px or 5 ppt
        bindsym Shift+Up    resize shrink down  5 px or 5 ppt
        bindsym Shift+Right resize shrink left  5 px or 5 ppt

        # exit resize mode: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

# Lock screen
bindsym $mod+9 exec --no-startup-id blurlock

# Autostart applications
exec --no-startup-id nitrogen --restore; sleep 1; compton -b
exec --no-startup-id start_conky_live_maia
# exec --no-startup-id blueman
exec --no-startup-id clipit
exec --no-startup-id desktop-items
exec --no-startup-id manjaro-hello
exec --no-startup-id nm-applet
exec --no-startup-id compton --config ~/.config/compton.conf &
exec --no-startup-id pamac-tray
exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
# exec_always --no-startup-id sbxkb
exec --no-startup-id xfce4-power-manager
exec_always --no-startup-id ff-theme-util
exec_always --no-startup-id setcursor

###############################################################################
### Need to leave these in, although they get replaced by wal
###############################################################################
# Color palette used for the terminal ( ~/.extend.Xresources file )
# Colors are gathered based on the documentation:
# https://i3wm.org/docs/userguide.html#xresources
# Change the variable name at the place you want to match the color
# of your terminal like this:
# [example]
# If you want your bar to have the same background color as your 
# terminal background change the line 362 from:
# background  #2B2C2B
# to:
# background $term_background
# Same logic applied to everything else.
set_from_resource $term_background background
set_from_resource $term_foreground foreground
set_from_resource $term_color0     color0
set_from_resource $term_color1     color1
set_from_resource $term_color2     color2
set_from_resource $term_color3     color3
set_from_resource $term_color4     color4
set_from_resource $term_color5     color5
set_from_resource $term_color6     color6
set_from_resource $term_color7     color7
set_from_resource $term_color8     color8
set_from_resource $term_color9     color9
set_from_resource $term_color10    color10
set_from_resource $term_color11    color11
set_from_resource $term_color12    color12
set_from_resource $term_color13    color13
set_from_resource $term_color14    color14
set_from_resource $term_color15    color15

###############################################################################
###################            Settings for i3 bar         ####################
###############################################################################
# Start i3bar to display a workspace bar (plus the system information i3status if available)
bar {
	i3bar_command i3bar
	status_command i3status
	position bottom

## please set your primary output first. Example: 'xrandr --output eDP1 --primary'
#	tray_output primary
#	tray_output eDP1

	bindsym button4 nop
	bindsym button5 nop
#   font xft:URWGothic-Book 11
	strip_workspace_numbers yes

    colors {
        background #222D31
        statusline #F9FAF9
        separator  #454947

#                      border  backgr. text
        focused_workspace  #F9FAF9 #16a085 #292F34
        active_workspace   #595B5B #353836 #FDF6E3
        inactive_workspace #595B5B #222D31 #EEE8D5
        binding_mode       #16a085 #2C2C2C #F9FAF9
        urgent_workspace   #16a085 #FDF6E3 #E5201D
    }
}

# hide/unhide i3status bar
bindsym $mod+m bar mode toggle

# Theme colors
# class                   border  backgr. text    indic.   child_border
  client.focused          #556064 #556064 #80FFF9 #FDF6E3
  client.focused_inactive #2F3D44 #2F3D44 #1ABC9C #454948
  client.unfocused        #2F3D44 #2F3D44 #1ABC9C #454948
  client.urgent           #CB4B16 #FDF6E3 #1ABC9C #268BD2
  client.placeholder      #000000 #0c0c0c #ffffff #000000 

  client.background       #2B2C2B

###############################################################################
####################          settings for i3-gaps:        ####################
###############################################################################

# Set inner/outer gaps
gaps inner 14 
gaps outer -2 

# Additionally, you can issue commands with the following syntax. This is useful to bind keys to changing the gap size.
# gaps inner|outer current|all set|plus|minus <px>
# gaps inner all set 10
# gaps outer all plus 5

# Smart gaps (gaps used if only more than one container on the workspace)
smart_gaps on

# Smart borders (draw borders around container only if it is not the only container on this workspace)
# on|no_gaps (on=always activate and no_gaps=only activate if the gap size to the edge of the screen is 0)
smart_borders on

# Press $mod+Shift+g to enter the gap mode. Choose o or i for modifying outer/inner gaps. Press one of + / - (in-/decrement for current workspace) or 0 (remove gaps for current workspace). If you also press Shift with these keys, the change will be global for all workspaces.
set $mode_gaps Gaps: (o) outer, (i) inner
set $mode_gaps_outer Outer Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_inner Inner Gaps: +|-|0 (local), Shift + +|-|0 (global)
bindsym $mod+Shift+g mode "$mode_gaps"

mode "$mode_gaps" {
        bindsym o      mode "$mode_gaps_outer"
        bindsym i      mode "$mode_gaps_inner"
        bindsym Return mode "default"
        bindsym Escape mode "default"
}
mode "$mode_gaps_inner" {
        bindsym plus  gaps inner current plus 5
        bindsym minus gaps inner current minus 5
        bindsym 0     gaps inner current set 0

        bindsym Shift+plus  gaps inner all plus 5
        bindsym Shift+minus gaps inner all minus 5
        bindsym Shift+0     gaps inner all set 0

        bindsym Return mode "default"
        bindsym Escape mode "default"
}
mode "$mode_gaps_outer" {
        bindsym plus  gaps outer current plus 5
        bindsym minus gaps outer current minus 5
        bindsym 0     gaps outer current set 0

        bindsym Shift+plus  gaps outer all plus 5
        bindsym Shift+minus gaps outer all minus 5
        bindsym Shift+0     gaps outer all set 0

        bindsym Return mode "default"
        bindsym Escape mode "default"
}
