(defun qsort (list);Thanks deliciousrobots, for a Haskell-like implementation of qs.
  (when list
    (destructuring-bind (p . xs) list
      (let ((lesser (filter xs (lambda (x) (< x p))))
            (greater (filter xs (lambda (x) (>= x p)))))
        (append (qsort lesser) (list p) (qsort greater))))))
