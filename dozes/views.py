from datetime import date, timedelta

from django.db.models import ExpressionWrapper, F, Value
from django.db.models.functions import Now
from datetime import timedelta
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


class VisitAPIView(APIView):
    def get(self, request, format=None):
        user = request.user
        child = Child.objects.filter(user=user)
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