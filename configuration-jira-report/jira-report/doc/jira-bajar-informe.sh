

mkdir temp

echo Bajando Testing
source  conf/bajar-comun.sh
##  JIRas abiertos o modificados desde el principio de mes.
jiraexport "project+in+%28ECOMCORE%29+AND+%28%28updated+%3E+startOfMonth%28%29+%29+OR+%28updated+%3E+startOfYear%28%29++AND+statusCategory++in+%28%22To+Do%22+%2C+%22In+Progress%22%29%29%29&tempMax=500" "ECOMCORE"
