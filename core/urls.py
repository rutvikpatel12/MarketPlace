from django.urls import path
from django.contrib.auth import views as auth_views

from . import views
from .forms import LoginForm

# Show Image path for setting file
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('',views.index,name='index'),
    path('contact/',views.contact,name='contact'),
    path('signup/',views.signin,name='signup'),
    path('login/',auth_views.LoginView.as_view(template_name='login.html',authentication_form=LoginForm),name='login'),
    path('signout/',views.signout,name='signout'),
    # path('profile/',views.profile,name='profile'),
    
] + static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
