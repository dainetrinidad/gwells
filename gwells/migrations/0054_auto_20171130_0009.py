# -*- coding: utf-8 -*-
# Generated by Django 1.10.8 on 2017-11-30 00:09
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('gwells', '0053_auto_20171129_2309'),
    ]

    operations = [
        migrations.CreateModel(
            name='DecommissionMethod',
            fields=[
                ('who_created', models.CharField(max_length=30)),
                ('when_created', models.DateTimeField(blank=True, null=True)),
                ('who_updated', models.CharField(max_length=30, null=True)),
                ('when_updated', models.DateTimeField(blank=True, null=True)),
                ('decommission_method_guid', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('code', models.CharField(max_length=10, verbose_name='Code')),
                ('description', models.CharField(max_length=255, verbose_name='Description')),
                ('status_flag', models.BooleanField(choices=[(False, 'N'), (True, 'Y')], default=False)),
                ('sort_order', models.PositiveIntegerField()),
            ],
            options={
                'db_table': 'gwells_decommission_method',
                'ordering': ['sort_order'],
            },
        ),
        migrations.RenameField(
            model_name='well',
            old_name='reason_for_decommission',
            new_name='decommission_reason',
        ),
        migrations.AddField(
            model_name='well',
            name='decommission_method',
            field=models.ForeignKey(blank=True, db_column='decommission_method_guid', null='True', on_delete=django.db.models.deletion.CASCADE, to='gwells.DecommissionMethod', verbose_name='Method of Decommission'),
        ),
    ]
