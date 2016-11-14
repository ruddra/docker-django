from __future__ import absolute_import, unicode_literals
from django.conf import settings
from mydjango.celery import app
from django.core.mail import send_mail


@app.task
def send_email(recipient_list, subject, body, from_address):
    if not isinstance(recipient_list, list):
        recipient_list = [recipient_list]
    if not from_address:
        from_address = getattr(settings, 'EMAIL_FROM_ADDRESS')

    send_mail(subject, body, from_address, recipient_list)
