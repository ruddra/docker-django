from __future__ import absolute_import, unicode_literals
import logging

from django.conf import settings
from mydjango.celery import app

logger = logging.getLogger("celery")


@app.task
def show_hello_world():
    logger.info("-"*25)
    logger.info("Printing Hello from Celery")
    logger.info("-"*25)
