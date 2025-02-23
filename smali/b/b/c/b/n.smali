.class public abstract Lb/b/c/b/n;
.super Lb/b/c/b/k;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lb/b/c/b/k;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    invoke-virtual {p0}, Lb/b/c/b/n;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/x;->c()Lb/b/c/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/b/p;->a()I

    move-result v0

    return v0
.end method

.method protected final a(Z)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lb/b/c/b/n;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/x;->c()Lb/b/c/b/p;

    move-result-object v0

    invoke-virtual {p0}, Lb/b/c/b/k;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/x;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0}, Lb/b/c/b/p;->a(Lb/b/c/b/k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, p1}, Lb/b/c/b/p;->a(Lb/b/c/b/k;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " // "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/h/r;)V
    .registers 3

    invoke-virtual {p0}, Lb/b/c/b/n;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/x;->c()Lb/b/c/b/p;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lb/b/c/b/p;->a(Lb/b/h/r;Lb/b/c/b/k;)V

    return-void
.end method

.method public final d(I)Lb/b/c/b/k;
    .registers 3

    invoke-virtual {p0}, Lb/b/c/b/n;->k()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/f/b/u;->d(I)Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/c/b/n;->a(Lb/b/f/b/u;)Lb/b/c/b/k;

    move-result-object p1

    return-object p1
.end method
