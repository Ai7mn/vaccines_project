from django.contrib import admin
from .models import Child, Serum, Dose, Visit, Recommendations

# Register your models here.


admin.site.register(Child)
admin.site.register(Serum)
admin.site.register(Dose)
admin.site.register(Visit)
admin.site.register(Recommendations)