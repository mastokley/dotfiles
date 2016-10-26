(TeX-add-style-hook
 "Michael Stokley Resume - IXL"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("moderncv" "10pt" "a4paper" "sans")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("geometry" "scale=0.95")))
   (TeX-run-style-hooks
    "latex2e"
    "glyphtounicode"
    "moderncv"
    "moderncv10"
    "inputenc"
    "verbatim"
    "geometry"))
 :latex)

