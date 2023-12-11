;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_archnoid::cool)
  (if (not (find-package "TURTLEBOT_ARCHNOID"))
    (make-package "TURTLEBOT_ARCHNOID"))
  (shadow 'cool (find-package "TURTLEBOT_ARCHNOID")))
(unless (find-package "TURTLEBOT_ARCHNOID::COOL")
  (make-package "TURTLEBOT_ARCHNOID::COOL"))

(in-package "ROS")
;;//! \htmlinclude cool.msg.html


(defclass turtlebot_archnoid::cool
  :super ros::object
  :slots (_cmd _speed ))

(defmethod turtlebot_archnoid::cool
  (:init
   (&key
    ((:cmd __cmd) "")
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   (setq _speed (round __speed))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ;; int64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;; int64 _speed
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _speed (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _speed) (= (length (_speed . bv)) 2)) ;; bignum
              (write-long (ash (elt (_speed . bv) 0) 0) s)
              (write-long (ash (elt (_speed . bv) 1) -1) s))
             ((and (class _speed) (= (length (_speed . bv)) 1)) ;; big1
              (write-long (elt (_speed . bv) 0) s)
              (write-long (if (>= _speed 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _speed s)(write-long (if (>= _speed 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _speed
#+(or :alpha :irix6 :x86_64)
      (setf _speed (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _speed (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get turtlebot_archnoid::cool :md5sum-) "1ceee9847fb50c62d72b211b86b1a582")
(setf (get turtlebot_archnoid::cool :datatype-) "turtlebot_archnoid/cool")
(setf (get turtlebot_archnoid::cool :definition-)
      "string cmd
int64 speed
")



(provide :turtlebot_archnoid/cool "1ceee9847fb50c62d72b211b86b1a582")


