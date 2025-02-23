.class public final Lb/b/c/c/x;
.super Lb/b/c/c/y;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/b/f/c/n;


# direct methods
.method public constructor <init>(Lb/b/f/c/n;I)V
    .registers 3

    invoke-direct {p0, p2}, Lb/b/c/c/y;-><init>(I)V

    iput-object p1, p0, Lb/b/c/c/x;->a:Lb/b/f/c/n;

    return-void
.end method

.method private a(Lb/b/c/c/x;)I
    .registers 3

    iget-object v0, p0, Lb/b/c/c/x;->a:Lb/b/f/c/n;

    iget-object p1, p1, Lb/b/c/c/x;->a:Lb/b/f/c/n;

    invoke-virtual {v0, p1}, Lb/b/f/c/n;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Lb/b/c/c/u;Lb/b/h/r;II)I
    .registers 10

    invoke-virtual {p1}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/x;->a:Lb/b/f/c/n;

    invoke-virtual {p1, v0}, Lb/b/c/c/ac;->b(Lb/b/f/c/n;)I

    move-result p1

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lb/b/c/c/x;->b()I

    move-result v0

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "  [%x] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 p4, 0x1

    iget-object v4, p0, Lb/b/c/c/x;->a:Lb/b/f/c/n;

    invoke-virtual {v4}, Lb/b/f/c/n;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v3, p4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    invoke-static {p3}, La/a/a;->b(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    field_idx:    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    invoke-static {v0}, La/a/a;->b(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    access_flags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p3}, Lb/b/h/r;->e(I)I

    invoke-interface {p2, v0}, Lb/b/h/r;->e(I)I

    return p1
.end method

.method public final a()Lb/b/f/c/n;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/x;->a:Lb/b/f/c/n;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/c/c/u;->m()Lb/b/c/c/ac;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/x;->a:Lb/b/f/c/n;

    invoke-virtual {p1, v0}, Lb/b/c/c/ac;->a(Lb/b/f/c/n;)Lb/b/c/c/ab;

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/c/c/x;

    invoke-direct {p0, p1}, Lb/b/c/c/x;->a(Lb/b/c/c/x;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lb/b/c/c/x;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb/b/c/c/x;

    invoke-direct {p0, p1}, Lb/b/c/c/x;->a(Lb/b/c/c/x;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/x;->a:Lb/b/f/c/n;

    invoke-virtual {v0}, Lb/b/f/c/n;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/x;->a:Lb/b/f/c/n;

    invoke-virtual {v0}, Lb/b/f/c/n;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
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

    invoke-virtual {p0}, Lb/b/c/c/x;->b()I

    move-result v1

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/c/c/x;->a:Lb/b/f/c/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
