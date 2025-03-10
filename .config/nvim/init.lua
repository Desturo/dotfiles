-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   init.lua                                           :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: nschneid <nschneid@student.42heilbronn.de  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/03/10 14:32:07 by nschneid          #+#    #+#             --
--   Updated: 2025/03/10 14:40:33 by nschneid         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

require("config.lazy")

vim.cmd("colorscheme cyberdream")

local opt = {
	number = true,
	relativenumber = true,

	expandtab = false,
	shiftwidth = 4,
	tabstop = 4,
	softtabstop = 4,

	list = true,
}

for k, v in pairs(opt) do
	vim.opt[k] = v
end

vim.opt.listchars = {tab = '>•'}
