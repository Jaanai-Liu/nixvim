{
  imports = [
    ./settings.nix
    ./keymaps.nix
    ./auto_cmds.nix
    ./file_types.nix

    ./plugins/themes

    ./plugins/cmp/cmp.nix
    ./plugins/cmp/cmp-copilot.nix
    ./plugins/cmp/lspkind.nix
    ./plugins/cmp/autopairs.nix
    ./plugins/cmp/schemastore.nix

    ./plugins/snippets/luasnip.nix

    ./plugins/editor/neo-tree.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/undotree.nix
    ./plugins/editor/illuminate.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/copilot-chat.nix
    ./plugins/editor/navic.nix

    ./plugins/ui/bufferline.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/startup.nix

    ./plugins/lsp/lsp.nix
    ./plugins/lsp/conform.nix
    ./plugins/lsp/fidget.nix

    ./plugins/git/lazygit.nix
    ./plugins/git/gitsigns.nix

    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/extra_plugins.nix
    ./plugins/utils/mini.nix
    ./plugins/utils/markdown-preview.nix
    ./plugins/utils/obsidian.nix
    ./plugins/utils/toggleterm.nix
    ./plugins/utils/web-devicons.nix
  ];
}
