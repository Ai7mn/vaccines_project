from rest_framework.views import APIView
from rest_framework.response import Response
from .models import MyUser
from dozes.serializers import MyUserSerializer


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
