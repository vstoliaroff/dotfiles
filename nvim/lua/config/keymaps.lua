--  See `:help vim.keymap.set()`

--vim.keymap.set('n','0','gh', {silent = true})
--vim.keymap.set('n','$','gl', {silent = true})


-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.open_float, { desc = 'Show diagnostic under cursor' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


-- *********************************************************************************
-- ************************** PLUGINS **********************************************
-- *********************************************************************************

-- FLASH

vim.keymap.set({ 'n', 'x', 'o' },'<leader>s', function() require('flash').jump() end, {desc = 'Flash' })
vim.keymap.set({ 'n', 'x', 'o' },'<leader>S', function() require('flash').treesitter() end, {desc = 'Flash Treesitter' })
-- vim.keymap.set{'o','<leader>r', function() require('flash').remote() end, desc = 'Remote Flash' }
-- vim.keymap.set{{ 'o', 'x' },'<leader>R', function() require('flash').treesitter_search() end, desc = 'Treesitter Search' }
-- vim.keymap.set{ '<c-s>', mode = { 'c' }, function() require('flash').toggle() end, desc = 'Toggle Flash Search' }

-- TELESCOPE

vim.keymap.set('n','<leader>ff', function() require('telescope.builtin').find_files() end, {desc='[F]ind [F]iles'})
vim.keymap.set('n','<leader>b', function() require('telescope.builtin').buffers() end, {desc='[B]uffers'})
vim.keymap.set('n','<leader>lg', function() require('telescope.builtin').live_grep() end, {desc='[L]ive [G]rep'})

-- SNACKS

vim.keymap.set('n', '<leader>e', function() require('snacks').picker.explorer() end, { desc = 'Open Snacks Explorer' })

