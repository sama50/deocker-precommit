# yourapp/management/commands/consume_notifications.py
from django.core.management.base import BaseCommand
from preapp.Consumer import consume_notifications

class Command(BaseCommand):
    help = 'Consume notifications from Kafka'

    def handle(self, *args, **kwargs):
        consume_notifications()
