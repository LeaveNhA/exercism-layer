;;; funcs.el --- Exercism.io Layer functions File for Spacemacs
;;
;; Copyright (c) 2017 by Seçkin KÜKRER
;;
;; Author: Seçkin KÜKRER <seckin.kukrer@hotmail.com>
;; URL: https://github.com/leavenha/exercism-layer
;;
;; This file is not part of GNU Emacs.
;;
;;; License: MIT

(defun send-solution-to-exercism ()
  "Simple function."
  (interactive)
  (message (shell-command-to-string (concat "exercism submit " (buffer-file-name)))))
