from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib import messages

from item.models import *

@login_required
def index(request):
    items=Item.objects.filter(created_by=request.user)
    
    return render(request,'index.html',{
        'items':items,
    })

def profile(request):
    if request.method=="POST":
        fn=request.POST["fname"]
        ln=request.POST["lname"]
        un=request.POST["uname"]
        email=request.POST["email"]

        user=User.objects.get(id=request.user.id)
        user.first_name=fn
        user.last_name=ln
        user.username=un
        user.email=email
        user.save()
        
        return redirect('index')
    messages.success(request,'Profile Updated Success..')
    return render(request,'dash/profile.html')