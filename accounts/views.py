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
        serializer = MyUserSerializer(data=request.data)
        if serializer.is_valid():
            user = serializer.save()
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

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
