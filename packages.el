;;; packages.el --- exercism.io layer packages file for Spacemacs.
;;
;; Copyright (c) 2017 by Seçkin KÜKRER
;;
;; Author: Seçkin KÜKRER <seckin.kukrer@hotmail.com>
;; URL: https://github.com/leavenha/exercism-layer
;;
;; This file is not part of GNU Emacs.
;;
;;; License: MIT
;; [TODO ask, is seperation of mode and layer important ?]

(defconst exercism-layer-packages
  '(evil-magit (exercism-mode :location (recipe :fetcher github
                                                :repo "LeaveNhA/exercism-mode"))))

(defun exercism-layer/post-init-evil-magit ()
  (with-eval-after-load 'magit
    (require 'evil-magit)
    (evil-define-key 'motion magit-mode-map
      (kbd dotspacemacs-leader-key) spacemacs-default-map)))

(defun exercism-layer/init-exercism-mode ()
  (use-package exercism-mode
    :config
    (with-eval-after-load 'exercism-mode
      (require 'exercism-mode))))

(defun exercism-layer/post-init-exercism-mode ()
  (progn
    (spacemacs/declare-prefix "E" "Exercism")
    (spacemacs/declare-prefix "Ex" "Exercise")
    (spacemacs/set-leader-keys
      "Exf" 'exercism-mode/fetch-new-exercise
      "Exs" 'exercism-mode/send-solution-to-exercism)))
