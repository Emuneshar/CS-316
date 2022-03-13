;;; Solution to Problem 1
(defun MIN-2 (A B) 
    (if (and (numberp A) 
             (numberp B)) (cond ((<= A B) A)
                                ((> A B) B)) 'ERROR)
)

;;; Solution to Problem 2
(defun SAFE-AVG (A B)
    (and (numberp A) (numberp B) (/ (+ A B) 2 ))
)

;;; Solution to Problem 3
(defun ODD-GT-MILLION (A)
    (and (integerp A) (= 1 (mod A 2)) (> A 1000000)T)
)

;;; Solution to Problem 4
(defun MULTIPLE-MEMBER (A B)
    (and (or (numberp A)
            (symbolp A)) (listp B) (member A (cdr (member A B))))
)

;;; Solution to Problem 5
(defun MONTH->INTEGER (A)
    (cond 
        ((eq A 'JANUARY)1)
        ((eq A 'FEBRUARY)2)
        ((eq A 'MARCH)3)
        ((eq A 'APRIL)4)
        ((eq A 'MAY)5)
        ((eq A 'JUNE)6)
        ((eq A 'JULY)7)
        ((eq A 'AUGUST)8)
        ((eq A 'SEPTEMBER)9)
        ((eq A 'OCTOBER)10)
        ((eq A 'NOVEMBER)11)
        ((eq A 'DECEMBER)12) 
        (t 'ERROR))
)

;;; Solution to Problem 6
(defun SCORE->GRADE (s)
    (if (numberp s) (cond ((>= s 90) 'A)
                                ((>= s 87) 'A-)
                                ((>= s 83) 'B+)
                                ((>= s 80) 'B)
                                ((>= s 77) 'B-)
                                ((>= s 73) 'C+)
                                ((>= s 70) 'C)
                                ((>= s 60) 'D)
                                ((<  s 60) 'F)))
)

;;; Solution to Problem 7
(defun GT (A B)
    (and (numberp A) (numberp B) (> A B))
)

;;; Solution to Problem 8
(defun SAME-PARITY (A B)
    (or (and (integerp A) (integerp B) (evenp A) (evenp B)) (and (integerp A) (integerp B)(oddp A)(oddp B)))

)

;;; Solution to Problem 9
(defun SAFE-DIV (A B)
    (and (numberp A) (numberp B) (not (zerop B)) (/ A B))
)