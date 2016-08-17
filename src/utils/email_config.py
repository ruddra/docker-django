__author__ = 'ruddra'

'''
Dummy configuration, so change it with your own
'''
EMAIL_USE_TLS = True
DEFAULT_FROM_EMAIL = 'test@gmail.com'
SERVER_EMAIL = 'test@gmail.com'
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_PORT = 587
EMAIL_HOST_USER = 'test@gmail.com'
EMAIL_HOST_PASSWORD = 'test'
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'