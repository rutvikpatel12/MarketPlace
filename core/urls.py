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
    
    path('password_change/done/',auth_views.PasswordChangeDoneView.as_view(template_name='password_change_done.html'),name='password_change_done'),
    
    path('password_change/',auth_views.PasswordChangeView.as_view(template_name='password_change.html'),name='password_change'),
    
    path('password_reset/done/',auth_views.PasswordResetCompleteView.as_view(template_name='password_reset_done.html'),name='password_reset_done'),
    
    path('reset/<uidb64>/<token>/',auth_views.PasswordResetConfirmView.as_view(),name='password_reset_confirm'),
    
    path('password_reset/',auth_views.PasswordResetView.as_view(),name='password_reset'),
    
    path('reset/done/',auth_views.PasswordResetCompleteView.as_view(template_name="password_reset_complete.html"),name='password_reset_complete'),

] + static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
