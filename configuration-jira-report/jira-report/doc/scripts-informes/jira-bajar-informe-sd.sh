

mkdir temp

echo Bajando Testing

function jiraexport() {
    echo " JIRA EXPORT $2 "
    echo " Query : $1 "
    exportfile="jira-exports/${2}.xml"
    query="$1"
    echo " Report File : ${exportfile} "

    cookie="Cookie: seraph.rememberme.cookie=188822%3A6209d32db9e760d2ee2994c45296a0b807ef75b0; jira.editor.user.mode=wysiwyg; JSESSIONID=7AF34A0D337A7F3B7FA47F2ACB64CF3B; atlassian.xsrf.token=ANOG-CKO0-QEKX-36F7_edac728b2159498bbb75c9fa7b6bd5b62d5c3baa_lin; mywork.tab.tasks=false"
    
    set url="https\\:axinic.central.inditex.grp/jira/sr/jira.issueviews:searchrequest-xml/temp/SearchRequest.xml\?jqlQuery="
    echo "Downloading ${url}${query}"
    curl  "https://axinic.central.inditex.grp/jira/sr/jira.issueviews:searchrequest-xml/temp/SearchRequest.xml?jqlQuery=${query}" --insecure -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" -H "Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3" --compressed -H "Connection: keep-alive" -H "Referer: https://axinic.central.inditex.grp/jira/browse/ECOMOYSH-10162?jql=labels"%"20in"%"20(Testing)"%"20AND"%"20created"%"20"%"3E"%"20startOfWeek()"%"20AND"%"20status"%"20not"%"20in"%"20(Resolved"%"2C"%"20Closed)"%"20ORDER"%"20BY"%"20created"%"20DESC" -H "$cookie" -H "Upgrade-Insecure-Requests: 1" > ${exportfile}
   echo " > ok " 
}


#curl --insecure "https://axinic.central.inditex.grp/jira/sr/jira.issueviews:searchrequest-xml/temp/SearchRequest.xml?jqlQuery=labels+in+"%"28Testing"%"29+AND+created+"%"3E+startOfWeek"%"28"%"29+AND+status+not+in+"%"28Resolved"%"2C+Closed"%"29+ORDER+BY+created+DESC&tempMax=1000" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" -H "Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3" --compressed -H "Connection: keep-alive" -H "Referer: https://axinic.central.inditex.grp/jira/browse/ECOMOYSH-10162?jql=labels"%"20in"%"20(Testing)"%"20AND"%"20created"%"20"%"3E"%"20startOfWeek()"%"20AND"%"20status"%"20not"%"20in"%"20(Resolved"%"2C"%"20Closed)"%"20ORDER"%"20BY"%"20created"%"20DESC" -H "Cookie: seraph.rememberme.cookie=183434"%"3A1cc765984e25b7ed7877d8d5abe945dc19c075e9; atlassian.xsrf.token=ANOG-CKO0-QEKX-36F7_446081852f92b64cb9e1ad3448a3800880884461_lin; JSESSIONID=CF3B91E35F50AFE493F72B81B0D4EB9E; jira.editor.user.mode=wysiwyg; _gcl_au=1.1.533104446.1603370726; _ga=GA1.2.659369198.1603370731; _scid=07ba989b-5a7e-4252-ad02-03e2d3dc6760; _hjid=4ba0ae6e-3e62-44bc-a014-89f6fa1d37dd; _fbp=fb.1.1603370737189.1608825470; cto_bundle=bYWkUV9lOUI3cktzaUFUaElkbzEzMUNzTktBemtBRGNyY1R0dGZQeWF0dUVxVUxrb01aU09SRHFnQ0NsUXNGMmZyY1E4QVZqRHNzSiUyQkl6M3lwUXNDTnc1VUMyZEdGcEtYUlVNamd5WGk0S0w5ZDc3QnVuSk1DRGJDZDdkRFVEQjhjQ3Bh; optimizelyEndUserId=oeu1603370817637r0.3923819652887971; _hjTLDTest=1; mywork.tab.tasks=false" -H "Upgrade-Insecure-Requests: 1" > temp/testimg.xml

#jiraexport "labels+in+"%"28Testing"%"29+AND+created+"%"3E+startOfWeek"%"28"%"29+AND+status+not+in+"%"28Resolved"%"2C+Closed"%"29+ORDER+BY+created+DESC&tempMax=1000" "testing" 


jiraexport "project+in+%28PROWEB-eCommerceCore%29+AND+%28%28updated+%3E+startOfMonth%28%29+%29+OR+%28updated+%3E+startOfYear%28%29++AND+statusCategory++in+%28%22To+Do%22+%2C+%22In+Progress%22%29%29%29&tempMax=1000" "ECOMCORE"


