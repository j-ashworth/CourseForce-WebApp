<%@tag description="Course Page Template" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="course" required="true" type="com.mie.model.Course"%>

<t:genericpage>
    <jsp:attribute name="header">
      <h1>Course Page for ${courseCode}</h1>
    </jsp:attribute>
    <jsp:body>
        <jsp:doBody/>
    </jsp:body>
</t:genericpage>