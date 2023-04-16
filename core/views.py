from django.shortcuts import render,redirect
from django.contrib.auth.decorators import login_required

from item.models import *

from .forms import SignupForm

def index(request):
    items=Item.objects.filter(is_sold=False)[0:6]
    categories=Category.objects.all()
    content={
        'categories':categories,
        'items':items,
    }
    return render(request, "index.html",content)

def contact(request):
    return render(request, "contact.html")

def signup(request):
    if request.method=='POST':
        form=SignupForm(request.POST)
        
        if form.is_valid():
            form.save()
            
            return redirect('login')
    else:
        form=SignupForm()
    
    return render(request,'signup.html',{'form':form})

