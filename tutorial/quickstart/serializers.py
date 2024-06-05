from django.contrib.auth.models import Group, User
from rest_framework import serializers
from .models import Admin, Alumnos, AsistenciaAlumnos, Cuotas, Movimientos, Profesores, Salas, TiposTurnos, Turnos

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
