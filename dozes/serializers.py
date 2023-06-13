from rest_framework import serializers, viewsets

from accounts.models import MyUser
from .models import *
from django.contrib.auth.hashers import make_password

# my editable api

class UserAllSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)

    class Meta:
        model = MyUser
        fields = ('id','username', 'password', 'phone', 'first_name', 'last_name', 'is_active', 'is_staff', 'is_superuser', )
    def create(self, validated_data):
        password = validated_data.pop('password', None)
        user = super(UserAllSerializer, self).create(validated_data)
        if password is not None:
            user.password = make_password(password)
            user.save()
        return user
    
class ChildAllSerializer(serializers.ModelSerializer):
    user = UserAllSerializer(read_only=True)

    class Meta:
        model = Child
        fields = '__all__'
# end

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
        fields = ['next_visit_date', 'is_taken', 'next_visit','visit_date', 'dose', 'child', 'next_visit_date']


class RecommendationsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Recommendations
        fields = ['recommend_text']
