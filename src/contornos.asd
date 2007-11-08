
(asdf:defsystem :contornos
  :name "contornos"
  :version "0.1"
  :author "Marcos di Silva e Pedro Kroger"
  :serial t
  :depends-on (:lisp-unit)
  :components (
               (:file "packages")
               (:file "operacoes")
               (:file "plot")
               (:file "test-operacoes")
               ))
