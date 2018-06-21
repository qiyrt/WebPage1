package com.mis.tag;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class DepartListTag extends SimpleTagSupport {

    public static final String[] STUDENT_SDEPT = {"计算机系", "自动化系", "电子信息系"};
    private String sdept;

    public String getSdept() {
        return sdept;
    }

    public void setSdept(String sdept) {
        this.sdept = sdept;
    }

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        StringBuilder str = new StringBuilder();
        str.append("<select class=\"input\" name=\"sdept\" id=\"sdept\" data-validate=\"required:请选择学生系部\">");
        str.append("<option value=\"\">请选择学生系部</option>");
        for (String s : STUDENT_SDEPT) {
            if (s.equals(sdept)) {
                str.append("<option value='").append(s).append("' selected>").append(s).append("</option>");
            } else {
                str.append("<option value='").append(s).append("'>").append(s).append("</option>");
            }
        }
        str.append("</select>");
        out.print(str.toString());
    }

}
