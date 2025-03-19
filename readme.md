# jasmine-toggle.nvim

A simple plugin to toggle the state of Jasmine tests.

## Usage

### Focussing/Blurring a `describe`

When inside of a jasmine `describe()` block, use `require("jasmine-toggle").toggle_describe_focus()` to toggle between `describe()` and `fdescribe()`.

### Focussing/Blurring an `it`

When inside of a jasmine `it()` block, use `require("jasmine-toggle").toggle_it_skip()` to toggle between `it()` and `fit()`.

### Skipping/Un-skipping a `describe`

When inside of a jasmine `describe()` block, use `require("jasmine-toggle").toggle_describe_skip()` to toggle between `describe()` and `xdescribe()`.

### Focussing/Blurring an `it`

When inside of a jasmine `it()` block, use `require("jasmine-toggle").toggle_it_skip()` to toggle between `it()` and `xit()`.

## Mappings

Default mappings have **not** been included.

The following are the **recommended mappings**:

| Mapping      | Command                                           | Description                                   |
| ------------ | ------------------------------------------------- | --------------------------------------------- |
| `<leader>td` | `require("jasmine-toggle").toggle_describe_focus` | Toggle between `describe()` and `fdescribe()` |
| `<leader>ti` | `require("jasmine-toggle").toggle_it_focus`       | Toggle between `it()` and `fit()`             |
| `<leader>tD` | `require("jasmine-toggle").toggle_describe_skip`  | Toggle between `describe()` and `xdescribe()` |
| `<leader>tI` | `require("jasmine-toggle").toggle_it_skip`        | Toggle between `it()` and `xit()`             |
