local status, sexp = pcall(require, "vim-sexp")
if (not status) then return end

sexp.setup({
  sexp_filetypes = "clojure"
})
