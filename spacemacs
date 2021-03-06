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
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     html
     javascript
     yaml
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     git
     markdown
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     spell-checking
     syntax-checking
     ;; version-control
     (python :variables
             python-test-runner 'pytest)
     journal
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(org-plus-contrib
                                      conda)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t
;; Defines the behaviour of Spacemacs when installing packages.
;; Possible values are `used-only', `used-but-keep-unused' and `all'.
;; `used-only' installs only explicitly used packages and uninstall any
;; unused packages as well as their unused dependencies.
;; `used-but-keep-unused' installs only the used packages but won't uninstall
;; them if they become unused. `all' installs *all* packages supported by
;; Spacemacs and never uninstall them. (default is `used-only')
dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update t
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         monokai
                         zenburn
                         solarized-dark
                         solarized-light
                         spacemacs-dark
                         spacemacs-light
                         leuven
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
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
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
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
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; Conda
  ;; (defun setenviron (envname) (interactive "sEnivronment name: ")
  ;;        (let(
  ;;             (envpath (concat "/home/drew/anaconda3/envs/" envname))
  ;;             )
  ;;          (setenv "PATH" (concat (concat envpath "/bin:") (getenv "PATH")))
  ;;          (setq exec-path (append exec-path '(concat envpath "/bin:")))
  ;;          (pythonic-activate envpath)
  ;;          )
  ;;        )
  ;; (spacemacs/set-leader-keys "ae" 'setenviron)

  (with-eval-after-load 'org

    ;; (require 'org-capture)
    (require 'org-protocol)

    (global-set-key "\C-cl" 'org-store-link)
    (global-set-key "\C-ca" 'org-agenda)
    (global-set-key "\C-cb" 'org-iswitchb)

    ;; (defadvice org-capture
    ;;     (after make-full-window-frame activate)
    ;;   "Advise capture to be the only window when used as a popup"
    ;;   (if (equal "emacs-capture" (frame-parameter nil 'name))
    ;;       (delete-other-windows)))

    ;; (defadvice org-capture-finalize
    ;;     (after delete-capture-frame activate)
    ;;   "Advise capture-finalize to close the frame"
    ;;   (if (equal "emacs-capture" (frame-parameter nil 'name))
    ;;       (delete-frame)))

    ;;file to save todo items
    ;;(setq org-agenda-files (quote ("/home/drew/to-do")))

    ;;set priority range from A to C with default A
    (setq org-highest-priority ?A)
    (setq org-lowest-priority ?C)
    (setq org-default-priority ?A)

    ;;set colours for priorities
    (setq org-priority-faces '((?A . (:foreground "#F0DFAF" :weight bold))
                               (?B . (:foreground "LightSteelBlue"))
                               (?C . (:foreground "OliveDrab"))))

    ;; ;;open agenda in current window
    ;; (setq org-agenda-window-setup (quote current-window))

    ;; (global-set-key (kbd "C-c c") 'org-capture)

    ;; (setq org-capture-templates
    ;;       (quote (("t" "Tasks TODO" entry (file "/home/drew/to-do/refile.org")
    ;;                "* TODO %?\n%U\n"))
    ;; ;        ("x" "Review TODO" entry (file+headline "~/SyncBox/ToDo.org" "Tasks") "* TODO [#B] Review %?%c\n SCHEDULED: %t\n%U\n%i\n\n " :immediate-finish)
    ;; ;        ("i" "Work TODO" entry (file+headline "~/SyncBox/ToDo.org" "Work") "* TODO [#B]%? %c :work:\n SCHEDULED: %t\n%U\n%i\n\n " :immediate-finish )
    ;; ;        ("w" "Work TODO" entry (file+headline "~/SyncBox/ToDo.org" "Work") "* TODO [#B]%? :work:\n SCHEDULED: %t\n%U\n%i\n\n " :immediate-finish )
    ;;        )
    ;; )

    (setq org-refile-targets '((nil :maxlevel . 9)
                               (org-agenda-files :maxlevel . 9)))
    (setq org-outline-path-complete-in-steps nil)         ; Refile in a single go
    (setq org-refile-use-outline-path t)                  ; Show full paths for refiling
    ;;open agenda in current window
    (setq org-agenda-window-setup (quote current-window))
    ;;warn me of any deadlines in next 7 days
    (setq org-deadline-warning-days 7)
    ;;show me tasks scheduled or due in next fortnight
    ;; (setq org-agenda-span (quote fortnight))
    ;;don't show tasks as scheduled if they are already shown as a deadline
    (setq org-agenda-skip-scheduled-if-deadline-is-shown t)
    ;;don't give awarning colour to tasks with impending deadlines
    ;;if they are scheduled to be done
    (setq org-agenda-skip-deadline-prewarning-if-scheduled (quote pre-scheduled))
    ;;don't show tasks that are scheduled or have deadlines in the
    ;;normal todo list
    ;;(setq org-agenda-todo-ignore-deadlines (quote all))
    ;;(setq org-agenda-todo-ignore-scheduled (quote all))
    (setq org-agenda-skip-scheduled-if-done t)
    ;;sort tasks in order of when they are due and then by priority
    (setq org-agenda-sorting-strategy
          (quote
           ((agenda deadline-up priority-down)
            (todo priority-down) ;category-keep)
            (tags todo-state-down priority-down) ;category-keep)
            (search category-keep)))
          )
    (setq org-fontify-done-headline t)
    (custom-set-faces
     '(org-done ((t (
                                 :weight normal
                                 :strike-through t))))
     '(org-headline-done
       ((((class color) (min-colors 16))
         (:strike-through t)))))
    (add-to-list 'load-path "~/emacs/org")
    (require 'org)
    (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
    (define-key global-map "\C-cl" 'org-store-link)
    (define-key global-map "\C-ca" 'org-agenda)
    (setq org-log-done t)
    (setq org-log-into-drawer t)
    (setq org-agenda-files
          (list "~/to-do/all.org" "~/to-do/work" "~/to-do/personal"))

    ; I prefer return to activate a link
    (setq org-return-follows-link t)

    (setq org-agenda-custom-commands
          '(("n" todo "NEXT" nil)
            ("d" "Agenda + Next Actions" ((agenda) (todo "NEXT")))
            ("D" "Agenda + tasks to schedule" ((agenda) (todo "TOSCHEDULE")))
            ("1" "Agenda + today's tasks" ((agenda) (todo "TODAY")))
            ("2" "Agenda + this week's tasks" ((agenda) (todo "THISWEEK")))
            ("3" "Agenda + this month's tasks" ((agenda) (todo "THISMONTH")))
            ("w" "All work" ((agenda) (tags-todo "WORK")))
            ("p" "All personal" ((agenda) (tags-todo "PERSONAL"))))
    )

    (setq org-agenda-hide-tags-regexp "\\|sometag")

    (add-to-list 'org-modules 'org-habit)
    (setq org-agenda-repeating-timestamp-show-all nil)
    (setq org-habit-graph-column 80)

    (setq org-export-backends (quote (md odt latex confluence taskjuggler)))
    (setq org-support-shift-select t)

    (setq org-journal-dir "~/to-do/journal")

    (defun gtd ()
      (interactive)
      (find-file "~/to-do/all.org")
      )
    )


;; Conda
;;;;;;;;

;; Thanks to:
;; https://github.com/necaris/conda.el
(custom-set-variables
 '(conda-anaconda-home "/home/drew/anaconda3/"))

( when (require 'conda nil :noerror)

;; ;; if you want interactive shell support, include:
;; ;; (conda-env-initialize-interactive-shells)

;; ;; if you want eshell support, include:
;; ;; (conda-env-initialize-eshell)



;; spacemacs doesn't pick up the env unless we run pyvenv-activate
;; So use the conda.el machinery to also run pyvenv-activate
  (defun cadair-conda-activate (&optional name)
    (interactive)
    (let ((env-name (or name (conda--get-env-name))))
      (if (not (conda-env-is-valid env-name))
          (error "Invalid conda environment specified: %s" env-name)
        (conda-env-activate env-name)
        (pyvenv-activate (conda-env-name-to-dir env-name))
        )
      )
    )

  (defun cadair-conda-deactivate ()
    (interactive)
    (conda-env-deactivate)
    (pyvenv-deactivate)
    )

  (spacemacs/set-leader-keys "ae" 'cadair-conda-activate)
  (spacemacs/set-leader-keys "ad" 'cadair-conda-deactivate)


)
(setq python-shell-interpreter "ipython" python-shell-interpreter-args "--simple-prompt --pprint")
(setq python-shell-completion-native-disabled-interpreters '("ipython"))
  )
(setq org-agenda-clockreport-parameter-plist
      '(:fileskip0 t :link t :maxlevel 4))

(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))

(setq org-startup-indented t)
;; (add-to-list 'load-path "~/habitrpg.el")
;; (require 'habitrpg)
;; (setq habitrpg-api-user "395563c8-2c74-4c58-8d0a-7b21066aa288")
;; (setq habitrpg-api-token "1d06e9f0-68af-4d4b-a070-d56c4f21d6e8")
;; (add-hook 'org-after-tod-state-change-hook 'habitrpg-add 'append)
;; (global-set-key (kbd "C-c C-x h") 'habitrpg-add)
;; (global-set-key (kbd "<f9> a") 'habitrpg-status)

;; (load "~/.emacs.d/floobits/floobits.el")

(setq evil-move-cursor-back nil)
;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))
;; (require 'use-package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(conda-anaconda-home "/home/drew/anaconda3/")
 '(package-selected-packages
   (quote
    (web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode powerline spinner org-plus-contrib org-mime hydra parent-mode projectile request pkg-info epl flx let-alist smartparens iedit anzu evil goto-chg undo-tree highlight bind-map bind-key packed f dash s helm avy helm-core popup async org-journal web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc coffee-mode org-category-capture alert log4e gntp markdown-mode dash-functional gitignore-mode flyspell-correct pos-tip flycheck magit magit-popup git-commit ghub with-editor pythonic use-package-ensure-system-package quelpa-use-package use-package-el-get use-package-chords yapfify yaml-mode ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline smeargle restart-emacs rainbow-delimiters pyvenv pytest pyenv-mode py-isort popwin pip-requirements persp-mode pcre2el paradox orgit org-projectile org-present org-pomodoro org-download org-bullets open-junk-file neotree move-text monokai-theme mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum live-py-mode linum-relative link-hint indent-guide hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-ag google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md flyspell-correct-helm flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word cython-mode conda column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-dictionary auto-compile anaconda-mode aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C"))))
 '(org-done ((t (:weight normal :strike-through t))))
 '(org-headline-done ((((class color) (min-colors 16)) (:strike-through t)))))
