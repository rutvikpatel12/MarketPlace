from django.shortcuts import render,redirect
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from item.models import *
from .forms import *

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

def signin(request):
    if request.method=='POST':
        form=SignupForm(request.POST)
        
        if form.is_valid():
            form.save()
            
            return redirect('login')
    else:
        form=SignupForm()
    
    return render(request,'signup.html',{'form':form})

def signout(request):
    if request.user.is_authenticated:
        messages.success(request,'User Logout Successful..')
        logout(request)
    return redirect('login')


def contact(request):
    if request.method=='POST':
        form=ContactForm(request.POST)
        
        if form.is_valid():
            cont=form.save(commit=False)
            cont.created_by=request.user
            cont.save()
            
            return redirect('index')
    else:
        form=ContactForm()

    return render(request, 'contact.html',{
        'form':form,
        'title':'ct',
    })