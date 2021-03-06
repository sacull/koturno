<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<fmt:setBundle basename="lang"/>

<nav>

    <div class="text-center koturno-style">
        <div class="display-3">
            <strong>Koturno</strong>
        </div>
        <div class="h2">
            <fmt:message key="koturno.version"/>
        </div>

        <hr>

        <div>
            <c:if test="${disabledMenuItem.equals('dashboard')}">
                <a href="/" class="btn btn-secondary btn-lg"><fmt:message key="menu.label.dashboard"/></a>
            </c:if>
            <c:if test="${!disabledMenuItem.equals('dashboard')}">
                <a href="/" class="btn btn-primary btn-lg"><fmt:message key="menu.label.dashboard"/></a>
            </c:if>
            <sec:authorize access="!isAuthenticated()">
                <c:if test="${disabledMenuItem.equals('login')}">
                    <a href="/login" class="btn btn-secondary btn-lg ml-5"><fmt:message key="menu.label.login"/></a>
                </c:if>
                <c:if test="${!disabledMenuItem.equals('login')}">
                    <a href="/login" class="btn btn-primary btn-lg ml-5"><fmt:message key="menu.label.login"/></a>
                </c:if>
                <c:if test="${firstUser != null && firstUser == true}">
                    <c:if test="${disabledMenuItem.equals('register')}">
                        <a href="/register" class="btn btn-secondary btn-lg"><fmt:message
                                key="menu.label.register"/></a>
                    </c:if>
                    <c:if test="${!disabledMenuItem.equals('register')}">
                        <a href="/register" class="btn btn-primary btn-lg"><fmt:message key="menu.label.register"/></a>
                    </c:if>
                </c:if>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <c:if test="${disabledMenuItem.equals('hosts')}">
                    <a href="/hosts" class="btn btn-secondary btn-lg"><fmt:message key="menu.label.hosts"/></a>
                </c:if>
                <c:if test="${!disabledMenuItem.equals('hosts')}">
                    <a href="/hosts" class="btn btn-primary btn-lg"><fmt:message key="menu.label.hosts"/></a>
                </c:if>
                <c:if test="${disabledMenuItem.equals('groups')}">
                    <a href="/groups" class="btn btn-secondary btn-lg"><fmt:message key="menu.label.groups"/></a>
                </c:if>
                <c:if test="${!disabledMenuItem.equals('groups')}">
                    <a href="/groups" class="btn btn-primary btn-lg"><fmt:message key="menu.label.groups"/></a>
                </c:if>
                <c:if test="${disabledMenuItem.equals('history')}">
                    <a href="/history" class="btn btn-secondary btn-lg"><fmt:message key="menu.label.history"/></a>
                </c:if>
                <c:if test="${!disabledMenuItem.equals('history')}">
                    <a href="/history" class="btn btn-primary btn-lg"><fmt:message key="menu.label.history"/></a>
                </c:if>
                <a href="/logout" class="btn btn-primary btn-lg ml-5"><fmt:message key="menu.label.logout"/></a>
                <sec:authorize access="hasRole('ADMIN')">
                    <c:if test="${disabledMenuItem.equals('register')}">
                        <a href="/register" class="btn btn-secondary btn-lg"><fmt:message key="menu.label.register"/></a>
                    </c:if>
                    <c:if test="${!disabledMenuItem.equals('register')}">
                        <a href="/register" class="btn btn-primary btn-lg"><fmt:message key="menu.label.register"/></a>
                    </c:if>
                </sec:authorize>
            </sec:authorize>
        </div>
    </div>

    <hr>

</nav>
