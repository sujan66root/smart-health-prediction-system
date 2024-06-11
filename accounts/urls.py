from django.urls import path
from . import views

urlpatterns = [


    path('sign_in_admin', views.sign_in_admin, name='sign_in_admin'),

    path('signup_doctorr', views.signup_doctorr, name="signup_doctorr"),
    path('sign_in_doctorr', views.sign_in_doctorr, name='sign_in_doctorr'),
    path('savepdata/<str:doctorrusername>', views.savepdata, name='savepdata'),


    path('signup_doctor', views.signup_doctor, name="signup_doctor"),
    path('sign_in_doctor', views.sign_in_doctor, name='sign_in_doctor'),
    path('saveddata/<str:doctorusername>', views.saveddata, name='saveddata'),

    path('logout', views.logout, name='logout'),
]
