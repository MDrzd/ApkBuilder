.class public Lcom/gmail/heagoo/apkeditor/b/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;Lcom/gmail/heagoo/apkeditor/b/f;)V
    .registers 7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/b/f;

    iget-object v2, v1, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    iget-object v3, p2, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    iget-object v3, p2, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/gmail/heagoo/apkeditor/b/f;->a()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/b/f;

    invoke-direct {p0, p1, v0}, Lcom/gmail/heagoo/apkeditor/b/g;->a(Ljava/util/List;Lcom/gmail/heagoo/apkeditor/b/f;)V

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/gmail/heagoo/a/a/a/a/a/b;)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/apkeditor/b/f;

    invoke-virtual {v2, p1, v0}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Lcom/gmail/heagoo/a/a/a/a/a/b;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->e:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->f:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/apkeditor/b/f;

    invoke-direct {p0, v0, v2}, Lcom/gmail/heagoo/apkeditor/b/g;->a(Ljava/util/List;Lcom/gmail/heagoo/apkeditor/b/f;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->f:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->f:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->g:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->g:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->i:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->h:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->j:Ljava/util/List;

    return-void
.end method

.method public d()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->g:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->k:Ljava/util/List;

    return-void
.end method

.method public e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->e:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->c:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->h:Ljava/util/List;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->l:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->i:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->j:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/b/f;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "plugin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Libs:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/apkeditor/b/f;

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/b/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
