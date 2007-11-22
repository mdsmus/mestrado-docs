;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-USER; Base: 10 -*-

(asdf:defsystem :goiaba
  :name "goiaba"
  :version "0.1"
  :author "Marcos di Silva e Pedro Kroger"
  :serial t
  :depends-on (:lisp-unit :cl-ppcre)
  :components (
               (:file "packages")
               (:file "operacoes")
               (:file "plot")
               (:file "adams")
               (:file "morris")
               (:file "test-operacoes")
               (:file "test-adams")
               (:file "test-morris")
               ))