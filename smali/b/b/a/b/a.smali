.class public abstract Lb/b/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/b/w;


# instance fields
.field private final a:Lb/b/f/d/a;

.field private b:[Lb/b/f/d/d;

.field private c:I

.field private d:Lb/b/f/d/c;

.field private e:I

.field private f:Lb/b/f/c/a;

.field private g:I

.field private h:Lb/b/a/b/am;

.field private i:Ljava/util/ArrayList;

.field private j:I

.field private k:Z

.field private l:Lb/b/f/b/r;

.field private m:[Lb/b/f/d/d;

.field private n:I


# direct methods
.method public constructor <init>(Lb/b/f/d/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/b/a;->a:Lb/b/f/d/a;

    const/16 p1, 0xa

    new-array p1, p1, [Lb/b/f/d/d;

    iput-object p1, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    const/4 p1, 0x6

    new-array p1, p1, [Lb/b/f/d/d;

    iput-object p1, p0, Lb/b/a/b/a;->m:[Lb/b/f/d/d;

    invoke-virtual {p0}, Lb/b/a/b/a;->b()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lb/b/f/d/a;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/a;->a:Lb/b/f/d/a;

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lb/b/a/b/a;->e:I

    return-void
.end method

.method public final a(ILb/b/f/d/c;Lb/b/f/b/n;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lb/b/f/b/r;->b(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/b/a;->l:Lb/b/f/b/r;

    return-void
.end method

.method public final a(Lb/b/a/b/am;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/b/a;->h:Lb/b/a/b/am;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cases == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final a(Lb/b/a/b/p;)V
    .registers 4

    iget v0, p0, Lb/b/a/b/a;->n:I

    if-ltz v0, :cond_4

    iget v0, p0, Lb/b/a/b/a;->n:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/a/b/a;->l:Lb/b/f/b/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/b/a/b/p;->c()Lb/b/a/b/u;

    move-result-object p1

    invoke-virtual {p0, v1}, Lb/b/a/b/a;->b(Z)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/a/b/u;->a(Lb/b/f/b/r;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p1

    :goto_0
    iget v0, p0, Lb/b/a/b/a;->n:I

    if-ge v1, v0, :cond_3

    iget-boolean v0, p0, Lb/b/a/b/a;->k:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb/b/a/b/o;->i()V

    :cond_2
    iget-object v0, p0, Lb/b/a/b/a;->m:[Lb/b/f/d/d;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lb/b/a/b/o;->a(Lb/b/f/d/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lb/b/a/b/aj;

    const-string v0, "results never set"

    invoke-direct {p1, v0}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/a/b/p;I)V
    .registers 6

    invoke-virtual {p1}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p1

    invoke-virtual {p0}, Lb/b/a/b/a;->b()V

    iget-object v0, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    array-length v0, v0

    if-le p2, v0, :cond_0

    add-int/lit8 v0, p2, 0xa

    new-array v0, v0, [Lb/b/f/d/d;

    iput-object v0, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    :cond_0
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    invoke-virtual {p1}, Lb/b/a/b/o;->j()Lb/b/f/d/d;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iput p2, p0, Lb/b/a/b/a;->c:I

    return-void
.end method

.method public final a(Lb/b/a/b/p;Lb/b/f/d/a;)V
    .registers 7

    invoke-virtual {p2}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/b;->a_()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lb/b/a/b/a;->a(Lb/b/a/b/p;I)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p2, p1}, Lb/b/f/d/b;->a(I)Lb/b/f/d/c;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, La/a/a;->b(Lb/b/f/d/d;Lb/b/f/d/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lb/b/a/b/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "at stack depth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected type "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Lb/b/f/d/b;->a(I)Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    aget-object p1, p2, p1

    invoke-interface {p1}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public final a(Lb/b/a/b/p;Lb/b/f/d/c;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lb/b/a/b/a;->a(Lb/b/a/b/p;I)V

    iget-object p1, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, La/a/a;->b(Lb/b/f/d/d;Lb/b/f/d/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lb/b/a/b/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    aget-object p2, p2, v0

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/a/b/p;Lb/b/f/d/c;Lb/b/f/d/c;)V
    .registers 6

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lb/b/a/b/a;->a(Lb/b/a/b/p;I)V

    iget-object p1, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, La/a/a;->b(Lb/b/f/d/d;Lb/b/f/d/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p3, p1}, La/a/a;->b(Lb/b/f/d/d;Lb/b/f/d/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lb/b/a/b/aj;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " but found "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    aget-object p2, p3, p2

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lb/b/a/b/aj;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "expected type "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    aget-object p2, p2, v0

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/a/b/p;Lb/b/f/d/c;Lb/b/f/d/c;Lb/b/f/d/c;)V
    .registers 6

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lb/b/a/b/a;->a(Lb/b/a/b/p;I)V

    iget-object p1, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, La/a/a;->b(Lb/b/f/d/d;Lb/b/f/d/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p3, p1}, La/a/a;->b(Lb/b/f/d/d;Lb/b/f/d/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p4, p1}, La/a/a;->b(Lb/b/f/d/d;Lb/b/f/d/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lb/b/a/b/aj;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "expected type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " but found "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    aget-object p2, p4, p2

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lb/b/a/b/aj;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "expected type "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " but found "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    aget-object p2, p3, p2

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lb/b/a/b/aj;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "expected type "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    aget-object p2, p2, v0

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/f/c/a;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/b/a;->f:Lb/b/f/c/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/f/d/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/b/a;->d:Lb/b/f/d/c;

    return-void
.end method

.method protected final a(Lb/b/f/d/d;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/a/b/a;->m:[Lb/b/f/d/d;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iput p1, p0, Lb/b/a/b/a;->n:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/b/a;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/b/a/b/a;->k:Z

    return-void
.end method

.method protected final b(Z)Lb/b/f/b/r;
    .registers 6

    iget-object v0, p0, Lb/b/a/b/a;->l:Lb/b/f/b/r;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lb/b/a/b/a;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    new-instance p1, Lb/b/a/b/aj;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local target with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/b/a/b/a;->n:I

    if-nez v1, :cond_1

    const-string v1, "no"

    goto :goto_0

    :cond_1
    const-string v1, "multiple"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lb/b/a/b/a;->m:[Lb/b/f/d/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/b/a;->l:Lb/b/f/b/r;

    invoke-virtual {v2}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v2

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lb/b/a/b/a;->l:Lb/b/f/b/r;

    invoke-virtual {p1, v0}, Lb/b/f/b/r;->a(Lb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lb/b/a/b/a;->l:Lb/b/f/b/r;

    return-object p1

    :cond_4
    invoke-static {v2, v1}, La/a/a;->b(Lb/b/f/d/d;Lb/b/f/d/d;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    if-ne v2, p1, :cond_5

    iget-object p1, p0, Lb/b/a/b/a;->l:Lb/b/f/b/r;

    invoke-virtual {p1, v0}, Lb/b/f/b/r;->a(Lb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/b/a;->l:Lb/b/f/b/r;

    :cond_5
    iget-object p1, p0, Lb/b/a/b/a;->l:Lb/b/f/b/r;

    return-object p1

    :cond_6
    new-instance p1, Lb/b/a/b/aj;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "local variable type mismatch: attempt to set or access a value of type "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lb/b/f/d/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using a local variable of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lb/b/f/d/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". This is symptomatic of .class transformation tools that ignore local variable information."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/b/a;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lb/b/a/b/a;->d:Lb/b/f/d/c;

    iput v0, p0, Lb/b/a/b/a;->e:I

    iput-object v1, p0, Lb/b/a/b/a;->f:Lb/b/f/c/a;

    iput v0, p0, Lb/b/a/b/a;->g:I

    iput-object v1, p0, Lb/b/a/b/a;->h:Lb/b/a/b/am;

    iput-object v1, p0, Lb/b/a/b/a;->i:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, p0, Lb/b/a/b/a;->j:I

    iput-boolean v0, p0, Lb/b/a/b/a;->k:Z

    iput-object v1, p0, Lb/b/a/b/a;->l:Lb/b/f/b/r;

    iput v2, p0, Lb/b/a/b/a;->n:I

    return-void
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lb/b/a/b/a;->g:I

    return-void
.end method

.method public final b(Lb/b/a/b/p;I)V
    .registers 5

    invoke-virtual {p0}, Lb/b/a/b/a;->b()V

    iget-object v0, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    invoke-virtual {p1}, Lb/b/a/b/p;->c()Lb/b/a/b/u;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/b/a/b/u;->a(I)Lb/b/f/d/d;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iput p1, p0, Lb/b/a/b/a;->c:I

    iput p2, p0, Lb/b/a/b/a;->j:I

    return-void
.end method

.method protected final b(Lb/b/f/d/d;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/a/b/a;->m:[Lb/b/f/d/d;

    iget v1, p0, Lb/b/a/b/a;->n:I

    aput-object p1, v0, v1

    iget p1, p0, Lb/b/a/b/a;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/a/b/a;->n:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final c()I
    .registers 2

    iget v0, p0, Lb/b/a/b/a;->c:I

    return v0
.end method

.method protected final c(I)Lb/b/f/d/d;
    .registers 3

    iget v0, p0, Lb/b/a/b/a;->c:I

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/b/a/b/a;->b:[Lb/b/f/d/d;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n >= argCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final d()Lb/b/f/d/c;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/a;->d:Lb/b/f/d/c;

    return-object v0
.end method

.method protected final d(I)Lb/b/f/d/d;
    .registers 3

    iget p1, p0, Lb/b/a/b/a;->n:I

    if-lez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lb/b/a/b/a;->m:[Lb/b/f/d/d;

    const/4 v0, 0x0

    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n >= resultCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final e()I
    .registers 2

    iget v0, p0, Lb/b/a/b/a;->e:I

    return v0
.end method

.method protected final f()Lb/b/f/c/a;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/a;->f:Lb/b/f/c/a;

    return-object v0
.end method

.method protected final g()I
    .registers 2

    iget v0, p0, Lb/b/a/b/a;->g:I

    return v0
.end method

.method protected final h()Lb/b/a/b/am;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/a;->h:Lb/b/a/b/am;

    return-object v0
.end method

.method protected final i()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/a;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final j()I
    .registers 2

    iget v0, p0, Lb/b/a/b/a;->j:I

    return v0
.end method

.method protected final k()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/b/a;->n:I

    return-void
.end method

.method protected final l()I
    .registers 3

    iget v0, p0, Lb/b/a/b/a;->n:I

    if-ltz v0, :cond_0

    iget v0, p0, Lb/b/a/b/a;->n:I

    return v0

    :cond_0
    new-instance v0, Lb/b/a/b/aj;

    const-string v1, "results never set"

    invoke-direct {v0, v1}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw v0
.end method
