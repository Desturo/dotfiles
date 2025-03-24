-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   init.lua                                           :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: nschneid <nschneid@student.42heilbronn.de  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/03/10 14:32:07 by nschneid          #+#    #+#             --
--   Updated: 2025/03/13 11:54:42 by nschneid         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

vim.g.mapleader = " "
require("config.lazy")


local opt = {
	number = true,
	relativenumber = true,

	expandtab = false,
	shiftwidth = 4,
	tabstop = 4,
	softtabstop = 4,


	colorcolumn = "80",

	list = true,
	clipboard = "unnamedplus",
	incsearch = true,
	hlsearch = true,
	langmap = "tj,nk,sl",
}

for k, v in pairs(opt) do
	vim.opt[k] = v
end

vim.opt.listchars = { tab = '>•', trail = '~' }

local formatgrp = vim.api.nvim_create_augroup("nvim_42_format", {})

vim.api.nvim_create_autocmd("BufWritePre", {
    group = formatgrp,
    callback = function()
        vim.cmd("Format")  -- Runs the formatter.nvim format command before saving
    end,
})


