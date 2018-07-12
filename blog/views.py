from django.shortcuts import render

# Create your views here.
from blog.models import Blog


def index(request):
    article_list = Blog.objects.all()
    return render(request, "blog/index.html", {'articleList': article_list})
