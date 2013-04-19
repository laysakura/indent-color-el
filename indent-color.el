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
(defface my-face-b-01 '((t (:background "#eebbbb"))) nil)
(defface my-face-b-02 '((t (:background "#bbeebb"))) nil)
(defface my-face-b-03 '((t (:background "#bbbbee"))) nil)
(defface my-face-b-04 '((t (:background "#ebbbbe"))) nil)
(defface my-face-b-05 '((t (:background "#bbbeeb"))) nil)
(defface my-face-b-06 '((t (:background "#ffdead"))) nil)
(defface my-face-b-07 '((t (:background "#beafff"))) nil)
(defface my-face-b-08 '((t (:background "LightPink"))) nil)
(defface my-face-b-09 '((t (:background "CadetBlue1"))) nil)
(defface my-face-b-10 '((t (:background "LightGoldenrod"))) nil)
(defface my-face-b-11 '((t (:background "MediumOrchid1"))) nil)
(defface my-face-b-12 '((t (:background "orange1"))) nil)
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
   '(
     ("^                        " 0 my-face-b-12 append)
     ("^                      " 0 my-face-b-11 append)
     ("^                    " 0 my-face-b-10 append)
     ("^                  " 0 my-face-b-09 append)
     ("^                " 0 my-face-b-08 append)
     ("^              " 0 my-face-b-07 append)
     ("^            " 0 my-face-b-06 append)
     ("^          " 0 my-face-b-05 append)
     ("^        " 0 my-face-b-04 append)
     ("^      " 0 my-face-b-03 append)
     ("^    " 0 my-face-b-02 append)
     ("^  " 0 my-face-b-01 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)

;;; indent-color.el ends here
