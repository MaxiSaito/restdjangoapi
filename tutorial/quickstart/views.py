from django.shortcuts import render

# Create your views here.

from django.contrib.auth.models import Group, User
from rest_framework import permissions, viewsets
from rest_framework.mixins import RetrieveModelMixin
from rest_framework.generics import GenericAPIView

from quickstart.serializers import GroupSerializer, UserSerializer, AlumnosSerializer, ProfesoresSerializer, MovimientosSerializer
from quickstart.models import Alumnos, Profesores, Movimientos, Admin, AsistenciaAlumnos, AsistenciaProfesores, Cuotas, Salas, TiposTurnos, Turnos

class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated]


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all().order_by('name')
    serializer_class = GroupSerializer
    permission_classes = [permissions.IsAuthenticated]

#Endpoints

class AlumnoViewSet(viewsets.ModelViewSet):
    queryset = Alumnos.objects.all()
    serializer_class = AlumnosSerializer
    
class ProfesorViewSet(viewsets.ModelViewSet):
    queryset = Profesores.objects.all()
    serializer_class = ProfesoresSerializer

class MovimientosViewSet(viewsets.ModelViewSet):
    queryset = Movimientos.objects.all()
    serializer_class = MovimientosSerializer
