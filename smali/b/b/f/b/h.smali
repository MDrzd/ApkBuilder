.class public final Lb/b/f/b/h;
.super Lb/b/f/b/i;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Lb/b/f/c/a;


# direct methods
.method public constructor <init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Ljava/util/ArrayList;Lb/b/f/c/a;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lb/b/f/b/i;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {p1}, Lb/b/f/b/x;->d()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iput-object p4, p0, Lb/b/f/b/h;->a:Ljava/util/ArrayList;

    iput-object p5, p0, Lb/b/f/b/h;->b:Lb/b/f/c/a;

    return-void

    :cond_0
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


# virtual methods
.method public final a(Lb/b/f/b/r;Lb/b/f/b/u;)Lb/b/f/b/i;
    .registers 9

    new-instance p1, Lb/b/f/b/h;

    invoke-virtual {p0}, Lb/b/f/b/h;->e()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/f/b/h;->f()Lb/b/f/b/z;

    move-result-object v2

    iget-object v4, p0, Lb/b/f/b/h;->a:Ljava/util/ArrayList;

    iget-object v5, p0, Lb/b/f/b/h;->b:Lb/b/f/c/a;

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lb/b/f/b/h;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Ljava/util/ArrayList;Lb/b/f/c/a;)V

    return-object p1
.end method

.method public final a(Lb/b/f/d/c;)Lb/b/f/b/i;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/f/b/k;)V
    .registers 2

    invoke-interface {p1, p0}, Lb/b/f/b/k;->a(Lb/b/f/b/h;)V

    return-void
.end method

.method public final b()Lb/b/f/d/e;
    .registers 2

    sget-object v0, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/h;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d()Lb/b/f/c/a;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/h;->b:Lb/b/f/c/a;

    return-object v0
.end method
