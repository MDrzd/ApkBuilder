.class public final Lb/b/c/b/ag;
.super Lb/b/c/b/n;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lb/b/c/b/n;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 5

    new-instance v0, Lb/b/c/b/ag;

    invoke-virtual {p0}, Lb/b/c/b/ag;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/c/b/ag;->j()Lb/b/f/b/z;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lb/b/c/b/ag;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    return-object v0
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/x;)Lb/b/c/b/k;
    .registers 5

    new-instance v0, Lb/b/c/b/ag;

    invoke-virtual {p0}, Lb/b/c/b/ag;->j()Lb/b/f/b/z;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/c/b/ag;->k()Lb/b/f/b/u;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lb/b/c/b/ag;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
