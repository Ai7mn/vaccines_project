from rest_framework import serializers, viewsets

from accounts.models import MyUser
from .models import *


class MyUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = MyUser
        fields = ('username', 'password', 'phone', 'first_name', 'last_name', 'is_active', 'is_staff', 'is_superuser', )


class ChildSerializer(serializers.ModelSerializer):
    user = MyUserSerializer(read_only=True)

    class Meta:
        model = Child
        fields = '__all__'


class DoseSerializer(serializers.ModelSerializer):

    class Meta:
        model = Dose
        fields = '__all__'


class VisitSerializer(serializers.ModelSerializer):
    child = ChildSerializer()
    dose = serializers.StringRelatedField(many=True)

    class Meta:
        model = Visit
        fields = ['next_visit_date', 'is_taken', 'next_visit', 'dose', 'child', 'next_visit_date']


class RecommendationsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Recommendations
        fields = ['recommend_text']
