from django.db import connection
from django.shortcuts import render
from blog.models import Blog, Category, Tag


# Create your views here.


def index(request):
    """主页逻辑"""

    article_list = Blog.objects.all()
    new_article_list = Blog.objects.order_by("-create_time")[0:3]

    # 时间归档分类
    cursor = connection.cursor()
    cursor.execute('select date_format(create_time, "%Y年%m月") months from blog_blog group by months;')
    time_list = cursor.fetchall()

    # 分类
    category_list = Category.objects.all()
    cate_list = list()
    for cate in category_list:
        cate_blog_num = cate.blog_set.all().count()
        cate = cate.name + "(%d)" % cate_blog_num
        cate_list.append(cate)

    # 标签
    tag_list = Tag.objects.all()

    content = {"articleList": article_list,
               "new_article_list": new_article_list,
               "time_list": time_list,
               "cate_list": cate_list,
               "tag_list": tag_list
               }


    return render(request, "blog/index.html", content)
