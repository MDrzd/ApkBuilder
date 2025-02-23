.class public abstract Lb/b/a/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/d/f;


# instance fields
.field private final a:Lb/b/f/c/ae;

.field private final b:I

.field private final c:Lb/b/f/c/aa;

.field private final d:Lb/b/a/d/b;


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;ILb/b/f/c/aa;Lb/b/a/d/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lb/b/a/d/n;->a:Lb/b/f/c/ae;

    iput p2, p0, Lb/b/a/d/n;->b:I

    iput-object p3, p0, Lb/b/a/d/n;->c:Lb/b/f/c/aa;

    iput-object p4, p0, Lb/b/a/d/n;->d:Lb/b/a/d/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nat == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "definingClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c()Lb/b/f/c/aa;
    .registers 2

    iget-object v0, p0, Lb/b/a/d/n;->c:Lb/b/f/c/aa;

    return-object v0
.end method

.method public final d()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/a/d/n;->c:Lb/b/f/c/aa;

    invoke-virtual {v0}, Lb/b/f/c/aa;->a()Lb/b/f/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/a/d/n;->c:Lb/b/f/c/aa;

    invoke-virtual {v0}, Lb/b/f/c/aa;->b()Lb/b/f/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lb/b/a/d/n;->b:I

    return v0
.end method

.method public final g()Lb/b/a/d/b;
    .registers 2

    iget-object v0, p0, Lb/b/a/d/n;->d:Lb/b/a/d/b;

    return-object v0
.end method

.method public final h()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/a/d/n;->a:Lb/b/f/c/ae;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/d/n;->c:Lb/b/f/c/aa;

    invoke-virtual {v1}, Lb/b/f/c/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
