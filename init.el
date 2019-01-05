(setq debug-on-error t)
(ido-mode 1)
(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))
(require 'simpleclip)
(simpleclip-mode 1)
(require 'framemove)
(framemove-default-keybindings)

(eval-after-load "dired-aux"
  '(add-to-list 'dired-compress-file-suffixes
		'("\\.zip\\'" ".zip" "unzip")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (adwaita))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "M-o") 'switch-to-previous-buffer)
(defun switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(set-terminal-coding-system 'utf-8)
