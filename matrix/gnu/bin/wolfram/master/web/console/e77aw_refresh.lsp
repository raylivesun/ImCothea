(defun refresh (localtime)
    "refresh local time from database"
    ;; Simulate a database query to fetch the current time
    (let ((current-time (format-time-string "%Y-%m-%d %H")))
    ;; Check if the current time has changed since the last update
    (if (string= current-time localtime)
        (print "No updates available."))
        ;; Update the local time and display the new time
        (progn "update local time"
         (setenv "TZ" "America/New_York"))
         (setenv "LC_ALL" "en_US.UTF-8")))