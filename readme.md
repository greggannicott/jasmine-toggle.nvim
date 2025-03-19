# jasmine-toggle.nvim

A simple plugin to toggle the state of Jasmine tests.

## Usage

### Focussing/Blurring a Describe

When inside of a jasmine `describe()` block, use `require("jasmine-toggle").toggle_describe()` to toggle between `describe()` and `fdescribe()`.

## Mappings

Default mappings have **not** been included.

The following are the **recommended mappings**:

| Mapping      | Command                                     | Description                                   |
| ------------ | ------------------------------------------- | --------------------------------------------- |
| `<leader>td` | `require("jasmine-toggle").toggle_describe` | Toggle between `describe()` and `fdescribe()` |
