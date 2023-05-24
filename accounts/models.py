from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.
class MyUser(AbstractUser):
    pass
    phone = models.CharField(null=True, max_length=9, verbose_name='رقم الجوال')
    email = models.EmailField(null=True, max_length=254, verbose_name='البريد الإلكتروني')

    def __str__(self):
        return str(self.username)
