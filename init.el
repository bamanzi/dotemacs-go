(setq dotemacs-go-dir (if load-file-name
                          (file-name-directory load-file-name)
                        default-directory))
(progn
  (add-to-list 'load-path (concat dotemacs-go-dir "elisp"))
  (add-to-list 'exec-path (concat dotemacs-go-dir "bin"))
  )

;; ** Major mode
(autoload 'go-mode "go-mode"
  "Major mode for editing Go source text." t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(eval-after-load "go-mode"
  `(progn
     (add-hook 'go-mode-hook 'dotemacs-go-mode-init)))

(defun dotemacs-go-mode-init ()
  (define-key go-mode-map (kbd "<f4> j") 'godef-jump-other-window)
  (define-key go-mode-map (kbd "<f4> J") 'godef-jump)

  ;; other methods for code browsing
  (require 'go-guru)
  (define-key go-mode-map (kbd "<f4> d") 'go-guru-definition)
  ;; NOTE: 'go-guru.el' would add submenu 'Guru' to main menu bar

  ;; code folding
  (if (fboundp 'hideshowvis-enable)
      (hideshowvis-enable))
  )

;; ** Code jump
;; *** godef
;; NOTE: `go get github.com/rogpeppe/godef`
(autoload 'godef-jump "go-mode"
  "Jump to the definition of the expression at POINT." t)
(autoload 'godef-jump-other-window "go-mode"
  "Undocumented." t)

;; *** guru
;; NOTE: `go install golang.org/x/tools/cmd/guru`
;; usage: http://golang.org/s/using-guru
;;        Go Guru (golang 代码导航工具)的使用 https://www.jainshu.com/p/994e85e21135


;; ** Delve debugger
;; https://github.com/benma/go-dlv.el
(autoload 'dlv "go-dlv"
  "Run dlv on program FILE in buffer ‘*gud-FILE*’." t)



