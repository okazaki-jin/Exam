package scoremanager.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.School;
import dao.ClassNumDao;
import tool.Action;

public class StudentCreateAction extends Action{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res)
			throws Exception {

	       	int currentYear = java.time.LocalDate.now().getYear();
	        java.util.List<Integer> yearList = new java.util.ArrayList<>();
	        for (int i = currentYear - 10; i <= currentYear + 10; i++) {
	            yearList.add(i);
	        }

	        ClassNumDao classNumDao = new ClassNumDao();
	        School school = new School();

	            // ClassNumDaoから学校コードのリストを取得

	        List<String> classNumList = classNumDao.filter(school);

	            // 学校コードのリストをリクエスト属性にセット
	        req.setAttribute("classNumList", classNumList);


	        req.setAttribute("yearList", yearList);

		//JSPへフォワード
		req.getRequestDispatcher("student_create.jsp").forward(req, res);
	}
}