from kafka import KafkaConsumer
import json

def consume_notifications():
    consumer = KafkaConsumer(
        'notifications',
        bootstrap_servers='localhost:9092',
        auto_offset_reset='earliest',
        group_id='notification_group',
        value_deserializer=lambda x: json.loads(x.decode('utf-8'))
    )

    for message in consumer:
        data = message.value
        process_notification(data)

def process_notification(notification_data):
    print(f"Processing notification for user {notification_data['user_id']}: {notification_data['message']}")
