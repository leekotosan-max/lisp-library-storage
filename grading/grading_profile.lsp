(defun c:grading_profile ()
  (setq layer "GradingProfile")
  (setq height 0)
  (princ "Select points for grading profile:")
  (setq selset (ssget))
  (if selset
    (progn
      (repeat (sslength selset)
        (setq ent (ssname selset 0))
        (setq height (+ height 1)) ; example increment
        (princ (strcat "\nPoint graded at height: " (rtos height 2 2)))
        (ssdel ent selset)
      )
    )
  )
)
(princ)
