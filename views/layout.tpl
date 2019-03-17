<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>{{title}}</title>
    <link rel="stylesheet" href="/stylesheets/reset.css"/>
    {% block css %}
    {% endblock %}
</head>
<body>
    {% block content %}
    {% endblock %}

    {% block js %}
    {% endblock %}
</body>
</html>