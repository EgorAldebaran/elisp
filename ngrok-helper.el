;;;;адаптер для работы с ngrok 
(defun ngrok-main ()
  "адаптер для работы с ngrok"
       ;;;;рестарт ngrok - либо старт если не запущен вообще
       (ngrok-restart)
       (ngrok))


;;;;прога для работы с ngrok буффером
(defun ngrok ()
  "если буффер был его уничтожает и показывает путь для ngrok в котором адрес"
       (cond ((get-buffer "*ngrok*")
	      (print (format "Старый буффер уничтожен. Новый создан"))
	      (kill-buffer "*ngrok*")
	      (ngrok))
	     (t
	      (start-process "ngrok-process" "*ngrok*" "ngrok" "http" "80")
	      (sleep-for 2)
	      (with-temp-buffer
		(insert-buffer-substring "*ngrok*")
		(beginning-of-buffer)
		(lake-fire)
		(search-forward "Web Interface" nil t 2)
		(set-mark-command nil)
		(move-end-of-line 1)
		(setq mark-deactivate t)
		(kill-region (region-beginning) (region-end))
		(buffer-string)
		(elisp-reborn kill-ring))))
       (print (format "%s - Только что выполнен ngrok process и буффер *ngrok*. Нажми c-y и увидешь адрес." (function-name))))

;;;;(ngrok)
;;;(elisp-reborn kill-ring)
;;;http://127.0.0.1:4040

(defun ngrok-restart ()
  "если ngrok запущен - убить его - а затем создать"
       (cond ((not (string-empty-p (shell-command-to-string "ps au | grep ngrok")))
	      (print (format "ngrok уже был запущен. Убить процесс."))
	      (start-process "ngrok-kill" nil "pkill" "ngrok")
	      (sleep-for 2)
	      (ngrok-restart))
	     ((string-empty-p (shell-command-to-string "ps au | grep ngrok"))
	      (print (format "ngrok процесс убитый. запустить новый процесс."))
	      (start-process "ngrok-process" "*ngrok*" "ngrok" "http" "80"))
	     (t (print (format "Возникли непредвиденные ошибки."))))
       (print (format "только что отработала функцию %s" (function-name))))

;;;(ngrok-restart)

;;;(lake-fire)
;;(elisp-reborn kill-ring)


;;;;;более чистая версия с рекурсией
(defun elisp-reborn (kill-ring)
  "elisp-reborn"
       (cond ((zerop (length kill-ring))
	      (print '(Кольцо смерти опустело!)))
	     (t (insert (format "%s" (replace-regexp-in-string " " "" (car kill-ring))))
		(elisp-reborn (cdr kill-ring))))
       (print (format "только что отработала функцию %s" (function-name))))

(defun lake-fire ()
  "lake fire"
       (setq kill-ring nil))

;;;(kill-region (region-beginning) (region-end))


(defun clean-string (string)
  "Убирает из строки все пробелы и лишние символы."
  (replace-regexp-in-string "[^[:alnum:]]" "" (replace-regexp-in-string " " "" string)))

;;;;(remove-spaces "      https:///duck")

(defun remove-spaces (string)
  "Убирает из строки все пробелы."
  (replace-regexp-in-string " " "" string))

;;(numberp (length kill-ring))
