from rest_framework import serializers, viewsets

from accounts.models import MyUser
from .models import *


class MyUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = MyUser
        fields = '__all__'


class ChildSerializer(serializers.ModelSerializer):
    user = MyUserSerializer()

    class Meta:
        model = Child
        fields = '__all__'


class DoseSerializer(serializers.ModelSerializer):
    child_serial = serializers.CharField(source='child.serial')
    child_first_name = serializers.CharField(source='child.first_name')
    child_second_name = serializers.CharField(source='child.second_name')
    child_last_name = serializers.CharField(source='child.last_name')

    class Meta:
        model = Dose
        fields = ['visit_date', 'is_taken', 'next_visit', 'dose', 'child_serial', 'child_first_name',
                  'child_second_name', 'child_last_name']


class VisitSerializer(serializers.ModelSerializer):
    child = ChildSerializer()
    dose = DoseSerializer()

    class Meta:
        model = Visit
        fields = ['visit_date', 'is_taken', 'next_visit', 'dose', 'child', 'next_visit_date']

class RecommendationsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Recommendations
        fields = ['recommend_text']