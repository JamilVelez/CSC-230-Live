from django.db import models

class TOSTracker(models.Model):
    tracking_type = models.CharField(max_length=255)
    session_duration = models.IntegerField()
    transferred_with = models.CharField(max_length=255)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.tracking_type} {self.timestamp}"
