.class public final Lb/b/c/c/a;
.super Lb/b/c/c/av;


# static fields
.field private static final a:Lb/b/c/c/c;


# instance fields
.field private final b:Lb/b/f/a/a;

.field private c:Lb/b/c/c/bf;

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/c/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/c/c/c;-><init>(B)V

    sput-object v0, Lb/b/c/c/a;->a:Lb/b/c/c/c;

    return-void
.end method

.method public constructor <init>(Lb/b/f/a/a;Lb/b/c/c/u;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lb/b/c/c/av;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/c/a;->c:Lb/b/c/c/bf;

    iput-object p1, p0, Lb/b/c/c/a;->d:[B

    invoke-virtual {p0, p2}, Lb/b/c/c/a;->a(Lb/b/c/c/u;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotation == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lb/b/c/c/a;)Lb/b/c/c/bf;
    .registers 1

    iget-object p0, p0, Lb/b/c/c/a;->c:Lb/b/c/c/bf;

    return-object p0
.end method

.method public static a([Lb/b/c/c/a;)V
    .registers 2

    sget-object v0, Lb/b/c/c/a;->a:Lb/b/c/c/c;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method protected final a(Lb/b/c/c/av;)I
    .registers 3

    check-cast p1, Lb/b/c/c/a;

    iget-object v0, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    iget-object p1, p1, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    invoke-virtual {v0, p1}, Lb/b/f/a/a;->a(Lb/b/f/a/a;)I

    move-result p1

    return p1
.end method

.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->r:Lb/b/c/c/ai;

    return-object v0
.end method

.method protected final a(Lb/b/c/c/az;I)V
    .registers 5

    new-instance p2, Lb/b/h/f;

    invoke-direct {p2}, Lb/b/h/f;-><init>()V

    new-instance v0, Lb/b/c/c/bk;

    invoke-virtual {p1}, Lb/b/c/c/az;->e()Lb/b/c/c/u;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lb/b/c/c/bk;-><init>(Lb/b/c/c/u;Lb/b/h/r;)V

    iget-object p1, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lb/b/c/c/bk;->a(Lb/b/f/a/a;Z)V

    invoke-virtual {p2}, Lb/b/h/f;->b()[B

    move-result-object p1

    iput-object p1, p0, Lb/b/c/c/a;->d:[B

    iget-object p1, p0, Lb/b/c/c/a;->d:[B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lb/b/c/c/a;->a(I)V

    return-void
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    invoke-virtual {v1}, Lb/b/f/a/a;->f()Lb/b/f/c/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/c/c/bg;->a(Lb/b/f/c/ae;)Lb/b/c/c/bf;

    move-result-object v0

    iput-object v0, p0, Lb/b/c/c/a;->c:Lb/b/c/c/bf;

    iget-object v0, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    invoke-static {p1, v0}, Lb/b/c/c/bk;->a(Lb/b/c/c/u;Lb/b/f/a/a;)V

    return-void
.end method

.method public final a(Lb/b/h/r;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    invoke-virtual {v1}, Lb/b/f/a/a;->g()Lb/b/f/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/a/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    invoke-virtual {v2}, Lb/b/f/a/a;->f()Lb/b/f/c/ae;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    invoke-virtual {v0}, Lb/b/f/a/a;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/e;

    invoke-virtual {v2}, Lb/b/f/a/e;->a()Lb/b/f/c/ad;

    move-result-object v3

    invoke-virtual {v2}, Lb/b/f/a/e;->b()Lb/b/f/c/a;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb/b/c/c/bk;->a(Lb/b/f/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lb/b/h/r;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 9

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v0

    iget-object v1, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    invoke-virtual {v1}, Lb/b/f/a/a;->g()Lb/b/f/a/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  visibility: VISBILITY_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    sget-object v4, Lb/b/c/c/b;->a:[I

    invoke-virtual {v1}, Lb/b/f/a/b;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lb/b/h/r;->d(I)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p2, v3}, Lb/b/h/r;->d(I)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p2, v2}, Lb/b/h/r;->d(I)V

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lb/b/c/c/bk;

    invoke-direct {v0, p1, p2}, Lb/b/c/c/bk;-><init>(Lb/b/c/c/u;Lb/b/h/r;)V

    iget-object p1, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    invoke-virtual {v0, p1, v3}, Lb/b/c/c/bk;->a(Lb/b/f/a/a;Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lb/b/c/c/a;->d:[B

    invoke-interface {p2, p1}, Lb/b/h/r;->a([B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    invoke-virtual {v0}, Lb/b/f/a/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/c/c/a;->b:Lb/b/f/a/a;

    invoke-virtual {v0}, Lb/b/f/a/a;->hashCode()I

    move-result v0

    return v0
.end method
