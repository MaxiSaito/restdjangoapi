from django.shortcuts import render

# Create your views here.

from django.contrib.auth.models import Group, User
from rest_framework import permissions, viewsets
from rest_framework.mixins import RetrieveModelMixin
from rest_framework.generics import GenericAPIView

from quickstart.serializers import GroupSerializer, UserSerializer, PersonaSerializer
from quickstart.models import Persona

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

class PersonaViewSet(viewsets.ModelViewSet):
    queryset = Persona.objects.all().order_by('apellido')
    serializer_class = PersonaSerializer
    permission_classes = [permissions.IsAuthenticated]

class NombreRetrieveView(RetrieveModelMixin, GenericAPIView):
        queryset = Persona.objects.all().order_by('apellido')
        serializer_class = PersonaSerializer
        lookup_field = 'nombre'
        def get(self, request, args, **kwargs):
            return self.retrieve(request,args, **kwargs)

class ApellidoRetrieveView(RetrieveModelMixin, GenericAPIView):
        queryset = Persona.objects.all().order_by('apellido')
        serializer_class = PersonaSerializer
        lookup_field = 'apellido'
        def get(self, request, args, **kwargs):
            return self.retrieve(request,args, **kwargs)
    
class DNIRetrieveView(RetrieveModelMixin, GenericAPIView):
        queryset = Persona.objects.all().order_by('apellido')
        serializer_class = PersonaSerializer
        lookup_field = 'dni'
        def get(self, request, args, **kwargs):
            return self.retrieve(request,args, **kwargs)