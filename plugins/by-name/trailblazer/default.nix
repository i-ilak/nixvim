{ lib, ... }:
let
  inherit (lib.nixvim) defaultNullOpts;
in
lib.nixvim.plugins.mkNeovimPlugin {
  name = "trailblazer";
  packPathName = "trailblazer.nvim";
  package = "trailblazer-nvim";
  url = "https://github.com/LeonHeidelbach/trailblazer.nvim";
  description = "TrailBlazer enables you to seamlessly move through important project marks as quickly and efficiently as possible to make your workflow blazingly fast ™.";

  maintainers = [ lib.maintainers.MyName ];

  settingsOptions = {
    lang = defaultNullOpts.mkStr "en" "Language setting for Trailblazer.";
    auto_save_trailblazer_state_on_exit = defaultNullOpts.mkBool false "Auto-save state on exit.";
    auto_load_trailblazer_state_on_enter = defaultNullOpts.mkBool false "Auto-load state on enter.";
    custom_session_storage_dir = defaultNullOpts.mkStr "" "Custom session storage directory.";

    trail_options = {
      trail_mark_priority = defaultNullOpts.mkUnsignedInt 10001 "Priority of trail marks.";
      available_trail_mark_modes = defaultNullOpts.mkList [
        "global_chron"
        "global_buf_line_sorted"
        "global_fpath_line_sorted"
        "global_chron_buf_line_sorted"
        "global_chron_fpath_line_sorted"
        "global_chron_buf_switch_group_chron"
        "global_chron_buf_switch_group_line_sorted"
        "buffer_local_chron"
        "buffer_local_line_sorted"
      ] "Available trail mark modes.";
      current_trail_mark_mode = defaultNullOpts.mkStr "global_chron" "Initially selected trail mark mode.";
      current_trail_mark_list_type = defaultNullOpts.mkStr "quickfix" "Type of trail mark list.";
      trail_mark_list_rows = defaultNullOpts.mkUnsignedInt 10 "Number of rows in trail mark list.";
      verbose_trail_mark_select = defaultNullOpts.mkBool true "Show notification on mode change.";
      mark_symbol = defaultNullOpts.mkStr "•" "Symbol for trail marks.";
      newest_mark_symbol = defaultNullOpts.mkStr "⬤" "Symbol for newest mark.";
      cursor_mark_symbol = defaultNullOpts.mkStr "⬤" "Symbol for cursor mark.";
      next_mark_symbol = defaultNullOpts.mkStr "⬤" "Symbol for next mark.";
      previous_mark_symbol = defaultNullOpts.mkStr "⬤" "Symbol for previous mark.";
      multiple_mark_symbol_counters_enabled = defaultNullOpts.mkBool true "Enable multiple mark counters.";
      number_line_color_enabled = defaultNullOpts.mkBool true "Enable number line coloring.";
      trail_mark_in_text_highlights_enabled = defaultNullOpts.mkBool true "Enable in-text highlights.";
      trail_mark_symbol_line_indicators_enabled = defaultNullOpts.mkBool false "Enable symbol indicators.";
      symbol_line_enabled = defaultNullOpts.mkBool true "Enable symbol line.";
      default_trail_mark_stacks = defaultNullOpts.mkList [ "default" ] "Default trail mark stacks.";
      available_trail_mark_stack_sort_modes = defaultNullOpts.mkList [
        "alpha_asc"
        "alpha_dsc"
        "chron_asc"
        "chron_dsc"
      ] "Available stack sorting modes.";
      current_trail_mark_stack_sort_mode = defaultNullOpts.mkStr "alpha_asc" "Current stack sort mode.";
      move_to_nearest_before_peek = defaultNullOpts.mkBool false "Move to nearest before peeking.";
      move_to_nearest_before_peek_motion_directive_up = defaultNullOpts.mkStr "fpath_up" "Motion directive up.";
      move_to_nearest_before_peek_motion_directive_down = defaultNullOpts.mkStr "fpath_down" "Motion directive down.";
      move_to_nearest_before_peek_dist_type = defaultNullOpts.mkStr "lin_char_dist" "Distance type.";
    };
  };

  settingsExample = {
    lang = "en";
    auto_save_trailblazer_state_on_exit = false;
    trail_options = {
      current_trail_mark_mode = "global_chron";
      mark_symbol = "•";
    };
  };
}