#jiraexport "project+in+%28ECOMCORE%29+AND+labels+in+%28NEC_BD%2C+NEC_BD_OK%2C+NEC_CMC%29+AND+fixVersion+in+%289.0.0%29" "NEC_90"



#echo "8_2"


#curl --insecure "https://axinic.central.inditex.grp/jira/sr/jira.issueviews:searchrequest-xml/temp/SearchRequest.xml?jqlQuery=fixVersion+in+"%"28"%"228.2.0"%"22"%"29+and+labels+not+in+"%"28REV_OK"%"29++AND+project+in+"%"28ECOMCORE"%"2CECOMSTRD"%"29+and+status+in+"%"28Resolved"%"2C+Closed"%"29&tempMax=1000" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" -H "Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3" --compressed -H "Connection: keep-alive" -H "Referer: https://axinic.central.inditex.grp/jira/browse/ECOMCORE-37792?jql=fixVersion"%"20in"%"20("%"228.2.0"%"22)"%"20and"%"20labels"%"20not"%"20in"%"20(REV_OK)"%"20"%"20AND"%"20project"%"20in"%"20(ECOMCORE"%"2CECOMSTRD)"%"20and"%"20status"%"20in"%"20(Resolved"%"2C"%"20Closed)" -H "Cookie: seraph.rememberme.cookie=183434"%"3A1cc765984e25b7ed7877d8d5abe945dc19c075e9; atlassian.xsrf.token=ANOG-CKO0-QEKX-36F7_446081852f92b64cb9e1ad3448a3800880884461_lin; JSESSIONID=CF3B91E35F50AFE493F72B81B0D4EB9E; jira.editor.user.mode=wysiwyg; _gcl_au=1.1.533104446.1603370726; _ga=GA1.2.659369198.1603370731; _scid=07ba989b-5a7e-4252-ad02-03e2d3dc6760; _hjid=4ba0ae6e-3e62-44bc-a014-89f6fa1d37dd; _fbp=fb.1.1603370737189.1608825470; cto_bundle=bYWkUV9lOUI3cktzaUFUaElkbzEzMUNzTktBemtBRGNyY1R0dGZQeWF0dUVxVUxrb01aU09SRHFnQ0NsUXNGMmZyY1E4QVZqRHNzSiUyQkl6M3lwUXNDTnc1VUMyZEdGcEtYUlVNamd5WGk0S0w5ZDc3QnVuSk1DRGJDZDdkRFVEQjhjQ3Bh; optimizelyEndUserId=oeu1603370817637r0.3923819652887971; _hjTLDTest=1; mywork.tab.tasks=false" -H "Upgrade-Insecure-Requests: 1" -H "Pragma: no-cache" -H "Cache-Control: no-cache" > temp/8_2_cerradas.xml

#echo "NECESIDADES "

#curl "https://axinic.central.inditex.grp/jira/sr/jira.issueviews:searchrequest-xml/temp/SearchRequest.xml?jqlQuery=project+in+%28ECOMCORE%29+AND+labels+in+%28NEC_BD%2C+NEC_BD_OK%2C+NEC_CMC%29+AND+fixVersion+in+%288.1.0%29" --insecure -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" -H "Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3" --compressed -H "Connection: keep-alive" -H "Cookie: seraph.rememberme.cookie=183434"%"3A1cc765984e25b7ed7877d8d5abe945dc19c075e9; atlassian.xsrf.token=ANOG-CKO0-QEKX-36F7_446081852f92b64cb9e1ad3448a3800880884461_lin; JSESSIONID=CF3B91E35F50AFE493F72B81B0D4EB9E; jira.editor.user.mode=wysiwyg; _gcl_au=1.1.533104446.1603370726; _ga=GA1.2.659369198.1603370731; _scid=07ba989b-5a7e-4252-ad02-03e2d3dc6760; _hjid=4ba0ae6e-3e62-44bc-a014-89f6fa1d37dd; _fbp=fb.1.1603370737189.1608825470; cto_bundle=bYWkUV9lOUI3cktzaUFUaElkbzEzMUNzTktBemtBRGNyY1R0dGZQeWF0dUVxVUxrb01aU09SRHFnQ0NsUXNGMmZyY1E4QVZqRHNzSiUyQkl6M3lwUXNDTnc1VUMyZEdGcEtYUlVNamd5WGk0S0w5ZDc3QnVuSk1DRGJDZDdkRFVEQjhjQ3Bh; optimizelyEndUserId=oeu1603370817637r0.3923819652887971; _hjTLDTest=1; mywork.tab.tasks=false" -H "Upgrade-Insecure-Requests: 1" -H "Pragma: no-cache" -H "Cache-Control: no-cache" > temp/ncesidades.xml
