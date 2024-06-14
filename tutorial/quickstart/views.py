from django.shortcuts import render

# Create your views here.

from django.contrib.auth.models import Group, User
from rest_framework import permissions, viewsets
from rest_framework.response import Response
from rest_framework.mixins import RetrieveModelMixin
from rest_framework.generics import GenericAPIView

from quickstart.serializers import GroupSerializer, UserSerializer, AlumnosSerializer, ProfesoresSerializer, MovimientosSerializer , AsisAlumnoSerializer, AsisProfeSerializer, TurnoSerializer , TipoTurnoSerializer, CuotaSerializer, ListaEsperaSerializer
from quickstart.models import Alumnos, Profesores, Movimientos, Admin, AsistenciaAlumnos, AsistenciaProfesores, Cuotas, Salas, TiposTurnos, Turnos, ListaEspera

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

class AsisAlumnoViewSet(viewsets.ModelViewSet):
    queryset = AsistenciaAlumnos.objects.select_related('dni_alumno').all()
    serializer_class = AsisAlumnoSerializer


class AsisProfeViewSet(viewsets.ModelViewSet):
    queryset = AsistenciaProfesores.objects.select_related('dni_profesor').all()
    serializer_class = AsisProfeSerializer

class TurnosViewSet(viewsets.ModelViewSet):
    queryset = Turnos.objects.all().select_related('dni_alumno','tipo','dni_profesor','num_sala')
    serializer_class = TurnoSerializer

    def list(self, request, *args, **kwargs):
        queryset = self.get_queryset()
        turnos = []
        for turno in queryset:
            turnos.append({
                'id' : turno.id,
                'dia': turno.dia,
                'hora': turno.hora,
                'tipo': turno.tipo.tipo,
                'sala': turno.num_sala.numero,
                'alumno': f'{turno.dni_alumno.nombre} {turno.dni_alumno.apellido}'
            })
        return Response(turnos)


class TipoTurnoViewSet(viewsets.ModelViewSet):
    queryset = TiposTurnos.objects.all()
    serializer_class = TipoTurnoSerializer

class CuotaViewSet(viewsets.ModelViewSet):
    queryset = Cuotas.objects.select_related('dni_alumno').all()
    serializer_class = CuotaSerializer

class ListaViewSet(viewsets.ModelViewSet):
    queryset = ListaEspera.objects.all()
    serializer_class = ListaEsperaSerializer