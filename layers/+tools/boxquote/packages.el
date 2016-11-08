;;; packages.el --- boxquote layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Sebastian Funk <sebastian.funk@lshtm.ac.uk>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `boxquote-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `boxquote/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `boxquote/pre-init-PACKAGE' and/or
;;   `boxquote/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(setq boxquote-packages '(boxquote))

(defun boxquote/init-boxquote ()
  (use-package boxquote
    :defer t
    :init
    (progn
      (spacemacs/declare-prefix "xb" "boxquote")
      (spacemacs/set-leader-keys
        "xbr" 'boxquote-region
        "xbf" 'boxquote-insert-file
        ))))

;;; packages.el ends here
