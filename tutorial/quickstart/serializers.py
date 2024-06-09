from django.contrib.auth.models import Group, User
from rest_framework import serializers
from .models import Admin, Alumnos, AsistenciaAlumnos, AsistenciaProfesores, Cuotas, Movimientos, Profesores, Salas, TiposTurnos, Turnos

class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ['url', 'username', 'email', 'groups']


class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ['url', 'name']

class AdminSerializer(serializers.ModelSerializer):
    class Meta:
        model = Admin
        fields = '__all__'

class AlumnosSerializer(serializers.ModelSerializer):
    class Meta:
        model = Alumnos
        fields = '__all__'

class ProfesoresSerializer(serializers.ModelSerializer):
    class Meta:
        model = Profesores
        fields = '__all__'

class MovimientosSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movimientos
        fields = '__all__'

class AsisAlumnoSerializer(serializers.ModelSerializer):
    class Meta:
        model = AsistenciaAlumnos
        fields = '__all__'

class AsisProfeSerializer(serializers.ModelSerializer):
    class Meta:
        model = AsistenciaProfesores
        fields = '__all__'

class CuotaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cuotas
        fields = '__all__'

class SalaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Salas
        fields ='__all__'

class TipoTurnoSerializer(serializers.ModelSerializer):
    class Meta:
        model = TiposTurnos
        fields = '__all__'

class TurnoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Turnos
        fields = '__all__'