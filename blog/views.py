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
        cate_list.append({"cate": cate, "cate_blog_num": cate_blog_num})
    # 标签
    tag_list = Tag.objects.all()

    content = {"articleList": article_list,
               "new_article_list": new_article_list,
               "time_list": time_list,
               "cate_list": cate_list,
               "tag_list": tag_list,
               "index": True
               }
    return render(request, "blog/index.html", content)


def cate_handle(request, cate_id):
    cate_blog_list = Blog.objects.filter(category_id=cate_id).all()
    cate = Category.objects.get(id=cate_id)
    cate_blog_num = cate.blog_set.all().count()

    # 时间归档分类
    cursor = connection.cursor()
    cursor.execute(
        'select date_format(create_time, "%Y年%m月") months from blog_blog where category_id = {} group by months;'.format(
            cate.id))
    time_list = cursor.fetchall()

    tag_list = list()
    for blog in cate_blog_list:
        tag = Tag.objects.filter(blog=blog.id).all()
        tag_list.extend(tag)
    content = {"cate_blog_list": cate_blog_list,
               "cate": cate,
               "cate_blog_num": cate_blog_num,
               "tag_list": tag_list,
               "time_list": time_list
               }
    return render(request, "blog/cate_index.html", content)
