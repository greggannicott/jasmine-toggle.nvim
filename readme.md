# jasmine-toggle.nvim

A simple plugin to toggle the state of Jasmine tests.

## Usage

### Focussing/Blurring a `describe`

When inside of a jasmine `describe()` block, use `require("jasmine-toggle").toggle_describe()` to toggle between `describe()` and `fdescribe()`.

### Focussing/Blurring an `it`

When inside of a jasmine `it()` block, use `require("jasmine-toggle").toggle_it()` to toggle between `it()` and `fit()`.

## Mappings

Default mappings have **not** been included.

The following are the **recommended mappings**:

| Mapping      | Command                                     | Description                                   |
| ------------ | ------------------------------------------- | --------------------------------------------- |
| `<leader>td` | `require("jasmine-toggle").toggle_describe` | Toggle between `describe()` and `fdescribe()` |
| `<leader>ti` | `require("jasmine-toggle").toggle_it`       | Toggle between `it()` and `fit()`             |
