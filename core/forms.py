from django import forms
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.forms import ModelForm

from .models import *

class LoginForm(AuthenticationForm):
    username = forms.CharField(widget=forms.TextInput(attrs={
        'placeholder': 'Your username',
        'class': 'w-full py-4 px-6 rounded-xl'
    }))
    password = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder': 'Your password',
        'class': 'w-full py-4 px-6 rounded-xl'
    }))


class SignupForm(UserCreationForm):
    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'username','email', 'password1', 'password2')

    first_name = forms.CharField(widget=forms.TextInput(attrs={
        'placeholder': 'Your First Name',
        'class': 'w-full py-4 px-6 rounded-xl'
    }))
    last_name = forms.CharField(widget=forms.TextInput(attrs={
        'placeholder': 'Your Last Name',
        'class': 'w-full py-4 px-6 rounded-xl'
    }))
    username = forms.CharField(widget=forms.TextInput(attrs={
        'placeholder': 'Your username',
        'class': 'w-full py-4 px-6 rounded-xl'
    }))
    email = forms.CharField(widget=forms.EmailInput(attrs={
        'placeholder': 'Your email address',
        'class': 'w-full py-4 px-6 rounded-xl'
    }))
    password1 = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder': 'Your password',
        'class': 'w-full py-4 px-6 rounded-xl'
    }))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder': 'Repeat password',
        'class': 'w-full py-4 px-6 rounded-xl'
    }))


INPUT_CLASSES = 'w-full py-4 px-6 rounded-xl'

class UserUpdate(forms.ModelForm):
    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'username', 'email')

    first_name = forms.CharField(widget=forms.TextInput(attrs={
        'placeholder': 'Repeat password',
        'class': 'w-full py-4 px-6 rounded-xl'
    }))

class ContactForm(forms.ModelForm):
    class Meta:
        model = contact
        fields = ('fname', 'lname', 'email', 'contact', 'message',)
        widgets = {
            'fname': forms.TextInput(attrs={
                'class': INPUT_CLASSES
            }),
            'lname': forms.TextInput(attrs={
                'class': INPUT_CLASSES
            }),
            'email': forms.EmailInput(attrs={
                'class': INPUT_CLASSES
            }),
            'contact': forms.NumberInput(attrs={
                'class': INPUT_CLASSES
            }),
            'message': forms.Textarea(attrs={
                'class': INPUT_CLASSES
            })
        }
