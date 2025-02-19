;;; pyim-indicator.el --- pyim indicator for pyim.        -*- lexical-binding: t; -*-

;; * Header
;; Copyright (C) 2021 Free Software Foundation, Inc.

;; Author: Feng Shu <tumashu@163.com>
;; Maintainer: Feng Shu <tumashu@163.com>
;; URL: https://github.com/tumashu/pyim
;; Keywords: convenience, Chinese, pinyin, input-method

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:
;; * 代码                                                           :code:
(require 'cl-lib)
(require 'pyim-common)
(require 'posframe nil t)

(defgroup pyim-indicator nil
  "Indicator for pyim."
  :group 'pyim)

(defcustom pyim-indicator-list (list #'pyim-indicator-with-cursor-color #'pyim-indicator-with-modeline)
  "PYIM 当前使用的 indicators.
Indicator 用于显示输入法当前输入状态（英文还是中文）。"
  :type '(choice (const :tag "Off" nil)
                 (repeat :tag "Indicator functions" function)))

(defvar pyim-indicator-cursor-color (list "orange")
  "`pyim-indicator-default' 使用的 cursor 颜色。

这个变量的取值是一个list: (中文输入时的颜色 英文输入时的颜色), 如
果英文输入时的颜色为 nil, 则使用默认 cursor 颜色。")

(defvar pyim-indicator-modeline-string (list "PYIM/C " "PYIM/E ")
  "`pyim-indicator-default' 使用的 modeline 字符串。

这个变量的取值是一个list:

    (中文输入时显示的字符串 英文输入时显示的字符串)。")

(defvar pyim-indicator-original-cursor-color nil
  "记录 cursor 的原始颜色。")

(defvar pyim-indicator-timer nil
  "`pyim-indicator-daemon' 使用的 timer.")

(defvar pyim-indicator-timer-repeat 0.4)

(defvar pyim-indicator-last-input-method-title nil
  "记录上一次 `current-input-method-title' 的取值。")

(defun pyim-indicator-start-daemon (func)
  "Indicator daemon, 用于实时显示输入法当前输入状态。"
  (unless pyim-indicator-original-cursor-color
    (setq pyim-indicator-original-cursor-color
          (frame-parameter nil 'cursor-color)))
  (unless (timerp pyim-indicator-timer)
    (setq pyim-indicator-timer
          (run-with-timer
           nil pyim-indicator-timer-repeat
           #'pyim-indicator-daemon-function func))))

(defun pyim-indicator-stop-daemon ()
  "Stop indicator daemon."
  (interactive)
  (when (timerp pyim-indicator-timer)
    (cancel-timer pyim-indicator-timer)
    (setq pyim-indicator-timer nil))
  (pyim-indicator-revert-cursor-color))

(defun pyim-indicator-daemon-function (func)
  "`pyim-indicator-daemon' 内部使用的函数。"
  (ignore-errors
    (let ((chinese-input-p
           (and (functionp func)
                (funcall func))))
      (dolist (indicator pyim-indicator-list)
        (when (functionp indicator)
          (funcall indicator current-input-method chinese-input-p))))))

(defun pyim-indicator-revert-cursor-color ()
  "将 cursor 颜色重置到 pyim 启动之前的状态。"
  (when pyim-indicator-original-cursor-color
    (set-cursor-color pyim-indicator-original-cursor-color)))

(defun pyim-indicator-update-mode-line ()
  "更新 mode-line."
  (unless (eq pyim-indicator-last-input-method-title
              current-input-method-title)
    (force-mode-line-update)
    (setq pyim-indicator-last-input-method-title
          current-input-method-title)))

(defun pyim-indicator-with-cursor-color (input-method chinese-input-p)
  "Pyim 自带的 indicator, 通过光标颜色来显示输入状态。"
  (if (not (equal input-method "pyim"))
      ;; 大多数情况是因为用户切换 buffer, 新 buffer 中
      ;; pyim 没有启动，重置 cursor 颜色。
      (set-cursor-color pyim-indicator-original-cursor-color)
    (if chinese-input-p
        (set-cursor-color (nth 0 pyim-indicator-cursor-color))
      (set-cursor-color
       (or (nth 1 pyim-indicator-cursor-color)
           (pyim-indicator-select-color
            (list "black" "white")
            pyim-indicator-original-cursor-color))))))

(defun pyim-indicator-select-color (colors &optional prefer-color)
  "根据背景，选择一个比较显眼的颜色。

如果 PREFER-COLOR 和背景颜色差异比较大，就使用 PREFER-COLOR.
否则从 COLORS 中选择一个。"
  (let ((background (frame-parameter nil 'background-color)))
    (if (and prefer-color
             (> (color-distance prefer-color background)
                (/ (color-distance "black" "white") 2)))
        prefer-color
      (car (sort colors
                 (lambda (a b)
                   (> (color-distance a background)
                      (color-distance b background))))))))

(defun pyim-indicator-with-modeline (input-method chinese-input-p)
  "Pyim 自带的 indicator, 使用 mode-line 来显示输入状态。"
  (when (equal input-method "pyim")
    (if chinese-input-p
        (setq current-input-method-title (nth 0 pyim-indicator-modeline-string))
      (setq current-input-method-title (nth 1 pyim-indicator-modeline-string))))
  (pyim-indicator-update-mode-line))

(defun pyim-indicator-with-posframe (input-method chinese-input-p)
  "Pyim 自带的 indicator, 通过 posframe 来显示输入状态。"
  (when (posframe-workable-p)
    (let ((buffer " *pyim-indicator*")
          (posframe-mouse-banish nil))
      (if (not (equal input-method "pyim"))
          (posframe-delete buffer)
        (if chinese-input-p
            (posframe-show buffer
                           :string ".."
                           :font "Monospace-2"
                           :poshandler #'posframe-poshandler-point-top-left-corner
                           :background-color (pyim-indicator-select-color (list "red" "green" "blue" "orange")))
          (posframe-hide buffer))))))

;; * Footer
(provide 'pyim-indicator)

;;; pyim-indicator.el ends here
