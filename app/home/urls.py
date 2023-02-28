"""
URL mappings for Home App.
"""
from django.urls import path

from . import views


urlpatterns = [
    path('home/', views.home, name='home-view'),
]
