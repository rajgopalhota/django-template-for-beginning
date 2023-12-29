# myapp/views.py
from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    return HttpResponse("Hello, this is the home view!")

def about(request):
    return render(request, 'myapp/about.html')
