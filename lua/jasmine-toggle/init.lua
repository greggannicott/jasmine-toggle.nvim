local m = {}

local function get_function_name(node)
	local function_identifier = node:child(0)
	local function_name
	if function_identifier:type() == "identifier" then
		function_name = vim.treesitter.get_node_text(function_identifier, 0)
	end
	return function_name
end

local function find_ancestor_function_call_by_names(node, names)
	if not node then
		return nil
	end
	if node:type() == "call_expression" then
		local function_name = get_function_name(node)
		if vim.tbl_contains(names, function_name) then
			return node
		end
	end
	return find_ancestor_function_call_by_names(node:parent(), names)
end

local function toggle_function_call(function_names)
	-- Find parent function call statement
	local current_node = vim.treesitter.get_node()
	local function_call_node = find_ancestor_function_call_by_names(current_node, function_names)
	if function_call_node then
		local func_call_start_row, func_call_start_col = function_call_node:start()
		if get_function_name(function_call_node) == function_names[1] then
			-- Prefix function with prefix character (eg. f)
			vim.api.nvim_buf_set_text(
				0,
				func_call_start_row,
				func_call_start_col,
				func_call_start_row,
				func_call_start_col,
				{ "f" }
			)
		else
			-- Remove prefix character
			vim.api.nvim_buf_set_text(
				0,
				func_call_start_row,
				func_call_start_col,
				func_call_start_row,
				func_call_start_col + 1,
				{ "" }
			)
		end
	end
end

m.toggle_describe_focus = function()
	toggle_function_call({ "describe", "fdescribe" })
end

m.toggle_it_focus = function()
	toggle_function_call({ "it", "fit" })
end

m.setup = function()
	-- No setup currently required, but I've read you should always have one.
end

return m
