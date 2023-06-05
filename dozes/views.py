from datetime import date, timedelta

from django.db.models import ExpressionWrapper, F, Value
from django.db.models.functions import Now
from datetime import timedelta

from django.http import HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import render

# Create your views here.
from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from rest_framework.views import APIView
from rest_framework import status
from dozes.models import *
from .serializers import *
from rest_framework.response import Response


class ChildViewSet(viewsets.ModelViewSet):
    queryset = Child.objects.all()
    serializer_class = ChildSerializer

    def get_queryset(self):
        user = self.request.user
        try:
            queryset = Child.objects.filter(user=user)
        except:
            queryset = None
        return queryset

    def create(self, request, *args, **kwargs):
        data = request.data.copy()
        # data.pop('user', None)
        # print(data)
        # phone_number = data.get('phone')
        # first_name = data.get('first_name')
        # last_name = data.get('last_name')
        # print(f"phone_number is : {phone_number}")
        # user = MyUser()
        # user.username = phone_number
        # user.first_name = first_name
        # user.last_name = last_name
        # user.phone = phone_number
        # user.set_password("12345678")
        # user.save()
        # data['user.username'] = phone_number
        # data['user.first_name'] = first_name
        # data['user.last_name'] = last_name
        # data['user.password'] = "12345678"
        serializer = self.get_serializer(data=data)
        serializer.is_valid(raise_exception=True)
        child_instance = serializer.save()

        headers = self.get_success_headers(serializer.data)
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)



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
        recommendations = Recommendations.objects.all()
        serializer = RecommendationsSerializer(recommendations, many=True)
        return Response(serializer.data)


def redirect_to_admin(request):
    return HttpResponseRedirect(reverse("admin:login"))


class GetUser(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request, format=None):
        user = request.user
        content = {
            'username': user.username,
            'phone': user.phone,
            'first_name': user.first_name,
            'last_name': user.last_name
        }
        return Response(content)
