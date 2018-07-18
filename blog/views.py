from django.db import connection
from django.shortcuts import render

# Create your views here.
from blog.models import Blog


def index(request):
    article_list = Blog.objects.all()
    new_article_list = Blog.objects.order_by("-create_time")[0:3]
    cursor = connection.cursor()
    cursor.execute('select date_format(create_time, "%Y年%m月") months from blog_blog group by months;')
    time_list = cursor.fetchall()
    return render(request, "blog/index.html", {'articleList': article_list, "new_article_list": new_article_list, "time_list": time_list})
