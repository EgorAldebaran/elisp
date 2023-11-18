;;;;прога задает любые вопросы из источника памяти и ожидает правильные ответы
(setq QUESTION-SUCCESSFULLY 0)
(setq QUESTION-ERROR 0)

(defun remember-question () "вспоминает вопрос из источника вопросов"
	 (with-temp-buffer
	   (insert-file-contents PATH-DESTINATION)
	   (read (current-buffer))))
;;;(remember-question "memory-beta")

(defun question-game-get-question () "прога задает вопрос по заданной теме"
       (interactive)
       (setq QUESTION-RANDOM-BASE (assoc (car (nth (random (length (remember-question))) (remember-question))) (remember-question)))
       (setq QUESTION-RANDOM-RESPONSE (cdr QUESTION-RANDOM-BASE))
       (setq QUESTION-RANDOM-QUESTION (car QUESTION-RANDOM-BASE))
       (insert "\n" QUESTION-RANDOM-QUESTION "\n"))
(global-set-key (kbd "s-9") 'question-game-get-question)

(defun question-game-set-response () "прога считывает ответ игрока"
       (interactive)
       (lake-fire)
       (set-mark-command nil)
       (beginning-of-line)
       (kill-region (region-beginning) (region-end))
       (setq mark-deactivate t)
       (handle-response QUESTION-RANDOM-QUESTION (car kill-ring)))
(global-set-key (kbd "s-0") 'question-game-set-response)

(defun handle-response (question response) "обработчик строки ответа"
       (cond
	((and
	  (equal question QUESTION-RANDOM-QUESTION)
	  (equal response QUESTION-RANDOM-RESPONSE))
	 (setq QUESTION-SUCCESSFULLY (+ 1 QUESTION-SUCCESSFULLY))
	 (print (format "SUCCESSFULLY %d" QUESTION-SUCCESSFULLY)))
	(t (print (format "Баламошка! Учись лучше! Вот правильный ответ - \n"))
	   (setq QUESTION-ERROR (+ 1 QUESTION-ERROR))
	   (insert (format "%s" QUESTION-RANDOM-RESPONSE)))))


;;;задача - прикрутить трансиент
(transient-define-prefix question-game-transient ()
  "Prefix that is minimal and uses an anonymous command suffix."
  [("e" "english"
    (lambda ()
      (interactive)
      (setq PATH-DESTINATION "~/elisp/memory-beta")))
   ("p" "php"
    (lambda ()
      (interactive)
      (setq PATH-DESTINATION "~/elisp/memory-php")))
   ("s" "sql"
    (lambda ()
      (interactive)
      (setq PATH-DESTINATION "~/elisp/memory-sql")))])


;;; big question work this
;;(defun Xjump-to-element (name)
;;  (interactive (list last-input-event))
;;  (bookmark-jump (char-to-string name)))




Кого волнует что ты думаешь?
Who gives a fuck what you think?
Who gives a fuck what you think?

Найди значения всех цен на акции msft за прошедшие два месяца.(от сентября 2023 год)
select * from msft where date between '2023-06-01' and '2023-09-01';
select * from msft where date between '2023-06-01' and '2023-09-01';
