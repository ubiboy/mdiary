from django.urls import path

from subscribeapp.views import SubscriptionView

app_name = 'subscribeapp'

urlpatterns =[
    path('subscriptions/', SubscriptionView.as_view(), name='subscribe'),
]