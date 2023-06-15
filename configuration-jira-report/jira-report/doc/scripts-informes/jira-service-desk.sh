

source conf/bajar-comun.sh

echo "LISTADO_SD"

jiraexport "project+in+%28PROWEB-eCommerceCore%2C+ITSMECOM%29+AND+status+not+in+%28Resolved%2C+Closed%2C+Cancelado%2C+Cancelled%2C+Cerrado%2C+%22Resoluci%C3%B3n+planificada%22%2C+Escalado%29+AND+%28%22Equipo+Asignado%22+in+%28jsdmantenimientopostventacadenas%29+OR+component+%3D+%22Desarrollo+BACK+-+Mantenimiento%22%29+AND+%28labels+is+EMPTY+OR+labels+not+in+%28Interidad%2C+integridad_sii%2C+integridad_SII%2C+INTEGRIDAD%29%29+ORDER+BY+%22Ultima+transicion%22+ASC%2C+updated+ASC&tempMax=1200" "LISTADO_SD"


