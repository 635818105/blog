import re

from django.core.paginator import Paginator
from django.db import connection
from django.shortcuts import render, redirect
from blog.models import Blog, Category, Tag


# Create your views here.


def base_data():

    # 最新文章
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

    return new_article_list, time_list, cate_list


def index(request, current_page):
    """主页逻辑"""

    article_list = Blog.objects.all()
    new_article_list, time_list, cate_list = base_data()

    # 分页
    paginator = Paginator(article_list, 5)
    page = paginator.page(current_page)

    # 标签
    tag_list = Tag.objects.all()

    content = {"page": page,
               "new_article_list": new_article_list,
               "time_list": time_list,
               "cate_list": cate_list,
               "tag_list": tag_list,
               }
    return render(request, "blog/index.html", content)


def cate_handle(request, cate_id, current_page):
    """分类页面处理"""

    cate_blog_list = Blog.objects.filter(category_id=cate_id).all()

    new_article_list, time_list, cate_list = base_data()
    current_type = Category.objects.get(id=cate_id)

    tag_list = list()
    for blog in cate_blog_list:
        tag = Tag.objects.filter(blog=blog).all()
        tag_list.extend(tag)

    # 分页
    paginator = Paginator(cate_blog_list, 5)
    page = paginator.page(current_page)

    content = {
        "new_article_list": new_article_list,
        "page": page,
        "cate_list": cate_list,
        "tag_list": tag_list,
        "time_list": time_list,
        "current_type": current_type
    }
    return render(request, "blog/cate_index.html", content)


def detail(request, article_id):
    """文章详情页"""

    new_article_list, time_list, cate_list = base_data()
    article = Blog.objects.get(id=article_id)

    # 标签分类
    tag_list = Tag.objects.filter(blog=article).all()

    content = {
        "article": article,
        "new_article_list": new_article_list,
        "time_list": time_list,
        "tag_list": tag_list,
        "cate_list": cate_list
    }

    article.click_nums += 1
    article.save()
    return render(request, "blog/single.html", content)


def time_handle(request, time):
    """归档"""

    current_page = request.GET.get("current_page")
    year = re.match(r"(\d+)年", time).group(1)
    month = re.search(r"年(\d+)月", time).group(1)
    blog_list = Blog.objects.filter(create_time__year=year, create_time__month=month).all()
    # blog_list = Blog.objects.filter(create_time__startswith="{}-{}".format(year, month)).all()

    new_article_list, time_list, cate_list = base_data()

    tag_list = list()
    for blog in blog_list:
        tag = Tag.objects.filter(blog=blog).all()
        tag_list.extend(tag)

    # 分页
    paginator = Paginator(blog_list, 5)
    page = paginator.page(current_page)

    content = {
        "page": page,
        "new_article_list": new_article_list,
        "time_list": time_list,
        "tag_list": tag_list,
        "cate_list": cate_list,
        "time": time
    }

    return render(request, "blog/time_index.html", content)


def index1(request):
    return redirect('/index_1/')
