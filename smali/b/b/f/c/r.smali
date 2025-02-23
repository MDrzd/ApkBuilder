.class public final Lb/b/f/c/r;
.super Lb/b/f/c/a;


# instance fields
.field private final a:I

.field private final b:Lb/b/f/c/aa;

.field private final c:Lb/b/f/d/a;

.field private d:Lb/b/f/c/ae;

.field private e:Lb/b/f/c/i;

.field private final f:Ljava/util/List;


# direct methods
.method private constructor <init>(ILb/b/f/c/aa;)V
    .registers 3

    invoke-direct {p0}, Lb/b/f/c/a;-><init>()V

    iput p1, p0, Lb/b/f/c/r;->a:I

    iput-object p2, p0, Lb/b/f/c/r;->b:Lb/b/f/c/aa;

    invoke-virtual {p2}, Lb/b/f/c/aa;->b()Lb/b/f/c/ad;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/b/f/d/a;->b(Ljava/lang/String;)Lb/b/f/d/a;

    move-result-object p1

    iput-object p1, p0, Lb/b/f/c/r;->c:Lb/b/f/d/a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/f/c/r;->f:Ljava/util/List;

    return-void
.end method

.method public static a(ILb/b/f/c/aa;)Lb/b/f/c/r;
    .registers 3

    new-instance v0, Lb/b/f/c/r;

    invoke-direct {v0, p0, p1}, Lb/b/f/c/r;-><init>(ILb/b/f/c/aa;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lb/b/f/c/j;
    .registers 3

    new-instance v0, Lb/b/f/c/j;

    iget-object v1, p0, Lb/b/f/c/r;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lb/b/f/c/j;-><init>(Lb/b/f/c/r;I)V

    iget-object v1, p0, Lb/b/f/c/r;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Lb/b/f/c/ae;)V
    .registers 3

    iget-object v0, p0, Lb/b/f/c/r;->d:Lb/b/f/c/ae;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/f/c/r;->d:Lb/b/f/c/ae;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "declaringClass == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "already added declaring class"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/f/c/i;)V
    .registers 3

    iget-object v0, p0, Lb/b/f/c/r;->e:Lb/b/f/c/i;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/f/c/r;->e:Lb/b/f/c/i;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callSite == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "already added call site"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final b(Lb/b/f/c/a;)I
    .registers 4

    check-cast p1, Lb/b/f/c/r;

    iget v0, p0, Lb/b/f/c/r;->a:I

    iget v1, p1, Lb/b/f/c/r;->a:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/f/c/r;->b:Lb/b/f/c/aa;

    iget-object v1, p1, Lb/b/f/c/r;->b:Lb/b/f/c/aa;

    invoke-virtual {v0, v1}, Lb/b/f/c/aa;->a(Lb/b/f/c/a;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lb/b/f/c/r;->d:Lb/b/f/c/ae;

    iget-object v1, p1, Lb/b/f/c/r;->d:Lb/b/f/c/ae;

    invoke-virtual {v0, v1}, Lb/b/f/c/ae;->a(Lb/b/f/c/a;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lb/b/f/c/r;->e:Lb/b/f/c/i;

    iget-object p1, p1, Lb/b/f/c/r;->e:Lb/b/f/c/i;

    invoke-virtual {v0, p1}, Lb/b/f/c/i;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/r;->f:Ljava/util/List;

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/b/f/c/r;->a:I

    return v0
.end method

.method public final d()Lb/b/f/c/aa;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/r;->b:Lb/b/f/c/aa;

    return-object v0
.end method

.method public final e()Lb/b/f/d/a;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/r;->c:Lb/b/f/d/a;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "InvokeDynamic"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lb/b/f/c/r;->d:Lb/b/f/c/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/f/c/r;->d:Lb/b/f/c/ae;

    invoke-virtual {v0}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InvokeDynamic("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/b/f/c/r;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/b/f/c/r;->b:Lb/b/f/c/aa;

    invoke-virtual {v0}, Lb/b/f/c/aa;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lb/b/f/d/c;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/r;->c:Lb/b/f/d/a;

    invoke-virtual {v0}, Lb/b/f/d/a;->b()Lb/b/f/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lb/b/f/c/i;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/r;->e:Lb/b/f/c/i;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/r;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
