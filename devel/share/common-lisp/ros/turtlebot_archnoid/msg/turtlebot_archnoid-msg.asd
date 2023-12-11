
(cl:in-package :asdf)

(defsystem "turtlebot_archnoid-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cool" :depends-on ("_package_cool"))
    (:file "_package_cool" :depends-on ("_package"))
  ))