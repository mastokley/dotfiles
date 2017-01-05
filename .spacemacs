;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; auto-completion
     better-defaults
     clojure
     colors
     django
     emacs-lisp
     ess
     finance
     games
     git
     ;; haskell
     java
     javascript
     latex
     markdown
     org
     scala
     python
     racket
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     sql
     syntax-checking
     themes-megapack
     ;; version-control
     (mu4e :variables
           mu4e-installation-path "/usr/share/emacs/site-lisp")
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'random
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         ;; dark
                         grandshell ; black, high contrast
                         pastels-on-dark ; dark
                         spacemacs-dark
                         ample ; dark, grey
                         birds-of-paradise-plus ; red
                         cyberpunk ; black, high contrast
                         deeper-blue ; black
                         manoj-dark ; dark
                         misterioso ; dark
                         monokai ; grey, low contrast
                         ;solarized-dark
                         tango-dark
                         tangotango
                         toxi
                         tronesque
                         tsdh-dark
                         wheatgrass
                         wombat
                         zenburn

                         ;; light
                         ;adwaita
                         ;leuven
                         ;light-blue
                         ;occidental
                         ;solarized-light
                         ;spacemacs-light
                         ;tango
                         ;tsdh-light
                         ;whiteboard
                         )
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
)

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  ;; java layer
  (setq eclim-eclipse-dirs "~/opt/eclipse"
        eclim-executable "~/opt/eclipse/eclim")

  ;; org
  (setq org-agenda-include-diary t)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (emacs-lisp . t)
     (latex . t)
     (ledger . t)
     (python . t)
     (R . t)
     (sh .t)
     ))

  ;; misc
  (global-centered-cursor-mode +1)
  (spaceline-toggle-minor-modes-off)
  (global-flycheck-mode 1)
  (visual-line-mode 1)

  ;; mu4e config
  (setq
   mu4e-get-mail-command "offlineimap"
   message-send-mail-function 'smtpmail-send-it
   message-kill-buffer-on-exit t
   mu4e-update-interval 600
   user-mail-address "michael@michaelstokley.com"
   user-full-name "Michael Stokley"
   mu4e-compose-signature-auto-include nil
   mu4e-view-prefer-html t
   ;mu4e-headers-date-format "%Y-%m-%d %H:%M:%S"

   ;; smtp config
   message-send-mail-function 'smtpmail-send-it
   mu4e-sent-folder "/INBOX.Sent"
   starttls-use-gnutls t
   smtpmail-stream-type 'starttls
   smtpmail-default-smtp-server "mail.messagingengine.com"
   smtpmail-smtp-server "mail.messagingengine.com"
   smtpmail-smtp-service 587
   )

  (defun my-render-html-message ()
    (let ((dom (libxml-parse-html-region (point-min) (point-max))))
      (erase-buffer)
      (shr-insert-document dom)
      (goto-char (point-min))))

  (setq mu4e-html2text-command 'my-render-html-message)
  (setq shr-color-visible-luminance-min 80)
  (setq mu4e-bookmarks
        '(
          ("flag:unread AND NOT flag:trashed AND NOT list:emacs-orgmode.gnu.org" "Unread messages" ?u)
          ("flag:flagged" "Flagged messages" ?f)
          ("date:today..now" "Today's messages" ?t)
          ("date:7d..now" "Last 7 days" ?w)
          ))

  ;; org blogging config
  (setq
   org-publish-project-alist
        '(("blog"    ; project name
           :base-directory "~/Documents/Blog/org-blog/"
           :base-extension "org"
           :html-extension "html"
           :publishing-directory "~/Documents/Blog/mastokley.github.io/"
           :recursive t
           :auto-preamble nil
           :publishing-function org-html-publish-to-html
           :html-preamble nil
           :html-postamble "Built with %c"
           :html-head "<link href=\"css/solarized-dark.css\" rel=\"stylesheet\" />"
           :with-toc t
           :section-numbers nil
           :auto-sitemap t
           :sitemap-filename "index.org"
           :sitemap-title "michaelstokley.com"
           :sitemap-sans-extension t
           )))

  ;; python mode config
  (with-eval-after-load 'python
    (define-key python-mode-map (kbd "<f5>")
      'python-shell-send-buffer-switch))

  ;; heartbeat cursor mode
  (require 'cl)
  (require 'color)

  (defvar heartbeat-fps 16)
  (defvar heartbeat-period 5)

  (defun heartbeat-range (from to cnt)
    (let ((step (/ (- to from) (float cnt))))
      (loop for i below cnt collect (+ from (* step i)))))

  (defun heartbeat-cursor-colors ()
    (let ((cnt (* heartbeat-period heartbeat-fps)))
      (mapcar (lambda (r)
                (color-rgb-to-hex r 0 0))
              (nconc (heartbeat-range .2 1 (/ cnt 2))
                     (heartbeat-range 1 .2 (/ cnt 2))))))

  (defvar heartbeat-cursor-timer nil)
  (defvar heartbeat-cursor-old-color)

  (define-minor-mode heartbeat-cursor-mode
    "Change cursor color with the heartbeat effect."
    nil "" nil
    :global t
    (when heartbeat-cursor-timer
      (cancel-timer heartbeat-cursor-timer)
      (setq heartbeat-cursor-timer nil)
      (set-face-background 'cursor heartbeat-cursor-old-color))
    (when heartbeat-cursor-mode
      (setq heartbeat-cursor-old-color (face-background 'cursor)
            heartbeat-cursor-timer
            (run-with-timer
             0 (/ 1 (float heartbeat-fps))
             (lexical-let ((colors (heartbeat-cursor-colors)) tail)
               (lambda ()
                 (setq tail (or (cdr tail) colors))
                 (set-face-background 'cursor (car tail))))))))
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(ansi-term-color-vector
   [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("9cb6358979981949d1ae9da907a5d38fb6cde1776e8956a1db150925f2dad6c1" default)))
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#3E3D31" t)
 '(fringe-mode 4 nil (fringe))
 '(heartbeat-cursor-mode t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(magit-diff-use-overlays nil)
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-agenda-files
   (quote
    ("~/SpiderOak Hive/Agenda.org" "~/SpiderOak Hive/Job Hunt.org" "~/401/daily notes/Week 01/2016.02.29.org" "~/401/daily notes/Week 03/2016.03.16.org" "~/401/daily notes/Week 02/2016.03.07.org" "~/401/daily notes/Week 02/2016.03.08.org" "~/401/daily notes/Week 02/2016.03.10.org" "~/401/daily notes/Week 02/2016.03.11.org" "~/401/daily notes/Week 01/2016.03.01.org" "~/401/daily notes/Week 01/2016.03.02.org" "~/401/daily notes/Week 01/2016.03.03.org" "~/401/daily notes/Week 01/2016.03.04.org" "~/401/daily notes/Week 02/2016.03.09.org" "~/401/daily notes/Week 03/2016.03.15.org" "~/401/daily notes/Week 03/2016.03.14.org" "~/SpiderOak Hive/notes.org")))
 '(paradox-github-token t)
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(send-mail-function (quote mailclient-send-it))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
