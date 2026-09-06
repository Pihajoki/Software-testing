def vertaus(ika):
    if(ika<18):
        vastaus = "Olet lapsi"
        return vastaus
    if(ika < 70 and ika >= 18):
        vastaus = "Olet aikuinen"
        return vastaus
    if(ika >= 70):
        vastaus = "Olet eläkeläinen"
        return vastaus