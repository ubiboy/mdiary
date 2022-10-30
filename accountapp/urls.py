from django.urls import path
from accountapp.views import hello_world, AccountCreativeView

app_name = "accountapp"

urlpatterns = [
    path('hello_world/', hello_world, name='hello_world'),

    path('create/', AccountCreativeView.as_view(), name='create'),
]
