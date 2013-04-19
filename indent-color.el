;;; indent-color.el --- Sets background color for each indented line

;; Copyright (C) 2013  Sho Nakatani

;; Author: Sho Nakatani <lay.sakura@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Inspired by this article (Japanese):
;; http://www.moongift.jp/2013/04/20130418/

;;; Code:

(defvar indent-color--one-indent
  "  "
  "String used for one indent.")

(defface my-face-b-01 '((t (:foreground "#eebbbb" :underline t))) nil)
(defface my-face-b-02 '((t (:foreground "#bbeebb" :underline t))) nil)
(defface my-face-b-03 '((t (:foreground "#bbbbee" :underline t))) nil)
(defface my-face-b-04 '((t (:foreground "#ebbbbe" :underline t))) nil)
(defface my-face-b-05 '((t (:foreground "#bbbeeb" :underline t))) nil)
(defface my-face-b-06 '((t (:foreground "#ffdead" :underline t))) nil)
(defface my-face-b-07 '((t (:foreground "#beafff" :underline t))) nil)
(defface my-face-b-08 '((t (:foreground "LightPink" :underline t))) nil)
(defface my-face-b-09 '((t (:foreground "CadetBlue1" :underline t))) nil)
(defface my-face-b-10 '((t (:foreground "LightGoldenrod" :underline t))) nil)
(defface my-face-b-11 '((t (:foreground "MediumOrchid1" :underline t))) nil)
(defface my-face-b-12 '((t (:foreground "orange1" :underline t))) nil)
(defvar my-face-b-01 'my-face-b-01)
(defvar my-face-b-02 'my-face-b-02)
(defvar my-face-b-03 'my-face-b-03)
(defvar my-face-b-04 'my-face-b-04)
(defvar my-face-b-05 'my-face-b-05)
(defvar my-face-b-06 'my-face-b-06)
(defvar my-face-b-07 'my-face-b-07)
(defvar my-face-b-08 'my-face-b-08)
(defvar my-face-b-09 'my-face-b-09)
(defvar my-face-b-10 'my-face-b-10)
(defvar my-face-b-11 'my-face-b-11)
(defvar my-face-b-12 'my-face-b-12)

(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   `(
     (,(apply 'concat
              "^"
              (make-list 12 indent-color--one-indent))
      0 my-face-b-12 append)
     (,(apply 'concat
              "^"
              (make-list 11 indent-color--one-indent))
      0 my-face-b-11 append)
     (,(apply 'concat
              "^"
              (make-list 10 indent-color--one-indent))
      0 my-face-b-10 append)
     (,(apply 'concat
              "^"
              (make-list 9 indent-color--one-indent))
      0 my-face-b-09 append)
     (,(apply 'concat
              "^"
              (make-list 8 indent-color--one-indent))
      0 my-face-b-08 append)
     (,(apply 'concat
              "^"
              (make-list 7 indent-color--one-indent))
      0 my-face-b-07 append)
     (,(apply 'concat
              "^"
              (make-list 6 indent-color--one-indent))
      0 my-face-b-06 append)
     (,(apply 'concat
              "^"
              (make-list 5 indent-color--one-indent))
      0 my-face-b-05 append)
     (,(apply 'concat
              "^"
              (make-list 4 indent-color--one-indent))
      0 my-face-b-04 append)
     (,(apply 'concat
              "^"
              (make-list 3 indent-color--one-indent))
      0 my-face-b-03 append)
     (,(apply 'concat
              "^"
              (make-list 2 indent-color--one-indent))
      0 my-face-b-02 append)
     (,(apply 'concat
              "^"
              (make-list 1 indent-color--one-indent))
      0 my-face-b-01 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)

;;; indent-color.el ends here
