

source conf/bajar-comun.sh

#echo "ECOMCORELAST"
#jiraexport "project+in+%28PROWEB-eCommerceCore%29+AND+%28%28updated+%3E+startOfWeek%28%29+%29+OR+%28updated+%3E+startOfMonth%28%29++AND+statusCategory++in+%28%22To+Do%22+%2C+%22In+Progress%22%29%29%29" "ECOMCORELAST" 


#jiraexport "project+in+%28ECOMCORE%29+AND+labels+in+%28NEC_BD%2C+NEC_BD_OK%2C+NEC_CMC%29+AND+fixVersion+in+%289.0.0%29" "NEC_90"

echo "VERSION"

jiraexport "project+in+%28ECOMCORE%29+AND+fixVersion+in+%2810.0.0%29" "LAST_VERS_10.0.0"


jiraexport "project+in+%28ECOMCORE%29+AND+fixVersion+in+%2811.0.0%29" "LAST_VERS_11.0.0"

#jiraexport "project+in+%28ECOMCORE%29+AND+fixVersion+in+%289.1.1%29" "LAST_VERS_9.1.1"

jiraexport "project+in+%28ECOMCORE%29+AND+fixVersion+in+%2811.0.0%29" "LAST_VERS_12.0.0"


jiraexport "project+in+%28ECOMCORE%29+AND+fixVersion+in+%28Backlog_release%29" "LAST_VERS_Backlog_release"
