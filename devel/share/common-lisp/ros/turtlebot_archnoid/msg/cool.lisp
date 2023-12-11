; Auto-generated. Do not edit!


(cl:in-package turtlebot_archnoid-msg)


;//! \htmlinclude cool.msg.html

(cl:defclass <cool> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform "")
   (speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0))
)

(cl:defclass cool (<cool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot_archnoid-msg:<cool> is deprecated: use turtlebot_archnoid-msg:cool instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <cool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_archnoid-msg:cmd-val is deprecated.  Use turtlebot_archnoid-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <cool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_archnoid-msg:speed-val is deprecated.  Use turtlebot_archnoid-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cool>) ostream)
  "Serializes a message object of type '<cool>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cool>) istream)
  "Deserializes a message object of type '<cool>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cool>)))
  "Returns string type for a message object of type '<cool>"
  "turtlebot_archnoid/cool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cool)))
  "Returns string type for a message object of type 'cool"
  "turtlebot_archnoid/cool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cool>)))
  "Returns md5sum for a message object of type '<cool>"
  "1ceee9847fb50c62d72b211b86b1a582")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cool)))
  "Returns md5sum for a message object of type 'cool"
  "1ceee9847fb50c62d72b211b86b1a582")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cool>)))
  "Returns full string definition for message of type '<cool>"
  (cl:format cl:nil "string cmd~%int64 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cool)))
  "Returns full string definition for message of type 'cool"
  (cl:format cl:nil "string cmd~%int64 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cool>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cool>))
  "Converts a ROS message object to a list"
  (cl:list 'cool
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':speed (speed msg))
))
