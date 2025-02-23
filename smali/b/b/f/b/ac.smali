.class public final Lb/b/f/b/ac;
.super Lb/b/f/b/i;


# instance fields
.field private final a:Lb/b/f/d/e;


# direct methods
.method public constructor <init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lb/b/f/b/i;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {p1}, Lb/b/f/b/x;->d()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p4, p0, Lb/b/f/b/ac;->a:Lb/b/f/d/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "opcode with invalid branchingness: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b/f/b/x;->d()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static a(Lb/b/f/d/e;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "catch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lb/b/f/d/e;->a_()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lb/b/f/b/r;Lb/b/f/b/u;)Lb/b/f/b/i;
    .registers 6

    new-instance p1, Lb/b/f/b/ac;

    invoke-virtual {p0}, Lb/b/f/b/ac;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {p0}, Lb/b/f/b/ac;->f()Lb/b/f/b/z;

    move-result-object v1

    iget-object v2, p0, Lb/b/f/b/ac;->a:Lb/b/f/d/e;

    invoke-direct {p1, v0, v1, p2, v2}, Lb/b/f/b/ac;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;)V

    return-object p1
.end method

.method public final a(Lb/b/f/d/c;)Lb/b/f/b/i;
    .registers 7

    new-instance v0, Lb/b/f/b/ac;

    invoke-virtual {p0}, Lb/b/f/b/ac;->e()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/f/b/ac;->f()Lb/b/f/b/z;

    move-result-object v2

    invoke-virtual {p0}, Lb/b/f/b/ac;->j()Lb/b/f/b/u;

    move-result-object v3

    iget-object v4, p0, Lb/b/f/b/ac;->a:Lb/b/f/d/e;

    invoke-interface {v4, p1}, Lb/b/f/d/e;->a(Lb/b/f/d/c;)Lb/b/f/d/e;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lb/b/f/b/ac;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/ac;->a:Lb/b/f/d/e;

    invoke-static {v0}, Lb/b/f/b/ac;->a(Lb/b/f/d/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lb/b/f/b/k;)V
    .registers 2

    invoke-interface {p1, p0}, Lb/b/f/b/k;->a(Lb/b/f/b/ac;)V

    return-void
.end method

.method public final b()Lb/b/f/d/e;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/ac;->a:Lb/b/f/d/e;

    return-object v0
.end method
