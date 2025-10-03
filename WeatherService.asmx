<%@ WebService Language="C#" CodeBehind="WeatherService.asmx.cs" Class="ElTiempoWeb.WeatherService" %>


using System;
using System.Web.Services;

namespace ElTiempoWeb
{
    [WebService(Namespace = "http://tempuri.org/")]
    public class WeatherService : WebService
    {
        [WebMethod]
        public string GetWeatherXml(string city, string country)
        {
            // Ejemplo fijo, puedes modificarlo para hacerlo dinámico
            return @"<?xml version='1.0' encoding='utf-16'?>
<CurrentWeather>
    <Location>" + city + " / " + country + @"</Location>
    <Time>Mar 14, 2005 - 07:30 AM EST / 2005.03.14 1230 UTC</Time>
    <Wind>Variable at 2 MPH (2 KT):0</Wind>
    <Visibility>4 mile(s):0</Visibility>
    <Temperature>69 F (21 C)</Temperature>
    <DewPoint>51 F (11 C)</DewPoint>
    <RelativeHumidity>52%</RelativeHumidity>
    <Pressure>29.91 in. Hg (1013 hPa)</Pressure>
    <Status>Success</Status>
</CurrentWeather>";
        }
    }
}
