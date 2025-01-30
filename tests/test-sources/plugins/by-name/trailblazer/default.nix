{
  empty = {
    plugins.trailblazer.enable = true;
  };

  defaults = {
    plugins.trailblazer = {
      enable = true;

      settings = {
        lang = "en";
        auto_save_trailblazer_state_on_exit = false;
        auto_load_trailblazer_state_on_enter = false;
        custom_session_storage_dir = "";

        trail_options = {
          trail_mark_priority = 10001;
          available_trail_mark_modes = [
            "global_chron"
            "global_buf_line_sorted"
            "global_fpath_line_sorted"
            "global_chron_buf_line_sorted"
            "global_chron_fpath_line_sorted"
            "global_chron_buf_switch_group_chron"
            "global_chron_buf_switch_group_line_sorted"
            "buffer_local_chron"
            "buffer_local_line_sorted"
          ];
          current_trail_mark_mode = "global_chron";
          current_trail_mark_list_type = "quickfix";
          trail_mark_list_rows = 10;
          verbose_trail_mark_select = true;
          mark_symbol = "•";
          newest_mark_symbol = "⬤";
          cursor_mark_symbol = "⬤";
          next_mark_symbol = "⬤";
          previous_mark_symbol = "⬤";
          multiple_mark_symbol_counters_enabled = true;
          number_line_color_enabled = true;
          trail_mark_in_text_highlights_enabled = true;
          trail_mark_symbol_line_indicators_enabled = false;
          symbol_line_enabled = true;
          default_trail_mark_stacks = [ "default" ];
          available_trail_mark_stack_sort_modes = [
            "alpha_asc"
            "alpha_dsc"
            "chron_asc"
            "chron_dsc"
          ];
          current_trail_mark_stack_sort_mode = "alpha_asc";
          move_to_nearest_before_peek = false;
          move_to_nearest_before_peek_motion_directive_up = "fpath_up";
          move_to_nearest_before_peek_motion_directive_down = "fpath_down";
          move_to_nearest_before_peek_dist_type = "lin_char_dist";
        };
      };
    };
  };

  example = {
    plugins.trailblazer = {
      enable = true;

      settings = {
        lang = "en";
        auto_save_trailblazer_state_on_exit = false;
        trail_options = {
          current_trail_mark_mode = "global_chron";
          mark_symbol = "•";
        };
      };
    };
  };
}
