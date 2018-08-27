from django.db import models

# Create your models here.


class Category(models.Model):
    """文章类别"""
    name = models.CharField(max_length=20)

    def __str__(self):
        return self.name


class Tag(models.Model):
    """
    文章标签
    """
    name = models.CharField(max_length=20)

    def __str__(self):
        return self.name


class Blog(models.Model):
    """
    博客
    """
    title = models.CharField(max_length=100)
    content = models.TextField(default='')
    create_time = models.DateTimeField(auto_now_add=True)
    modify_time = models.DateTimeField(auto_now=True)
    click_nums = models.IntegerField(default=0)
    category = models.ForeignKey(Category)
    tag = models.ManyToManyField(Tag)
    comments_num = models.IntegerField(default=0)

    def __str__(self):
        return self.title


class Message(models.Model):
    """联系消息"""
    name = models.CharField(max_length=100)
    subject = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    content = models.TextField(blank=False)
    create_time = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name
