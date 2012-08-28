# 2 "../debhelper.in/locales.templates"
/* Type: multiselect
Description */
char *s = N_("Select locales to be generated.");
# 2 "../debhelper.in/locales.templates"
/* Type: multiselect
Description */
char *s = N_("Locale is a framework to switch between multiple languages for users who can select to use their language, country, characters, collation order, etc.");
# 2 "../debhelper.in/locales.templates"
/* Type: multiselect
Description */
char *s = N_("Choose which locales to generate.  The selection will be saved to `/etc/locale.gen', which you can also edit manually (you need to run `locale-gen' afterwards).");
# 12 "../debhelper.in/locales.templates"
/* Type: select
Choices */
char *s = N_("None, ${locales}");
# 14 "../debhelper.in/locales.templates"
/* Type: select
Description */
char *s = N_("Which locale should be the default in the system environment?");
# 14 "../debhelper.in/locales.templates"
/* Type: select
Description */
char *s = N_("Many packages in Debian use locales to display text in the correct language for users. You can change the default locale if you're not a native English speaker. These choices are based on which locales you have chosen to generate.");
# 14 "../debhelper.in/locales.templates"
/* Type: select
Description */
char *s = N_("Note: This will select the language for your whole system. If you're running a multi-user system where not all of your users speak the language of your choice, then they will run into difficulties and you might want not to set a default locale.");
