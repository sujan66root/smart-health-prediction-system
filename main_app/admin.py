from django.contrib import admin
from .models import doctorr, doctor, diseaseinfo, consultation, rating_review

# Register your models here.

admin.site.register(doctorr)
admin.site.register(doctor)
admin.site.register(diseaseinfo)
admin.site.register(consultation)
admin.site.register(rating_review)
