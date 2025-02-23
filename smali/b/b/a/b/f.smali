.class public final Lb/b/a/b/f;
.super Lb/b/h/n;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/gmail/heagoo/common/ae;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/a/b/f;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/common/ae;

    return-object p1
.end method

.method public final a(ILcom/gmail/heagoo/common/ae;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lb/b/h/n;->a(ILb/b/h/m;)V

    return-void
.end method

.method public final b(I)Lcom/gmail/heagoo/common/ae;
    .registers 5

    invoke-virtual {p0, p1}, Lb/b/a/b/f;->c(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lb/b/a/b/f;->a(I)Lcom/gmail/heagoo/common/ae;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such label: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
