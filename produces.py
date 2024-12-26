from kafka import KafkaProducer
import json

def send_notification(message):
    producer = KafkaProducer(bootstrap_servers='localhost:9092',
                             value_serializer=lambda v: json.dumps(v).encode('utf-8'))
    producer.send("notifications", message)
    producer.flush()