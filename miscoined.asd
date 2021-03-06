(defsystem "miscoined"
  :version "0.1.0"
  :author "Kelly Stewart"
  :license ""
  :depends-on ("clack"
               "lack"
               "caveman2"
               "envy"
               "cl-ppcre"
               "uiop"
               ;; HTML Template
               "djula")
  :components ((:module "src"
                :components
                ((:file "main" :depends-on ("config" "view"))
                 (:file "web" :depends-on ("view"))
                 (:file "view" :depends-on ("config"))
                 (:file "config"))))
  :description ""
  :in-order-to ((test-op (test-op "miscoined-test"))))
