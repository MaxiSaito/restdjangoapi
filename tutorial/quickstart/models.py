from django.db import models

# Create your models here.

class Persona(models.Model):
    nombre = models.CharField(max_length=60)
    apellido = models.CharField(max_length=50)
    edad = models.PositiveSmallIntegerField()
    dni = models.SmallIntegerField()
    email = models.EmailField(max_length=254)
    grupo = models.CharField(max_length=30)
    is_active = models.BooleanField(default=True)