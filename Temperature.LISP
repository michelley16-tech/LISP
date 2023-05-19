;(print "Hello There!!!!")

(defun Temperature ()
(format t "Please Enter Your Temperature in Fahrenheit: ")
  (LET (tempInput)
    (SETQ tempInput (read tempInput))
    (APPEND '(your temperature in celsisus is) (*(- tempInput 32)(/ 5 9)) )
  )
)

(write(Temperature))
