# Generated by Django 4.2.11 on 2024-04-13 03:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0002_post_delete_tostracker'),
    ]

    operations = [
        migrations.CreateModel(
            name='ChildMuseum',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('description', models.TextField()),
            ],
            options={
                'db_table': 'Exhibit',
            },
        ),
    ]
