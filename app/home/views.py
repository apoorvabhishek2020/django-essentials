"""
Views for Home App.
"""
from django.http import HttpResponse


def home(request):
    """Home Page for the app."""
    return HttpResponse('Hello, World!')
