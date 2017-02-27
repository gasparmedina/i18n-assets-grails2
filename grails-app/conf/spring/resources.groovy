// Place your Spring DSL code here
import org.springframework.context.i18n.LocaleContextHolder

beans = {
	localeResolver(org.springframework.web.servlet.i18n.SessionLocaleResolver) {
		def locale = LocaleContextHolder.getLocale()
		defaultLocale = new Locale("de","DE")
		java.util.Locale.setDefault(locale)
	 }
}
