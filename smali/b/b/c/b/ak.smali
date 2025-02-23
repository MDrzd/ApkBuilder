.class public abstract Lb/b/c/b/ak;
.super Lb/b/c/b/k;


# direct methods
.method public constructor <init>(Lb/b/f/b/z;Lb/b/f/b/u;)V
    .registers 4

    sget-object v0, Lb/b/c/b/m;->a:Lcom/gmail/heagoo/neweditor/x;

    invoke-direct {p0, v0, p1, p2}, Lb/b/c/b/k;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/gmail/heagoo/neweditor/x;)Lb/b/c/b/k;
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(I)Lb/b/c/b/k;
    .registers 3

    invoke-virtual {p0}, Lb/b/c/b/ak;->k()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/f/b/u;->d(I)Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/c/b/ak;->a(Lb/b/f/b/u;)Lb/b/c/b/k;

    move-result-object p1

    return-object p1
.end method
