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
  "Send the solution to Exercism.io! This command simply send the buffer-file as a solution to Exercism.io."
  (interactive)
  (message (shell-command-to-string (concat "exercism submit " (buffer-file-name)))))

(defun fetch-new-exercise ()
  "Fetch a new exercise from Exercism.io! This command fetch new exercise based on opened buffer-file type/`extension`."
  (interactive)
  (let ((language-name (pcase (file-name-extension (buffer-file-name))
                         ("clj" "clojure")
                         ("cljs" "clojurescript")
                         ("java" "java")
                         ("el" "just-for-test"))))
    (message (shell-command-to-string (concat "exercism fetch " language-name)))))
