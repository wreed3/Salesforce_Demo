public class TemperatureConverter {
	//Takes a Fahrenheit temperature and returns the Celsius equivalent.
    public static Decimal FahrenheitToCelsius(Decimal fh){
        if(fh == null){
            return null;
        }
        Decimal cs = (fh - 32) * 5/9;
        return cs.setScale(2);
    }
}