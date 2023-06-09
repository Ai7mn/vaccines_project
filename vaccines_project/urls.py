"""vaccines_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from dozes.views import *
from accounts.views import *
from rest_framework import routers
from rest_framework.authtoken import views as auth_views

admin.autodiscover()
router = routers.DefaultRouter()
router.register(r'children', ChildViewSet)

urlpatterns = [
    path('admin/', admin.site.urls), 
    path('api/', include(router.urls)),
    path("", redirect_to_admin, name="to_admin"),
    path('api-token-auth/', auth_views.obtain_auth_token, name='api-token-auth'),
    path('api/visits/', VisitAPIView.as_view(), name='visit-api'),
    path('api/recommendations/', RecommendationsAPIView.as_view(), name='recommendations-api'),
    path('api/users/', MyUserAPIView.as_view(), name='users-api'),
    path('api/user_data/', GetUser.as_view(), name='user-api'),
    path('api/allusers/', AllUserApi.as_view(), name='userall'),
    path('api/allusers/<int:pk>/', AllUserApiDetails.as_view(), name='userall'),
    path('api/allchild/', AllChildApi.as_view(), name='allchild'),
    path('api/allchild/<int:pk>/', AllChildApiDetails.as_view(), name='allchild'),
] 
    