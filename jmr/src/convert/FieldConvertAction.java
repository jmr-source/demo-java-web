package convert;

import org.jmr.core.JmrConvert;

public class FieldConvertAction extends JmrConvert {

	public String convert(String value) {
		String returnValue = "";
		int marking = 0;
		if(value.length() > 0){
			for(int i = 0;i < value.length();i++){
				char c = value.charAt(i); 
				if(marking == 1){
					returnValue = returnValue + String.valueOf(c).toUpperCase();
					marking = 0;
				}else{
					if("_".equals(String.valueOf(c))){
						marking = 1;
					}else{
						returnValue = returnValue + c;
					}
				}
			}
		}
		return returnValue;
	}

}
