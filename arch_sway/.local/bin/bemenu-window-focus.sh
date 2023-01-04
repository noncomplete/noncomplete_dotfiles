#!/usr/bin/env bash
#
# bemenu-window-focus
# Copyright 2020 Edgar Vincent
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

declare -a app_list

CMDS="jq bemenu swaymsg"

for i in $CMDS; do
	command -v "$i" >/dev/null && continue ||
		{
			echo "$i command not found." 1>&2
			exit 1
		}
done

mapfile -t app_list < <(swaymsg -t get_tree | jq -r '.. | select(.type? | strings
			| test("(floating_|)con")) |
			"\(.id)\t\(.app_id // .window_properties.class) \t\(.name)"')

choice="$(for i in "${!app_list[@]}"; do
	printf "%d:  %s\n" "$i" "${app_list[i]#*$'\t'}"
done | bemenu -c -w -W 0.75 --fn='Iosevka Nerd Font 14' -ip "Select window: " -l "${#app_list[@]}")"

new_index=${choice%%:*}

if [ "$new_index" -eq "$new_index" ] 2>/dev/null; then
	new_id=${app_list[new_index]%%$'\t'*}
	swaymsg "[con_id=$new_id] focus"
fi
