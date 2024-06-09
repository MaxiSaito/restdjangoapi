from django.db import models

# Create your models here.
# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Admin(models.Model):
    dni = models.IntegerField(primary_key=True)
    pass_field = models.CharField(db_column='pass', max_length=40)  # Field renamed because it was a Python reserved word.
    nombre = models.CharField(max_length=40)
    apellido = models.CharField(max_length=30)
    edad = models.IntegerField()
    email = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        db_table = 'admin'


class Alumnos(models.Model):
    dni = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=40)
    apellido = models.CharField(max_length=30)
    edad = models.IntegerField()
    email = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        db_table = 'alumnos'

class Profesores(models.Model):
    dni = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=40)
    apellido = models.CharField(max_length=30)
    edad = models.IntegerField()
    email = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        db_table = 'profesores'


class AsistenciaAlumnos(models.Model):
    dni_alumno = models.ForeignKey(Alumnos, on_delete=models.CASCADE, db_column='dni_alumno', blank=True, null=True)
    fecha = models.DateField(blank=True, null=True)

    class Meta:
        db_table = 'asistencia_alumnos'


class AsistenciaProfesores(models.Model):
    dni_profesor = models.ForeignKey(Profesores, on_delete=models.CASCADE, db_column='dni_profesor', blank=True, null=True)
    fecha = models.DateField(blank=True, null=True)

    class Meta:
        db_table = 'asistencia_profesores'


class Cuotas(models.Model):
    monto = models.FloatField()
    dni_alumno = models.ForeignKey(Alumnos, models.DO_NOTHING, db_column='dni_alumno')
    mes = models.CharField(primary_key=True, max_length=10)  # The composite primary key (mes, ano, dni_alumno) found, that is not supported. The first column is selected.
    ano = models.IntegerField()
    estado = models.CharField(max_length=6)

    class Meta:
        db_table = 'cuotas'
        unique_together = (('mes', 'ano', 'dni_alumno'),)


class Movimientos(models.Model):
    concepto = models.CharField(max_length=16, blank=True, null=True)
    tipopago = models.CharField(db_column='tipoPago', max_length=13, blank=True, null=True)  # Field name made lowercase.
    fecha = models.DateField()
    num_movimiento = models.AutoField(primary_key=True)
    monto = models.FloatField()

    class Meta:
        db_table = 'movimientos'


class Salas(models.Model):
    numero = models.IntegerField(primary_key=True)

    class Meta:
        db_table = 'salas'


class TiposTurnos(models.Model):
    tipo = models.CharField(primary_key=True, max_length=16)
    precio = models.FloatField(blank=True, null=True)

    class Meta:
        db_table = 'tipos_turnos'


class Turnos(models.Model):
    dia = models.DateField(primary_key=True)  # The composite primary key (dia, hora) found, that is not supported. The first column is selected.
    hora = models.TimeField()
    tipo = models.ForeignKey(TiposTurnos, models.DO_NOTHING, db_column='tipo', blank=True, null=True)
    dni_alumno = models.ForeignKey(Alumnos, models.DO_NOTHING, db_column='dni_alumno', blank=True, null=True)
    dni_profesor = models.ForeignKey(Profesores, models.DO_NOTHING, db_column='dni_profesor', blank=True, null=True)
    num_sala = models.ForeignKey(Salas, models.DO_NOTHING, db_column='num_sala', blank=True, null=True)

    class Meta:
        db_table = 'turnos'
        unique_together = (('dia', 'hora'),)
