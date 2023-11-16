;;; прыжки для всех моделей и модулей
(defun jump-q-element() "jump to element" (interactive) (bookmark-jump "q"))
(global-set-key (kbd "C-o q") 'jump-q-element)
(defun jump-w-element() "jump to element" (interactive) (bookmark-jump "w"))
(global-set-key  (kbd "C-o w") 'jump-w-element)
(defun jump-e-element() "jump to element" (interactive) (bookmark-jump "e"))
(global-set-key  (kbd "C-o e") 'jump-e-element)
(defun jump-r-element() "jump to element" (interactive) (bookmark-jump "r"))
(global-set-key (kbd "C-o r") 'jump-r-element)
(defun jump-t-element() "jump to element" (interactive) (bookmark-jump "t"))
(global-set-key (kbd "C-o t") 'jump-t-element)
(defun jump-y-element() "jump to element" (interactive) (bookmark-jump "y"))
(global-set-key  (kbd "C-o y") 'jump-y-element)
(defun jump-u-element() "jump to element" (interactive) (bookmark-jump "u"))
(global-set-key  (kbd "C-o u") 'jump-u-element)
(defun jump-i-element() "jump to element" (interactive) (bookmark-jump "i"))
(global-set-key  (kbd "C-o i") 'jump-i-element)
(defun jump-o-element() "jump to element" (interactive) (bookmark-jump "o"))
(global-set-key (kbd "C-o o") 'jump-o-element)
(defun jump-p-element() "jump to element" (interactive) (bookmark-jump "p"))
(global-set-key  (kbd "C-o p") 'jump-p-element)
(defun jump-kray-element() "jump to element" (interactive) (bookmark-jump "["))
(global-set-key (kbd "C-o [") 'jump-kray-element)

;;; прыжки для всех  форм
(defun jump-z-element() "jump to element" (interactive) (bookmark-jump "z"))
(global-set-key  (kbd "C-o z") 'jump-z-element)
(defun jump-x-element() "jump to element" (interactive) (bookmark-jump "x"))
(global-set-key  (kbd "C-o x") 'jump-x-element)
(defun jump-c-element() "jump to element" (interactive) (bookmark-jump "c"))
(global-set-key  (kbd "C-o c") 'jump-c-element)
(defun jump-v-element() "jump to element" (interactive) (bookmark-jump "v"))
(global-set-key (kbd "C-o v") 'jump-v-element)
(defun jump-b-element() "jump to element" (interactive) (bookmark-jump "b"))
(global-set-key  (kbd "C-o b") 'jump-b-element)
(defun jump-n-element() "jump to element" (interactive) (bookmark-jump "n"))
(global-set-key  (kbd "C-o n") 'jump-n-element)
(defun jump-m-element() "jump to element" (interactive) (bookmark-jump "m"))
(global-set-key  (kbd "C-o m") 'jump-m-element)
 
(defun jump-a-element() "jump to element" (interactive) (bookmark-jump "a"))
(global-set-key (kbd "C-o a") 'jump-a-element)

(defun jump-s-element() "jump to element" (interactive) (bookmark-jump "s"))
(global-set-key  (kbd "C-o s") 'jump-s-element)
(defun jump-d-element() "jump to element" (interactive) (bookmark-jump "d"))
(global-set-key  (kbd "C-o d") 'jump-d-element)
(defun jump-f-element() "jump to element" (interactive) (bookmark-jump "f"))
(global-set-key  (kbd "C-o f") 'jump-f-element)
(defun jump-g-element() "jump to element" (interactive) (bookmark-jump "g"))
(global-set-key  (kbd "C-o g") 'jump-g-element)
(defun jump-h-element() "jump to element" (interactive) (bookmark-jump "h"))
(global-set-key  (kbd "C-o h") 'jump-h-element)
(defun jump-j-element() "jump to element" (interactive) (bookmark-jump "j"))
(global-set-key  (kbd "C-o j") 'jump-j-element)
(defun jump-k-element() "jump to element" (interactive) (bookmark-jump "k"))
(global-set-key  (kbd "C-o k") 'jump-k-element)
(defun jump-l-element() "jump to element" (interactive) (bookmark-jump "l"))
(global-set-key  (kbd "C-o l") 'jump-l-element)
(defun jump-index-element() "jump to element" (interactive) (bookmark-jump ";"))
(global-set-key  (kbd "C-o ;") 'jump-index-element)
(defun jump-mega-element() "jump to element" (interactive) (bookmark-jump "$"))
(global-set-key  (kbd "C-o <") 'jump-mega-element)
;;почему то из всех цифр только 0 работает
(defun jump-epsilon-zero-element() "jump to element" (interactive) (bookmark-jump "0"))
(global-set-key  (kbd "C-o 0") 'jump-epsilon-zero-element)


(defun jump-one-element () "jump one element" (interactive) (bookmark-jump "1"))
(global-set-key (kbd "C-o 1") 'jump-one-element)

(defun jump-two-element () "jump two element" (interactive) (bookmark-jump "2"))
(global-set-key (kbd "C-o 2") 'jump-two-element)

(defun jump-three-element () "jump three element" (interactive) (bookmark-jump "3"))
(global-set-key (kbd "C-o 3") 'jump-three-element)

(defun jump-four-element () "jump four element" (interactive) (bookmark-jump "4"))
(global-set-key (kbd "C-o 4") 'jump-four-element)

(defun jump-five-element () "jump five element" (interactive) (bookmark-jump "5"))
(global-set-key (kbd "C-o 5") 'jump-five-element)

(defun jump-six-element () "jump six element" (interactive) (bookmark-jump "6"))
(global-set-key (kbd "C-o 6") 'jump-six-element)

(defun jump-seven-element () "jump seven element" (interactive) (bookmark-jump "7"))
(global-set-key (kbd "C-o 7") 'jump-seven-element)

(defun jump-eight-element () "jump eight element" (interactive) (bookmark-jump "8"))
(global-set-key (kbd "C-o 8") 'jump-eight-element)

(defun jump-eleven-element () "jump eleven element" (interactive) (bookmark-jump "9"))
(global-set-key (kbd "C-o 9") 'jump-eleven-element)

(defun jump-deviz-element () "jump deviz element" (interactive) (bookmark-jump "/"))
(global-set-key (kbd "C-o /") 'jump-deviz-element)

(defun jump-zpt-element () "jump zpt element" (interactive) (bookmark-jump ","))
(global-set-key (kbd "C-o ,") 'jump-deviz-element)

(defun jump-point-element () "jump point element" (interactive) (bookmark-jump "."))
(global-set-key (kbd "C-o .") 'jump-point-element)

(defun jump-lz-element () "jump lz element" (interactive) (bookmark-jump "]"))
(global-set-key (kbd "C-o ]") 'jump-lz-element)

(defun jump-lzg-element () "jump lzg element" (interactive) (bookmark-jump "\\"))
(global-set-key (kbd "C-o \\") 'jump-lzg-element)
