# Generated by Django 3.2.18 on 2023-05-26 00:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dozes', '0003_alter_child_gender'),
    ]

    operations = [
        migrations.AddField(
            model_name='visit',
            name='next_visit_date',
            field=models.DateField(null=True),
        ),
    ]