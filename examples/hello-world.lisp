;;;; hello-world.lisp

(in-package #:sketch-examples)

;;;  _   _ _____ _     _     ___   __        _____  ____  _     ____
;;; | | | | ____| |   | |   / _ \  \ \      / / _ \|  _ \| |   |  _ \
;;; | |_| |  _| | |   | |  | | | |  \ \ /\ / / | | | |_) | |   | | | |
;;; |  _  | |___| |___| |__| |_| |   \ V  V /| |_| |  _ <| |___| |_| |
;;; |_| |_|_____|_____|_____\___/     \_/\_/  \___/|_| \_\_____|____/

(defsketch hello-world (:title "Hello, World!" :debug :scancode-f1) ()
  (background (gray 0.6))
  (with-pen (make-pen :fill (rgb 1 1 0))
    (triangle 100 20 20 180 180 180)))