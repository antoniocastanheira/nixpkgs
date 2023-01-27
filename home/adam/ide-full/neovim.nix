{ pkgs, unstable, homeDirectory, ... }: {
  programs.neovim = {
    coc.settings = {
      languageserver = {
        nix = {
          command = "rnix-lsp";
          filetypes = [ "nix" ];
        };
        kotlin = {
          command = "kotlin-language-server";
          filetypes = [ "kotlin" ];
          "trace.server" = "messages";
          settings = {
            kotlin = {
              compiler = {
                jvm = {
                  target = "17";
                };
              };
            };
          };
        };
      };
    };

    withRuby = true;

    plugins = with pkgs.vimPlugins; [
      { plugin = vim-go;
        config = ''
          let g:go_bin_path = "${homeDirectory}/go/bin"
          let g:go_debug_substitute_paths = [['/work', '/Users/adam/Modules/authmongo']]
          let g:go_debug_windows = {
            \ 'vars':  'rightbelow 60vnew',
            \ 'stack': 'rightbelow 10new',
          \ }
        '';
      }
      vim-nix
      vim-pug
      vim-vue
      vim-ruby
      vim-rails
      kotlin-vim

      coc-go
      coc-haxe
      coc-java
      coc-json
      coc-yaml
      # coc-volar
      coc-eslint
      coc-prettier
      coc-tsserver
    ] ++ (with unstable.vimPlugins; [
      coc-volar
      copilot-vim
    ]);
  };
}
