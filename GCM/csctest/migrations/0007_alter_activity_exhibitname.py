# Generated by Django 5.0.4 on 2024-04-21 22:59

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('csctest', '0006_merge_20240418_2157'),
    ]

    operations = [
        migrations.AlterField(
            model_name='activity',
            name='ExhibitName',
            field=models.ForeignKey(db_column='ExhibitName', on_delete=django.db.models.deletion.CASCADE, to='csctest.exhibit'),
        ),
    ]
