awk '
  BEGIN { FLAG = 0 }
  /^  *electrostatic moments *$/ { FLAG++ }
  /^  *charge *$/ { FLAG++ }
  { if ( FLAG == 2 && NF == 3) { print $3; exit } }
' $1
