-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   spec1.lua                                          :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: nschneid <nschneid@student.42heilbronn.de  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/03/10 14:27:32 by nschneid          #+#    #+#             --
--   Updated: 2025/03/10 14:28:32 by nschneid         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

return {
	{
		"Diogo-ss/42-header.nvim",
		cmd = { "Stdheader" },
		keys = { "<F1>" },
		opts = {
			default_map = true, -- Default mapping <F1> in normal mode.
    			auto_update = true, -- Update header when saving.
			user = "nschneid", -- Your user.
			mail = "nschneid@student.42heilbronn.de", -- Your mail.
			-- add other options.
		},
		config = function(_, opts)
		require("42header").setup(opts)
    		end,
	}
}
