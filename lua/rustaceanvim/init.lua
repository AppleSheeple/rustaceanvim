---@toc rustaceanvim.contents

---@mod intro Introduction
---@brief [[
---This plugin automatically configures the `rust-analyzer` builtin LSP client
---and integrates with other rust tools.
---@brief ]]
---
---@mod rustaceanvim
---
---@brief [[
---
---Commands:
---
--- ':RustAnalyzer start' - Start the LSP client.
--- ':RustAnalyzer stop' - Stop the LSP client.
--- ':RustAnalyzer restart' - Restart the LSP client.
--- ':RustAnalyzer reloadSettings' - Reload settings for the LSP client.
---
---The ':RustLsp[!]' command is available after the LSP client has initialized.
---It accepts the following subcommands:
---
--- 'runnables {args[]}?' - Run tests, executables, etc.
---                         ':RustLsp!' means run the last runnable (ignores any args).
---                         `args[]` allows you to override the executable's arguments.
--- 'debuggables {args[]}?' - Debug tests, executables, etc. (requires |nvim-dap|).
---                           ':RustLsp!' means run the last debuggable (ignores any args).
---                           `args[]` allows you to override the executable's arguments.
--- 'testables {args[]}?' - Run tests
---                         ':RustLsp!' means run the last testable (ignores any args).
---                         `args[]` allows you to override the executable's arguments.
--- 'expandMacro' - Expand macros recursively.
--- 'moveItem {up|down}' - Move items up or down.
--- 'hover {actions|range}' - Hover actions, or hover over visually selected range.
--- 'explainError' - Display a hover window with explanations form the Rust error index.
--- 'renderDiagnostic' - Display a hover window with the rendered diagnostic,
---                      as displayed during `cargo build`.
--- 'openCargo' - Open the Cargo.toml file for the current package.
--- 'parentModule' - Open the current module's parent module.
--- 'workspaceSymbol {onlyTypes?|allSymbols?} {query?}'
---                  Filtered workspace symbol search.
---                  When run with a bang (`:RustLsp! workspaceSymbol ...`),
---                  rust-analyzer will include dependencies in the search.
---                  You can also configure rust-analyzer so that |vim.lsp.buf.workspace_symbol|
---                  supports filtering (with a # suffix to the query) or searching dependencies.
--- 'joinLines' - Join adjacent lines.
--- 'ssr {query}' - Structural search and replace.
--- 'crateGraph {backend}' - Create and view a crate graph with graphviz.
--- 'syntaxTree' - View the syntax tree.
--- 'view {mir|hir}' - View MIR or HIR.
--- 'flyCheck' {run?|clear?|cancel?}
---            - Run `cargo check` or another compatible command (f.x. `clippy`)
---              in a background thread and provide LSP diagnostics based on
---              the output of the command.
---              Useful in large projects where running `cargo check` on each save
---              can be costly.
---              Defaults to `flyCheck run` if called without an argument.
--- 'logFile' - Open the rust-analyzer log file.
---
---The ':Rustc' command can be used to interact with rustc.
---It accepts the following subcommands:
---
--- 'unpretty {args[]}' - Opens a buffer with a textual representation of the MIR or others things,
---                       of the function closest to the cursor.
---                       Achieves an experience similar to Rust Playground.
---                       NOTE: This currently requires a tree-sitter parser for Rust,
---                       and a nightly compiler toolchain.
---@brief ]]

local M = {}
return M
