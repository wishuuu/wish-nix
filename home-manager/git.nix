{pkgs, ...}:
{
  programs = {
    git = {
      enable = true;

      userEmail = "ppwiszu@gmail.com";
      userName = "Oskar Wiszowaty";

      extraConfig = {
        core.editor = "nvim";
        github.user = "wishuuu";
        mergetool.prompt = false;
        pull.rebase = false;
        credential.helper = "store";
      };

      aliases = {
        adog = "log --all --decorate --oneline --graph";
        p = "push";
        last = "log -1 HEAD --stat";
        cm = "commit -m";
        cam = "commit -am";
      };
    };

    lazygit = {
      enable = true;
      settings = {
        gui = {
          # showFileTree = false;

          theme = {
            activeBorderColor = ["blue" "bold"];
            selectedLineBgColor = ["white"];
          };
        };
        git = {
          # Improves performance
          # https://github.com/jesseduffield/lazygit/issues/2875#issuecomment-1665376437
          log.order = "default";

          fetchAll = false;
        };
      };
    };
  };

  home.shellAliases = {
    lg = "lazygit";
  };
}
