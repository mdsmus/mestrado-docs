(cl-ppcre:register-groups-bind (nota acidente oitava dur)
    ("(c|d|e|f|g|a|b)+(is|es)?('|,)*([0-9]+)?" "cis'4")
  (list nota acidente oitava)
  )