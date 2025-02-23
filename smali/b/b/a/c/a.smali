.class public final Lb/b/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/a/c/k;

.field private final b:Lb/b/f/c/b;

.field private final c:Lb/b/h/c;

.field private final d:Lb/b/a/d/j;

.field private final e:Lb/b/h/d;

.field private f:I


# direct methods
.method public constructor <init>(Lb/b/a/c/k;IILb/b/a/d/j;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/c/a;->a:Lb/b/a/c/k;

    invoke-virtual {p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/c/a;->b:Lb/b/f/c/b;

    iput-object p4, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p1

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Lb/b/h/c;->a(II)Lb/b/h/c;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/c/a;->c:Lb/b/h/c;

    iget-object p1, p0, Lb/b/a/c/a;->c:Lb/b/h/c;

    invoke-virtual {p1}, Lb/b/h/c;->b()Lb/b/h/d;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/c/a;->f:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cf == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v0}, Lb/b/h/d;->available()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lb/b/a/d/i;

    const-string v0, "truncated annotation attribute"

    invoke-direct {p1, v0}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    iget-object v1, p0, Lb/b/a/c/a;->c:Lb/b/h/c;

    iget v2, p0, Lb/b/a/c/a;->f:I

    invoke-interface {v0, v1, v2, p1, p2}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget p2, p0, Lb/b/a/c/a;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lb/b/a/c/a;->f:I

    return-void
.end method

.method private b()Lb/b/f/c/a;
    .registers 8

    iget-object v0, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v0}, Lb/b/h/d;->readUnsignedByte()I

    move-result v0

    iget-object v1, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lb/b/f/c/ad;

    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lb/b/f/c/ad;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Lb/b/a/d/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown annotation tag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0}, Lb/b/a/c/a;->c()Lb/b/f/c/a;

    move-result-object v0

    return-object v0

    :sswitch_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lb/b/a/c/a;->a(I)V

    iget-object v0, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v0}, Lb/b/h/d;->readUnsignedShort()I

    move-result v0

    iget-object v2, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v2}, Lb/b/h/d;->readUnsignedShort()I

    move-result v2

    iget-object v3, p0, Lb/b/a/c/a;->b:Lb/b/f/c/b;

    invoke-interface {v3, v0}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/ad;

    iget-object v3, p0, Lb/b/a/c/a;->b:Lb/b/f/c/b;

    invoke-interface {v3, v2}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v2

    check-cast v2, Lb/b/f/c/ad;

    iget-object v3, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type_name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "const_name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    :cond_1
    new-instance v1, Lb/b/f/c/m;

    new-instance v3, Lb/b/f/c/aa;

    invoke-direct {v3, v2, v0}, Lb/b/f/c/aa;-><init>(Lb/b/f/c/ad;Lb/b/f/c/ad;)V

    invoke-direct {v1, v3}, Lb/b/f/c/m;-><init>(Lb/b/f/c/aa;)V

    return-object v1

    :sswitch_2
    iget-object v0, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v0}, Lb/b/h/d;->readUnsignedShort()I

    move-result v0

    iget-object v2, p0, Lb/b/a/c/a;->b:Lb/b/f/c/b;

    invoke-interface {v2, v0}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/b/f/d/c;->b(Ljava/lang/String;)Lb/b/f/d/c;

    move-result-object v0

    iget-object v2, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class_info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    :cond_2
    new-instance v1, Lb/b/f/c/ae;

    invoke-direct {v1, v0}, Lb/b/f/c/ae;-><init>(Lb/b/f/d/c;)V

    return-object v1

    :sswitch_3
    invoke-direct {p0, v1}, Lb/b/a/c/a;->a(I)V

    iget-object v0, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v0}, Lb/b/h/d;->readUnsignedShort()I

    move-result v0

    new-instance v3, Lb/b/f/c/e;

    invoke-direct {v3, v0}, Lb/b/f/c/e;-><init>(I)V

    iget-object v4, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "num_values: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lb/b/a/c/a;->b(I)V

    :cond_3
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v0, :cond_5

    iget-object v6, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v6, :cond_4

    invoke-direct {p0, v5}, Lb/b/a/c/a;->b(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "element_value["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lb/b/a/c/a;->b(I)V

    :cond_4
    invoke-direct {p0}, Lb/b/a/c/a;->b()Lb/b/f/c/a;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lb/b/f/c/e;->a(ILb/b/f/c/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v0, :cond_6

    invoke-direct {p0, v5}, Lb/b/a/c/a;->b(I)V

    :cond_6
    invoke-virtual {v3}, Lb/b/f/c/e;->b_()V

    new-instance v0, Lb/b/f/c/d;

    invoke-direct {v0, v3}, Lb/b/f/c/d;-><init>(Lb/b/f/c/e;)V

    return-object v0

    :sswitch_4
    invoke-direct {p0}, Lb/b/a/c/a;->c()Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/p;

    invoke-virtual {v0}, Lb/b/f/c/p;->j()I

    move-result v0

    invoke-static {v0}, Lb/b/f/c/g;->a(I)Lb/b/f/c/g;

    move-result-object v0

    return-object v0

    :sswitch_5
    invoke-direct {p0}, Lb/b/a/c/a;->c()Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/p;

    invoke-virtual {v0}, Lb/b/f/c/p;->j()I

    move-result v0

    invoke-static {v0}, Lb/b/f/c/ac;->a(I)Lb/b/f/c/ac;

    move-result-object v0

    return-object v0

    :sswitch_6
    invoke-direct {p0}, Lb/b/a/c/a;->c()Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/w;

    return-object v0

    :sswitch_7
    invoke-direct {p0}, Lb/b/a/c/a;->c()Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/p;

    return-object v0

    :sswitch_8
    invoke-direct {p0}, Lb/b/a/c/a;->c()Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/o;

    return-object v0

    :sswitch_9
    invoke-direct {p0}, Lb/b/a/c/a;->c()Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/l;

    return-object v0

    :sswitch_a
    invoke-direct {p0}, Lb/b/a/c/a;->c()Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/p;

    invoke-virtual {v0}, Lb/b/f/c/p;->j()I

    move-result v0

    invoke-static {v0}, Lb/b/f/c/k;->a(I)Lb/b/f/c/k;

    move-result-object v0

    return-object v0

    :sswitch_b
    invoke-direct {p0}, Lb/b/a/c/a;->c()Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/p;

    invoke-virtual {v0}, Lb/b/f/c/p;->j()I

    move-result v0

    invoke-static {v0}, Lb/b/f/c/h;->a(I)Lb/b/f/c/h;

    move-result-object v0

    return-object v0

    :sswitch_c
    sget-object v0, Lb/b/f/a/b;->d:Lb/b/f/a/b;

    invoke-direct {p0, v0}, Lb/b/a/c/a;->d(Lb/b/f/a/b;)Lb/b/f/a/a;

    move-result-object v0

    new-instance v1, Lb/b/f/c/c;

    invoke-direct {v1, v0}, Lb/b/f/c/c;-><init>(Lb/b/f/a/a;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_c
        0x42 -> :sswitch_b
        0x43 -> :sswitch_a
        0x44 -> :sswitch_9
        0x46 -> :sswitch_8
        0x49 -> :sswitch_7
        0x4a -> :sswitch_6
        0x53 -> :sswitch_5
        0x5a -> :sswitch_4
        0x5b -> :sswitch_3
        0x63 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(I)V
    .registers 3

    iget-object v0, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    invoke-interface {v0, p1}, Lb/b/a/d/j;->a(I)V

    return-void
.end method

.method private c(Lb/b/f/a/b;)Lb/b/f/a/c;
    .registers 8

    iget-object v0, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v0}, Lb/b/h/d;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "num_annotations: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    :cond_0
    new-instance v1, Lb/b/f/a/c;

    invoke-direct {v1}, Lb/b/f/a/c;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "annotations["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lb/b/a/c/a;->b(I)V

    :cond_1
    invoke-direct {p0, p1}, Lb/b/a/c/a;->d(Lb/b/f/a/b;)Lb/b/f/a/a;

    move-result-object v4

    invoke-virtual {v1, v4}, Lb/b/f/a/c;->a(Lb/b/f/a/a;)V

    iget-object v4, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lb/b/a/d/j;->a(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lb/b/f/a/c;->b_()V

    return-object v1
.end method

.method private c()Lb/b/f/c/a;
    .registers 6

    iget-object v0, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v0}, Lb/b/h/d;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lb/b/a/c/a;->b:Lb/b/f/c/b;

    invoke-interface {v1, v0}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lb/b/f/c/ad;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lb/b/f/c/ad;

    invoke-virtual {v1}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "constant_value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private d(Lb/b/f/a/b;)Lb/b/f/a/a;
    .registers 10

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lb/b/a/c/a;->a(I)V

    iget-object v0, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v0}, Lb/b/h/d;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v1}, Lb/b/h/d;->readUnsignedShort()I

    move-result v1

    iget-object v2, p0, Lb/b/a/c/a;->b:Lb/b/f/c/b;

    invoke-interface {v2, v0}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v0

    check-cast v0, Lb/b/f/c/ad;

    new-instance v2, Lb/b/f/c/ae;

    invoke-virtual {v0}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/b/f/d/c;->a(Ljava/lang/String;)Lb/b/f/d/c;

    move-result-object v0

    invoke-direct {v2, v0}, Lb/b/f/c/ae;-><init>(Lb/b/f/d/c;)V

    iget-object v0, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "type: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "num_elements: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    :cond_0
    new-instance v0, Lb/b/f/a/a;

    invoke-direct {v0, v2, p1}, Lb/b/f/a/a;-><init>(Lb/b/f/c/ae;Lb/b/f/a/b;)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v4, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "elements["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    invoke-direct {p0, v5}, Lb/b/a/c/a;->b(I)V

    :cond_1
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lb/b/a/c/a;->a(I)V

    iget-object v4, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v4}, Lb/b/h/d;->readUnsignedShort()I

    move-result v4

    iget-object v6, p0, Lb/b/a/c/a;->b:Lb/b/f/c/b;

    invoke-interface {v6, v4}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v4

    check-cast v4, Lb/b/f/c/ad;

    iget-object v6, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "element_name: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    const-string v6, "value: "

    invoke-direct {p0, p1, v6}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    invoke-direct {p0, v5}, Lb/b/a/c/a;->b(I)V

    :cond_2
    invoke-direct {p0}, Lb/b/a/c/a;->b()Lb/b/f/c/a;

    move-result-object v5

    iget-object v6, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    invoke-direct {p0, v7}, Lb/b/a/c/a;->b(I)V

    :cond_3
    new-instance v6, Lb/b/f/a/e;

    invoke-direct {v6, v4, v5}, Lb/b/f/a/e;-><init>(Lb/b/f/c/ad;Lb/b/f/c/a;)V

    invoke-virtual {v0, v6}, Lb/b/f/a/a;->b(Lb/b/f/a/e;)V

    iget-object v4, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v4, :cond_4

    invoke-direct {p0, v7}, Lb/b/a/c/a;->b(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lb/b/f/a/a;->b_()V

    return-object v0
.end method


# virtual methods
.method public final a(Lb/b/f/a/b;)Lb/b/f/a/d;
    .registers 9

    :try_start_0
    iget-object v0, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v0}, Lb/b/h/d;->readUnsignedByte()I

    move-result v0

    iget-object v1, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "num_parameters: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    :cond_0
    new-instance v1, Lb/b/f/a/d;

    invoke-direct {v1, v0}, Lb/b/f/a/d;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "parameter_annotations["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lb/b/a/c/a;->a(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lb/b/a/c/a;->b(I)V

    :cond_1
    invoke-direct {p0, p1}, Lb/b/a/c/a;->c(Lb/b/f/a/b;)Lb/b/f/a/c;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lb/b/f/a/d;->a(ILb/b/f/a/c;)V

    iget-object v5, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lb/b/a/c/a;->d:Lb/b/a/d/j;

    const/4 v6, -0x1

    invoke-interface {v5, v6}, Lb/b/a/d/j;->a(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lb/b/f/a/d;->b_()V

    iget-object p1, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {p1}, Lb/b/h/d;->available()I

    move-result p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    new-instance p1, Lb/b/a/d/i;

    const-string v0, "extra data in attribute"

    invoke-direct {p1, v0}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a()Lb/b/f/c/a;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lb/b/a/c/a;->b()Lb/b/f/c/a;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v1}, Lb/b/h/d;->available()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lb/b/a/d/i;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Lb/b/f/a/b;)Lb/b/f/a/c;
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lb/b/a/c/a;->c(Lb/b/f/a/b;)Lb/b/f/a/c;

    move-result-object p1

    iget-object v0, p0, Lb/b/a/c/a;->e:Lb/b/h/d;

    invoke-virtual {v0}, Lb/b/h/d;->available()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lb/b/a/d/i;

    const-string v0, "extra data in attribute"

    invoke-direct {p1, v0}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
