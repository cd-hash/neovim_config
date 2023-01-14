local status, conjure = pcall(require, "conjure")
if (not status) then return end

vim.g.conjure['client']['clojure']['nrepl']['eval']['auto_require'] = false
vim.g.conjure['client']['clojure']['nrepl']['connection']['auto_repl']['enabled'] = false
