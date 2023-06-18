function EnableCopilot()
    vim.cmd "Copilot enable"
    print("Copilot on")
end


vim.keymap.set("n", "<leader><leader>", "<cmd>lua EnableCopilot()<cr>")
