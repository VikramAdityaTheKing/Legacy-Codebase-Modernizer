(defun compute-discount (amount status)
  (cond ((eq status 'vip) (* amount 0.80))
        ((> amount 1000) (* amount 0.90))
        (t amount)))
