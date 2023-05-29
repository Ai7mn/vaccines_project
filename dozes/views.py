from datetime import date, timedelta

from django.db.models import ExpressionWrapper, F, Value
from django.db.models.functions import Now
from datetime import timedelta

from django.http import HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import render

# Create your views here.
from rest_framework import viewsets
from rest_framework.views import APIView

from dozes.models import *
from .serializers import *
from rest_framework.response import Response


class ChildViewSet(viewsets.ModelViewSet):
    queryset = Child.objects.all()
    serializer_class = ChildSerializer

    def get_queryset(self):
        user = self.request.user
        queryset = Child.objects.filter(user=user)
        return queryset


class VisitAPIView(APIView):
    def get(self, request, format=None):
        user = request.user
        print(user)
        the_user = MyUser.objects.get(username=user.username)
        child = Child.objects.get(user=the_user)
        visits = Visit.objects.filter(child=child)
        is_taken = request.query_params.get('is_taken')
        if is_taken is not None:
            visits = visits.filter(is_taken=is_taken)

        serializer = VisitSerializer(visits, many=True)
        return Response(serializer.data)


class RecommendationsAPIView(APIView):
    def get(self, request, format=None):
        user = request.user
        recommendations = Recommendations.objects.filter(user=user)
        serializer = RecommendationsSerializer(recommendations, many=True)
        return Response(serializer.data)


def redirect_to_admin(request):
    return HttpResponseRedirect(reverse("admin:login"))