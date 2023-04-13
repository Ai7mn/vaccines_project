from django.db import models


class Child(models.Model):
    name = models.CharField(max_length=100)
    date_of_birth = models.DateField()
    # Other fields as needed


class Serum(models.Model):
    name = models.CharField(max_length=100)
    # Other fields as needed


class Visit(models.Model):
    child = models.ForeignKey(Child, on_delete=models.CASCADE)
    visit_date = models.DateField()
    # Other fields as needed


class Dose(models.Model):
    visit = models.ForeignKey(Visit, on_delete=models.CASCADE)
    serum = models.ForeignKey(Serum, on_delete=models.CASCADE)
    dose_number = models.PositiveIntegerField()
    # Other fields as needed
