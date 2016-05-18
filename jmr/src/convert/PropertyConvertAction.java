package convert;

import org.jmr.core.JmrConvert;

public class PropertyConvertAction extends JmrConvert {

	public String convert(String value) {
		String returnValue = "";
		if(value != null && !value.isEmpty()){
			if(value.length() == 1){
				returnValue = value.toUpperCase();
			}else{
				returnValue = value.substring(0, 1).toUpperCase() + value.substring(1, value.length());
			}
		}
		return returnValue;
	}

}
