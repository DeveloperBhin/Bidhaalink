# Generated by Django 4.2.16 on 2024-12-04 08:55

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Shoper', '0014_remove_paypage_user'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='buyerform',
            name='user',
        ),
    ]
