package action;

import org.eclipse.jet.JET2Context;
import org.jmr.core.JmrActionSupport;

public class TestAction extends JmrActionSupport {

	public void execute(JET2Context context) {
	      context.setVariable("a", "a");
	}

}
