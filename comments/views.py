from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from blog.models import Blog
from comments.models import Comment


def comments(request, blog_id):

    if request.method == "POST":
        comment_name = request.POST.get("name")
        comment_email = request.POST.get("email")
        comment_url = request.POST.get("url")
        comment_text = request.POST.get("comment")
        comment_blog = Blog.objects.get(id=blog_id)

        comment = Comment()
        comment.name = comment_name
        comment.email = comment_email
        comment.url = comment_url
        comment.text = comment_text
        comment.blog = comment_blog
        comment.save()
        return redirect("/detail_%s" % blog_id)
    else:
        return HttpResponse("请求方式错误")


