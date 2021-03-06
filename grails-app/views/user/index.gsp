<%@ page contentType="text/html;charset=UTF-8" import="org.springframework.context.i18n.LocaleContextHolder;" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Log In</title>
    <style type="text/css" media="screen">
    #status {
        background-color: #eee;
        border: .2em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        width: 12em;
        float: left;
        -moz-box-shadow: 0px 0px 1.25em #ccc;
        -webkit-box-shadow: 0px 0px 1.25em #ccc;
        box-shadow: 0px 0px 1.25em #ccc;
        -moz-border-radius: 0.6em;
        -webkit-border-radius: 0.6em;
        border-radius: 0.6em;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #status ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #status li {
        line-height: 1.3;
    }

    #status h1 {
        text-transform: uppercase;
        font-size: 1.1em;
        margin: 0 0 0.3em;
    }

    #page-body {
        margin: 2em 1em 1.25em 18em;
    }

    h2 {
        margin-top: 1em;
        margin-bottom: 0.3em;
        font-size: 1em;
    }

    p {
        line-height: 1.5;
        margin: 0.25em 0;
    }

    #controller-list ul {
        list-style-position: inside;
    }

    #controller-list li {
        line-height: 1.3;
        list-style-position: inside;
        margin: 0.25em 0;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #page-body {
            margin: 0 1em 1em;
        }

        #page-body h1 {
            margin-top: 0;
        }
    }
    </style>
    <g:set var="locale" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
    <asset:i18n locale="${Locale.default.toString()}"/>

</head>

<body>
<g:form name="loginForm" controller="user" action="login">
    <table>
        <h2>&nbsp <g:message code="user.login.header.label"/></h2></br>
        <tr>
            <td><g:message code="user.name.label"/></td>
            <td><input type="text" name="userName"/> </td>
        </tr>
        <tr>
            <td><g:message code="user.password.label"/></td>
            <td><input type="text" name="password"/> </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="<g:message code="user.login.label"/>"/> </td>
        </tr>
    </table>
</g:form>
<g:render template="/successModal"></g:render>
</body>
</html>
