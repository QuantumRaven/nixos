{ ... }:
{
  hjem.users.corvidae.files = {
    ".config/starship.toml" = {
      text = ''
        "$schema" = 'https://starship.rs/config-schema.json'

        format = """
        [┌](bold 238) $directory$git_branch$git_status
        [|]$user
        [└](bold 238) $character"""

        right_format = """$cmd_duration$time$nix_shell$python$nodejs$rust$golang$php"""

        [cmd_duration]
        min_time = 500
        format = "[$duration](bold yellow) "

        [container]
        symbole = "⬢ "
        style = "bold red dimmed"
        format = "[$symbol [$name\]]($style)"

        [character]
        success_symbol = "[❯](bold green)"
        error_symbol = "[❯](bold red)"
        vicmd_symbol = "[❯](bold yellow)"

        [directory]
        style = "bold blue"
        home_symbol = "~"
        format = "[$path]($style)($home_symbol) "

        [git_branch]
        symbol = " "
        style = "bold purple"
        format = "[$symbol$branch]($style) "

        [git_commit]
        tag_symbol = "🏷 "
        format = "[\($hash$tag\)](style)"

        [git_status]
        conflicted = "🏳 "
        ahead = "🏎💨 "
        behind = "😰 "
        diverged = "😵 "
        up_to_date = "✓ "
        untracked = "🤷 "
        stashed = "📦 "
        modified = "📝 "
        staged = "[++\($count\)](green) "
        renamed = "👅 "
        deleted = "🗑 "
        style = "bold 208"
        format = "([\[$all_status$ahead_behind\]]($style) )"

        [time]
        disabled = false
        time_format = "%T"
        style = "bold yellow"
        format = "[$time]($style)"

        [user]
        style_user = "white bold"
        style_root = "red bold"
        disabled = false
        show_always = true
        format = "user: [$user](style)"

        # Programming languages

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
