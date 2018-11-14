import java.util.HashMap;
import java.sql.*;

import com.mie.model.*;
import com.mie.dao.*;

public class Main {

	public static void main(String[] args) {
		
		HashMap<Course, Integer> reco = new HashMap<Course, Integer>();
		CourseDao dao = new CourseDao();
		System.out.print("hi");
		/*
		String q2 = "Engineering";
		if(q2.equals("Engineering")){	
			for(Course c : dao.getAllCourses())
				if(!c.getDept().equals("APS") && !c.getDept().equals("CIV") && !c.getDept().equals("CHE"))
					reco.remove(c.getCourseCode());
		}
		
		else if(q2.equals("Non Engineering")){
			for(Course c : reco.keySet())
				if(c.getDept().equals("APS") && c.getDept().equals("CIV") && c.getDept().equals("CHE"))
					reco.remove(c.getCourseCode());
		}
		*/
		//System.out.print(reco);
		
	}

}
