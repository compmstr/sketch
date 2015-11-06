;;;; transforms.lisp

(in-package #:sketch)

;;;  _____ ____      _    _   _ ____  _____ ___  ____  __  __ ____
;;; |_   _|  _ \    / \  | \ | / ___||  ___/ _ \|  _ \|  \/  / ___|
;;;   | | | |_) |  / _ \ |  \| \___ \| |_ | | | | |_) | |\/| \___ \
;;;   | | |  _ <  / ___ \| |\  |___) |  _|| |_| |  _ <| |  | |___) |
;;;   |_| |_| \_\/_/   \_\_| \_|____/|_|   \___/|_| \_\_|  |_|____/

(defun translate (x y)
  (gl:translate x y 0.0))

(defun rotate (angle)
  (gl:rotate angle 0.0 0.0 1.0))

(defun scale (sx sy)
  (gl:scale sx sy 1.0))

(defmacro with-identity-matrix (&body body)
  `(progn
     (gl:push-matrix)
     (gl:load-identity)
     ,@body
     (gl:pop-matrix)))