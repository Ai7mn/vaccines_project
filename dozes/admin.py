from django.contrib import admin
from .models import Child, Serum, Dose, Visit, Recommendations, Governorate, Directorate


# Register your models here.


class ChildAdmin(admin.ModelAdmin):
    list_display = ('first_name', 'second_name', 'last_name', 'phone', 'serial', 'gender', 'directorate', 'date_of_birth')
    fields = ('first_name', 'second_name', 'last_name', 'phone', 'serial', 'gender', 'directorate', 'date_of_birth')
    exclude = ('user',)


admin.site.register(Child,ChildAdmin)
admin.site.register(Serum)
admin.site.register(Dose)
admin.site.register(Visit)
admin.site.register(Recommendations)
admin.site.register(Governorate)
admin.site.register(Directorate)