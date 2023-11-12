;;;;прога задает любые вопросы из источника памяти и ожидает правильные ответы
(setq QUESTION-SUCCESSFULLY 0)
(setq QUESTION-ERROR 0)

(defun question-name-set-memory ()
  (let ((choice-memory (read-string "memory set\n (p) - for memory-php,\n (e) - for memory-english\n")))
    (cond ((equal choice-memory "p")
	   (setq PATH-DESTINATION "memory-php"))
	  ((equal choice-memory "e")
	   (setq PATH-DESTINATION "memory-beta"))
	  (t print (format "error choice correct memory")))))
(question-name-set-memory)

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

;;;one
;;;two
;;;three
