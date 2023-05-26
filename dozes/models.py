from django.db import models
from django.contrib.auth.models import User
from django.conf import settings

from accounts.models import MyUser

TYPE = (("شراب", "شراب"), ("حقنة", "حقنة"), ("كبسولة", "كبسولة"))
GENDER = (("ذكر", "ذكر"), ("أنثى", "أنثى"))
AGES = ((0, "بعد الولادة مباشرة"), (1, "شهر ونصف"), (2, "شهرين ونصف"))

User = settings.AUTH_USER_MODEL


class Governorate(models.Model):
    name = models.CharField(max_length=200, verbose_name='اسم المحافظة')

    class Meta:
        verbose_name = "محافظة"
        verbose_name_plural = "المحافظات"

    def __str__(self):
        return str(self.name)


class Directorate(models.Model):
    governorate = models.ForeignKey(Governorate, on_delete=models.CASCADE, verbose_name="المحافظة")
    name = models.CharField(max_length=200, verbose_name='اسم المديرية')

    class Meta:
        verbose_name = "مديرية"
        verbose_name_plural = "المديريات"

    def __str__(self):
        return str(self.name)


class Recommendations(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    recommend_text = models.TextField()

    class Meta:
        db_table = 'dozes_recommends'

    def __str__(self):
        return str(self.user.username)


class Child(models.Model):
    user = models.OneToOneField(MyUser, null=True, blank=True, on_delete=models.CASCADE, verbose_name="المستخدم")
    first_name = models.CharField(max_length=100, null=True, verbose_name="اسم الأول")
    second_name = models.CharField(max_length=100, null=True, verbose_name="اسم الأب")
    last_name = models.CharField(max_length=100, null=True, verbose_name="اللقب")
    phone = models.CharField(null=True, max_length=9, verbose_name='رقم الجوال')
    serial = models.CharField(max_length=120, null=True, default="ABC", unique=True, verbose_name='الرقم التسلسلي')
    gender = models.CharField(max_length=100, choices=GENDER, verbose_name="الجنس")
    directorate = models.ForeignKey(Directorate, null=True, on_delete=models.CASCADE, verbose_name="المديرية")
    date_of_birth = models.CharField(max_length=100, null=True, verbose_name="تاريخ ميلاد الطفل")

    # Other fields as needed
    def __str__(self):
        return f"{self.first_name} {self.second_name}"

    def save(self, *args, **kwargs):
        user = MyUser()
        user.username = self.serial
        user.first_name = self.first_name
        user.last_name = self.last_name
        user.phone = self.phone
        user.set_password("12345678")
        user.save()
        super().save(*args, **kwargs)


class Serum(models.Model):
    name = models.CharField(max_length=100, verbose_name="اسم اللقاح")
    type = models.CharField(max_length=100, default=0, verbose_name="نوع اللقاح")
    made_in = models.CharField(max_length=100, null=True, verbose_name="بلد المنشأ")

    def __str__(self):
        return self.name


class Visit(models.Model):
    child = models.ForeignKey(Child, on_delete=models.CASCADE, verbose_name="الطفل")
    visit_date = models.CharField(max_length=100, null=True, verbose_name="تاريخ الزيارة")
    dose = models.ManyToManyField('Dose', verbose_name="الجرع")
    is_taken = models.BooleanField(default=False)
    next_visit = models.PositiveIntegerField(null=True, verbose_name="الزيارة القادمة بعد")
    next_visit_date = models.DateField(null=True)

    # Other fields as needed

    def __str__(self):
        return f"{self.child.name}زيارة الطفل "


class Dose(models.Model):
    serum = models.ForeignKey(Serum, on_delete=models.CASCADE, verbose_name="اللقاح")
    dose_number = models.PositiveIntegerField(verbose_name="رقم الجرع")
    production_date = models.CharField(max_length=100, null=True, verbose_name="تاريخ الإنتاج")
    exp_date = models.CharField(max_length=100, null=True, verbose_name="تاريخ الإنتهاء")
    for_age = models.CharField(max_length=100, null=True, verbose_name="لعمر")

    def __str__(self):
        return f" جرعة " + str(self.serum.name) + " رقم " + str(self.dose_number)
