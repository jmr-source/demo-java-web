package action;

public class JmrTest {

	public static void main(String[] args) {
		
		/*String test = "abc_defg_hijkl_wwww";
		String testValue = "";
		int marking = 0;
		if(test.length() > 0){
			for(int i = 0;i < test.length();i++){
				char c = test.charAt(i); 
				if(marking == 1){
					testValue = testValue + String.valueOf(c).toUpperCase();
					marking = 0;
				}else{
					if("_".equals(String.valueOf(c))){
						marking = 1;
					}else{
						testValue = testValue + c;
					}
				}
			}
		}
		
		System.out.println("testValue:" + testValue);*/
		
		
		String value = "abcd";
		String returnValue = "";
		//判断要转换的字符串不为空，如果为空就不做处理
		if(value != null && !value.isEmpty()){
			//字符串的字符长度，如果只有1个字符，那就单个字符变大写就行，如果字符串长度大于1，那就把头字符变成大写
			if(value.length() == 1){
				returnValue = value.toUpperCase();
			}else{
				returnValue = value.substring(0, 1).toUpperCase() + value.substring(1, value.length());
			}
		}
		System.out.println("returnValue:" + returnValue);
		
		
	}

}
