from django.shortcuts import render
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from .models import TOSTracker
import json

@csrf_exempt
def tos_tracker_view(request):
    if request.method == 'POST':
        data = json.loads(request.body.decode('utf-8'))
        
        # Save the TOS data into the TOSTracker model
        TOSTracker.objects.create(
            tracking_type=data.get('trackingType', ''),
            session_duration=data.get('sessionDuration', 0),
            transferred_with=data.get('trasferredWith', '')
        )
        
        return JsonResponse({"message": "Data received successfully"}, status=200)
    else:
        return JsonResponse({"error": "Method not allowed"}, status=405)

def home(request):
    return render(request, "pages/homepage.html", {})
def LoginPageView(request):
    return render(request, "pages/login.html", {})
def BigJohn(request):
    return render(request, "pages/BigJohn.html", {})
def ArtSmart(request):
    return render(request, "pages/ArtSmart.html", {})
def CentralBank(request):
    return render(request, "pages/CentralBank.html", {})
def Engineer(request):
    return render(request, "pages/EngineersWorkshop.html", {})
def FamilyPlay(request):
    return render(request, "pages/FamilyPlay.html", {})
def Farm(request):
    return render(request, "pages/Farm.html", {})
def Firehouse(request):
    return render(request, "pages/Firehouse.html", {})
def Forts(request):
    return render(request, "pages/Forts.html", {})
def Hospital(request):
    return render(request, "pages/Hospital.html", {})
def IceCream(request):
    return render(request, "pages/IceCream.html", {})
def KidsPort(request):
    return render(request, "pages/Kidsport.html", {})
def LearningCenter(request):
    return render(request, "pages/LearningCenter.html", {})
def OceanSandbox(request):
    return render(request, "pages/OceanSandbox.html", {})
def PizzaPlace(request):
    return render(request, "pages/PizzaPlace.html", {})
def Publix(request):
    return render(request, "pages/Publix.html", {})
def Theater(request):
    return render(request, "pages/Theater.html", {})
def TugBoats(request):
    return render(request, "pages/Tugboats.html", {})
def Vet(request):
    return render(request, "pages/Vet.html", {})
def Waters(request):
    return render(request, "pages/Waters.html", {})
def GuestServices(request):
    return render(request, "pages/GuestServices.html", {})
def Temp(request):
    return render(request, "pages/TempExhibit.html", {})
def FamilyPlayProject(request):
    return render(request, "pages/FamilyPlay.html", {})
    
    

