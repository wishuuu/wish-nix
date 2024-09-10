{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    aggressiveResize = true;

    clock24 = true;
    escapeTime = 50;

    keyMode = "vi";
    customPaneNavigationAndResize = true;

    shortcut = "a";

    plugins = with pkgs.tmuxPlugins; [
      gruvbox
    ];

    extraConfig = ''
      set -g mouse on
      bind-key C-a last-window

      set -g focus-events on

      set -g status-interval 1

      set -g automatic-rename
      set -g automatic-rename-format '#{pane_current_command}'

      set -g base-index 1
      setw -g pane-base-index 1
    '';
  };
}
