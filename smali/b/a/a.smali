.class public final Lb/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/a/i;

.field private final b:B

.field private final c:Lb/a/u;


# direct methods
.method public constructor <init>(Lb/a/i;BLb/a/u;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a;->a:Lb/a/i;

    iput-byte p2, p0, Lb/a/a;->b:B

    iput-object p3, p0, Lb/a/a;->c:Lb/a/u;

    return-void
.end method

.method private c()I
    .registers 2

    invoke-virtual {p0}, Lb/a/a;->b()Lb/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/v;->c()I

    invoke-virtual {v0}, Lb/a/v;->d()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()B
    .registers 2

    iget-byte v0, p0, Lb/a/a;->b:B

    return v0
.end method

.method public final a(Lb/a/o;)V
    .registers 3

    iget-byte v0, p0, Lb/a/a;->b:B

    invoke-virtual {p1, v0}, Lb/a/o;->d(I)V

    iget-object v0, p0, Lb/a/a;->c:Lb/a/u;

    invoke-virtual {v0, p1}, Lb/a/u;->a(Lb/a/o;)V

    return-void
.end method

.method public final b()Lb/a/v;
    .registers 4

    new-instance v0, Lb/a/v;

    iget-object v1, p0, Lb/a/a;->c:Lb/a/u;

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lb/a/v;-><init>(Lb/a/u;I)V

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lb/a/a;

    iget-object v0, p0, Lb/a/a;->c:Lb/a/u;

    iget-object p1, p1, Lb/a/a;->c:Lb/a/u;

    invoke-virtual {v0, p1}, Lb/a/u;->a(Lb/a/u;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lb/a/a;->a:Lb/a/i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lb/a/a;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lb/a/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lb/a/a;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a;->a:Lb/a/i;

    invoke-virtual {v1}, Lb/a/i;->g()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lb/a/a;->c()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
