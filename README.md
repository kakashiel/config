```
{
  "security.workspace.trust.untrustedFiles": "open",
  "editor.suggestSelection": "first",
  "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
  "terminal.integrated.defaultProfile.windows": "Command Prompt",
  "editor.fontSize": 16,
  "vim.easymotion": true,
  "vim.incsearch": true,
  "vim.useSystemClipboard": true,
  "vim.useCtrlKeys": true,
  "vim.hlsearch": true,
  "vim.leader": "<space>",
  "vim.handleKeys": {"<C-a>": false, "<C-f>": false},
  "vim.insertModeKeyBindings": [
    {"before": ["j", "k"], "after": ["<Esc>"]},
    {"before": ["k", "j"], "after": ["<Esc>"]}
  ],
  "vim.normalModeKeyBindingsNonRecursive": [
    {"before": ["u"], "commands": ["undo"]},
    {"before": ["U"], "commands": ["redo"]},
    {"before": ["=", "="], "after": ["gg=G"]},
    {
      "before": ["<leader>", "n"],
      "commands": ["workbench.files.action.showActiveFileInExplorer"]
    },
    {
      "before": ["<leader>", "e"],
      "commands": ["workbench.action.quickOpenLeastRecentlyUsedEditorInGroup"]
    },
    {
      "before": ["<leader>", "/"],
      "commands": ["editor.action.commentLine"]
    },
    {
      "before": ["<C-o>"],
      "commands": ["workbench.action.navigateBack"]
    },
    {
      "before": ["<C-i>"],
      "commands": ["workbench.action.navigateForward"]
    },
    {"before": ["<C-n>"], "commands": [":nohl"]},
    {"before": ["K"], "commands": ["lineBreakInsert"], "silent": true},
    {"before": ["<leader>", "f"], "commands": ["revealInExplorer"]}
  ],
}
```
