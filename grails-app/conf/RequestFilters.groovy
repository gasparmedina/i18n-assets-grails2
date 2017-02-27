
/**
 * 
 * Filtros sobre las request que quieran acceder al sitio ver documentacion de grails para ver en mas 
 * detalle de como funciona en http://docs.grails.org/2.3.11/ref/Plug-ins/filters.html
 * 
 * @author gaspar.medina
 *
 */
class RequestFilters {

	def filters = {

		languageCheck(controller: '*', action: '*') {
			before = {
				if( params.lang == null) {
					redirect( controller: params.controller, action: params.action, params:[ 'lang': Locale.default.toString() ] + params )
				}
			}
		}
	}
}
