from django.db import models


# Create your models here.
class Vaccine(models.models):
    name = models.CharField(max_length=50)
    Type = models.CharField(max_length=50)
    country_made = models.CharField(max_length=150)


class Dose(models.Model):
    name = models.CharField(max_length=150)
    dose_volume = models.CharField(max_length=150)
    for_age = models.FloatField()
