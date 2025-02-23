.class public Lcom/gmail/heagoo/apkeditor/b/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/h;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/gmail/heagoo/apkeditor/b/g;Ljava/util/List;)V
    .registers 6

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/b/g;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/b/h;->a(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/b/g;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Lcom/gmail/heagoo/apkeditor/b/h;->a(Lcom/gmail/heagoo/apkeditor/b/g;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/b/g;
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/b/g;

    invoke-virtual {v1}, Lcom/gmail/heagoo/apkeditor/b/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/h;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/gmail/heagoo/apkeditor/b/g;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/gmail/heagoo/apkeditor/b/g;)Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/gmail/heagoo/apkeditor/b/h;->a(Lcom/gmail/heagoo/apkeditor/b/g;Ljava/util/List;)V

    return-object v0
.end method
