{ ... }:
{
  hjem.users.corvidae.files = {
    ".config/starship.toml" = {
      text = ''
        "$schema" = 'https://starship.rs/config-schema.json'

        format = """
        [┌](bold 238) $directory$git_branch$git_status
        [└](bold 238) $character $time"""

        right_format = """$cmd_duration$time$python$nodejs$rust$golang$php"""

        [character]
        success_symbol = "[❯](bold green)"
        error_symbol = "[❯](bold red)"
        vicmd_symbol = "[❯](bold yellow)"

        [directory]
        style = "bold blue"
        format = "[$path]($style) "

        [git_branch]
        symbol = "△ "
        style = "bold purple"
        format = "[$symbol$branch]($style) "

        [git_status]
        format = '([\[$all_status$ahead_behind\]]($style) )'
        style = "bold 208"

        [cmd_duration]
        min_time = 500
        format = "[$duration](bold yellow) "

        [time]
        disabled = false
        format = "[$time](bold 238)"
        time_format = "%T"

        [python]
        symbol = "py "
        format = "[$symbol $version]($style)"

        [rust]
        symbol = "rs "
        format = "[$symbol $version]($style)"

        [nodejs]
        symbol = "node "
        format = "[$symbol $version]($style)"
      '';
    };
  };
}
