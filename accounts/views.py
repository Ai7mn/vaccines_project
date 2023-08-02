from rest_framework.views import APIView
from rest_framework.response import Response
from .models import MyUser
from dozes.serializers import *
from rest_framework import generics
from django.contrib.auth.hashers import make_password

# editable api
class AllUserApi(generics.ListCreateAPIView):
    queryset=MyUser.objects.all()
    serializer_class=UserAllSerializer
    def get(self,request):
        users=MyUser.objects.all()
        serializers=UserAllSerializer(users,many=True)
        return Response(serializers.data)
      
class AllUserApiDetails(generics.RetrieveUpdateDestroyAPIView):
    queryset=MyUser.objects.all()
    serializer_class=UserAllSerializer

    def put(self, request, *args, **kwargs):
        # Get the user object to update
        user = self.get_object()

        # Get the new password, is_staff, is_active, and is_superuser values from the request data
        new_password = request.data.get('password')
        is_staff = request.data.get('is_staff')
        is_active = request.data.get('is_active')
        is_superuser = request.data.get('is_superuser')

        # Hash the new password using Django's make_password() function
        if new_password:
            hashed_password = make_password(new_password)
            user.password = hashed_password

        # Update the user's is_staff, is_active, and is_superuser attributes
        if is_staff is not None:
            user.is_staff = is_staff
        if is_active is not None:
            user.is_active = is_active
        if is_superuser is not None:
            user.is_superuser = is_superuser

        # Save the updated user object to the database
        user.save()

        # Serialize the updated user object and return it in the response
        serializer = UserAllSerializer(user)
        return Response(serializer.data)
    # def put(self, request, *args, **kwargs):
    #     # Get the user object to update
    #     user = self.get_object()

    #     # Get the new password from the request data
    #     new_password = request.data.get('password')

    #     # Hash the new password using Django's make_password() function
    #     hashed_password = make_password(new_password)

    #     # Update the user's password with the hashed password
    #     user.password = hashed_password

    #     # Save the updated user object to the database
    #     user.save()

    #     # Serialize the updated user object and return it in the response
    #     serializer = UserAllSerializer(user)
    #     return Response(serializer.data)
 
class AllChildApi(generics.ListCreateAPIView): 
    queryset=Child.objects.all() 
    serializer_class=ChildAllSerializer
    def get(self,request):
        users=Child.objects.all()
        serializers=ChildAllSerializer(users,many=True)
        return Response(serializers.data)

class AllChildApiDetails(generics.RetrieveUpdateDestroyAPIView):
    queryset=Child.objects.all()
    serializer_class=ChildAllSerializer



# end

class MyUserAPIView(APIView):
    def get(self, request):
        users = MyUser.objects.all()
        serializer = MyUserSerializer(users, many=True)              
        return Response(serializer.data)
    
    def post(self, request):
        data = request.data.copy()
        data.pop('user', None)
        print(data)
        phone_number = data.get('phone')
        first_name = data.get('first_name')
        last_name = data.get('last_name')
        username = data.get('username')
        email = data.get('email')
        is_superuser=data.get('is_superuser')
        is_staff=data.get('is_staff')
        is_active=data.get('is_active')
        print(f"phone_number is : {phone_number}")
        user = MyUser()
        user.username = username
        user.first_name = first_name
        user.last_name = last_name
        user.email=email
        user.phone = phone_number
        user.is_staff=is_staff
        user.is_active=is_active
        user.is_superuser=is_superuser
        user.set_password(data['password'])
        user.save()
        
        serializer = MyUserSerializer(user, many=True)
        return Response(serializer.data)

    # def post(self, request):
    #     serializer = MyUserSerializer(data=request.data)
    #     if serializer.is_valid():
    #         user = serializer.save()
    #         return Response(serializer.data, status=201)
    #     return Response(serializer.errors, status=400)

    def put(self, request, pk):
        try:
            user = MyUser.objects.get(pk=pk)
        except MyUser.DoesNotExist:
            return Response({"message": "User not found."}, status=404)

        serializer = MyUserSerializer(user, data=request.data)
        if serializer.is_valid():
            user = serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=400)

    def delete(self, request, pk):
        try:
            user = MyUser.objects.get(pk=pk)
        except MyUser.DoesNotExist:
            return Response({"message": "User not found."}, status=404)

        user.delete()
        return Response(status=204)
