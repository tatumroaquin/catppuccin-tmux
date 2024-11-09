show_pomodoro() {
  local index=$1
  local icon, color, text, module

  icon="$(get_tmux_option "@catppuccin_pomodoro_icon" "󰅒")"
  color="$(get_tmux_option "@catppuccin_pomodoro_color" "$thm_green")"
  text="$(get_tmux_option "@catppuccin_pomodoro_text" "#{pomodoro_status}")"

  module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
