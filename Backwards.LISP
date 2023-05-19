(print "Hello There!!!  Please enter a string to flip: ")
(setq stringtoflip (read-line))
          

(defun flip-string (string1)
  (labels 
    ((stringiter (stringyflip strlst)
       (let ((stringyflip2 (string-trim '(#\space) stringyflip)))
         (if stringyflip2
             (let ((end (position #\space stringyflip2)))
               (if (and end (< (1+ end) (length stringyflip2)))
                   (stringiter (subseq stringyflip2 (1+ end))
                         (cons (subseq stringyflip2 0 end) strlst))
                   (cons stringyflip2 strlst)))
               strlst))))
  (stringiter string1 NIL)))
 
(defparameter *stringtoflip* stringtoflip)
 
(with-input-from-string (stringyflip *stringtoflip*)
  (loop for stringly = (read-line stringyflip NIL)
        while stringly
        do (format t "~{~a~#[~:; ~]~}~%" (flip-string stringly))))