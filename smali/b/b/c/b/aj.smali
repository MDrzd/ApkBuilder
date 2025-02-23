.class public final Lb/b/c/b/aj;
.super Lb/b/c/b/n;


# instance fields
.field private a:Lb/b/c/b/g;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/c/b/g;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lb/b/c/b/n;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lb/b/c/b/aj;->a:Lb/b/c/b/g;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "target == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/c/b/g;)Lb/b/c/b/aj;
    .registers 6

    invoke-virtual {p0}, Lb/b/c/b/aj;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/x;->g()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v0

    new-instance v1, Lb/b/c/b/aj;

    invoke-virtual {p0}, Lb/b/c/b/aj;->j()Lb/b/f/b/z;

    move-result-object v2

    invoke-virtual {p0}, Lb/b/c/b/aj;->k()Lb/b/f/b/u;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p1}, Lb/b/c/b/aj;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/c/b/g;)V

    return-object v1
.end method

.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 6

    new-instance v0, Lb/b/c/b/aj;

    invoke-virtual {p0}, Lb/b/c/b/aj;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/c/b/aj;->j()Lb/b/f/b/z;

    move-result-object v2

    iget-object v3, p0, Lb/b/c/b/aj;->a:Lb/b/c/b/g;

    invoke-direct {v0, v1, v2, p1, v3}, Lb/b/c/b/aj;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/c/b/g;)V

    return-object v0
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/x;)Lb/b/c/b/k;
    .registers 6

    new-instance v0, Lb/b/c/b/aj;

    invoke-virtual {p0}, Lb/b/c/b/aj;->j()Lb/b/f/b/z;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/c/b/aj;->k()Lb/b/f/b/u;

    move-result-object v2

    iget-object v3, p0, Lb/b/c/b/aj;->a:Lb/b/c/b/g;

    invoke-direct {v0, p1, v1, v2, v3}, Lb/b/c/b/aj;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/c/b/g;)V

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/aj;->a:Lb/b/c/b/g;

    if-nez v0, :cond_0

    const-string v0, "????"

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/b/c/b/aj;->a:Lb/b/c/b/g;

    invoke-virtual {v0}, Lb/b/c/b/g;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lb/b/c/b/g;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/aj;->a:Lb/b/c/b/g;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Lb/b/c/b/aj;->a:Lb/b/c/b/g;

    invoke-virtual {v0}, Lb/b/c/b/g;->h()I

    move-result v0

    return v0
.end method

.method public final o()I
    .registers 3

    iget-object v0, p0, Lb/b/c/b/aj;->a:Lb/b/c/b/g;

    invoke-virtual {v0}, Lb/b/c/b/g;->h()I

    move-result v0

    invoke-virtual {p0}, Lb/b/c/b/aj;->h()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final p()Z
    .registers 2

    invoke-virtual {p0}, Lb/b/c/b/aj;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/b/aj;->a:Lb/b/c/b/g;

    invoke-virtual {v0}, Lb/b/c/b/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
