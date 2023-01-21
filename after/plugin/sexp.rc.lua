local status, sexp = pcall(require, "vim-sexp")
if (not status) then return end

vim.g.sexp_filetypes = "clojure,scheme,lisp,timl,fennel,janet"

