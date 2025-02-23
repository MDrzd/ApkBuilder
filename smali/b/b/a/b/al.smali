.class final Lb/b/a/b/al;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/b/m;


# instance fields
.field private final a:Lb/b/a/b/w;

.field private b:Lb/b/a/b/p;

.field private c:I

.field private synthetic d:Lb/b/a/b/ak;


# direct methods
.method public constructor <init>(Lb/b/a/b/ak;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/b/al;->d:Lb/b/a/b/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lb/b/a/b/ak;->a(Lb/b/a/b/ak;)Lb/b/a/b/w;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    return-void
.end method

.method private a(Lb/b/f/d/c;)V
    .registers 6

    iget-object v0, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {v0}, Lb/b/a/b/w;->a()Lb/b/f/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/a;->b()Lb/b/f/d/c;

    move-result-object v0

    invoke-static {v0, p1}, La/a/a;->b(Lb/b/f/d/d;Lb/b/f/d/d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/a/b/al;->d:Lb/b/a/b/ak;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return type mismatch: prototype indicates "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but encountered type "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lb/b/a/b/ak;->a(Lb/b/a/b/ak;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/a/b/al;->c:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lb/b/a/b/al;->c:I

    return-void
.end method

.method public final a(III)V
    .registers 5

    new-instance p2, Lb/b/a/b/aj;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "invalid opcode "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(IIII)V
    .registers 7

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0, p1, p2, p3}, Lb/b/a/b/al;->a(III)V

    return-void

    :pswitch_0
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    goto :goto_1

    :pswitch_1
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3}, Lb/b/a/b/w;->b()V

    goto :goto_2

    :pswitch_2
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    goto :goto_0

    :pswitch_3
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    :goto_0
    invoke-interface {p3, v0, v1, v1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;Lb/b/f/d/c;)V

    goto :goto_2

    :pswitch_4
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    :goto_1
    invoke-interface {p3, v0, v1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;)V

    :goto_2
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, p4}, Lb/b/a/b/w;->b(I)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object p4, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, p4, p2, p1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(IIIILb/b/f/d/c;I)V
    .registers 13

    const/16 v0, 0x36

    if-ne p1, v0, :cond_0

    add-int v1, p2, p3

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iget-object v2, p0, Lb/b/a/b/al;->d:Lb/b/a/b/ak;

    invoke-static {v2}, Lb/b/a/b/ak;->b(Lb/b/a/b/ak;)Lb/b/a/b/s;

    move-result-object v2

    invoke-virtual {v2, v1, p4}, Lb/b/a/b/s;->a(II)Lb/b/a/b/t;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lb/b/a/b/t;->b()Lb/b/f/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/d/c;->d()I

    move-result v4

    invoke-virtual {p5}, Lb/b/f/d/c;->d()I

    move-result v5

    if-eq v4, v5, :cond_2

    move-object v1, v2

    :cond_1
    move-object v3, p5

    :cond_2
    const/16 v4, 0x15

    if-eq p1, v4, :cond_7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x84

    if-eq p1, v0, :cond_3

    const/16 p6, 0xa9

    if-eq p1, p6, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lb/b/a/b/al;->a(III)V

    return-void

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lb/b/a/b/t;->a()Lb/b/f/b/n;

    move-result-object v2

    :goto_1
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v0, p4}, Lb/b/a/b/w;->b(Lb/b/a/b/p;I)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, p4, v3, v2}, Lb/b/a/b/w;->a(ILb/b/f/d/c;Lb/b/f/b/n;)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, p5}, Lb/b/a/b/w;->a(Lb/b/f/d/c;)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, p6}, Lb/b/a/b/w;->a(I)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-static {p6}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object p4

    invoke-interface {p3, p4}, Lb/b/a/b/w;->a(Lb/b/f/c/a;)V

    goto :goto_4

    :cond_5
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lb/b/a/b/t;->a()Lb/b/f/b/n;

    move-result-object v2

    :goto_2
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object p6, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, p6, p5}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, p5}, Lb/b/a/b/w;->a(Lb/b/f/d/c;)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, p4, v3, v2}, Lb/b/a/b/w;->a(ILb/b/f/d/c;Lb/b/f/b/n;)V

    goto :goto_4

    :cond_7
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object p6, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, p6, p4}, Lb/b/a/b/w;->b(Lb/b/a/b/p;I)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    if-eqz v1, :cond_8

    const/4 p4, 0x1

    goto :goto_3

    :cond_8
    const/4 p4, 0x0

    :goto_3
    invoke-interface {p3, p4}, Lb/b/a/b/w;->a(Z)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, p5}, Lb/b/a/b/w;->a(Lb/b/f/d/c;)V

    :goto_4
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object p4, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, p4, p2, p1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;II)V

    return-void
.end method

.method public final a(IIILb/b/a/b/am;I)V
    .registers 7

    iget-object p1, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v0, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    invoke-interface {p1, p3, v0}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;)V

    iget-object p1, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p1, p5}, Lb/b/a/b/w;->a(I)V

    iget-object p1, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p1, p4}, Lb/b/a/b/w;->a(Lb/b/a/b/am;)V

    iget-object p1, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    const/16 p4, 0xab

    invoke-interface {p1, p3, p2, p4}, Lb/b/a/b/w;->a(Lb/b/a/b/p;II)V

    return-void
.end method

.method public final a(IIILb/b/f/c/a;I)V
    .registers 9

    const/16 p3, 0xbd

    if-eq p1, p3, :cond_6

    const/16 p3, 0xc5

    if-eq p1, p3, :cond_5

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    :cond_0
    :goto_0
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3}, Lb/b/a/b/w;->b()V

    goto/16 :goto_4

    :pswitch_0
    iget-object p3, p0, Lb/b/a/b/al;->d:Lb/b/a/b/ak;

    invoke-static {p3, p1}, Lb/b/a/b/ak;->b(Lb/b/a/b/ak;I)V

    check-cast p4, Lb/b/f/c/r;

    invoke-virtual {p4}, Lb/b/f/c/r;->e()Lb/b/f/d/a;

    move-result-object p3

    iget-object v0, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v1, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {v0, v1, p3}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/a;)V

    invoke-virtual {p4}, Lb/b/f/c/r;->a()Lb/b/f/c/j;

    move-result-object p4

    goto/16 :goto_4

    :pswitch_1
    instance-of p3, p4, Lb/b/f/c/q;

    if-eqz p3, :cond_1

    check-cast p4, Lb/b/f/c/q;

    invoke-virtual {p4}, Lb/b/f/c/q;->k()Lb/b/f/c/z;

    move-result-object p4

    iget-object p3, p0, Lb/b/a/b/al;->d:Lb/b/a/b/ak;

    move-object v0, p4

    check-cast v0, Lb/b/f/c/z;

    invoke-static {p3, p1, v0}, Lb/b/a/b/ak;->a(Lb/b/a/b/ak;ILb/b/f/c/z;)V

    :cond_1
    instance-of p3, p4, Lb/b/f/c/z;

    if-eqz p3, :cond_2

    move-object p3, p4

    check-cast p3, Lb/b/f/c/z;

    invoke-virtual {p3}, Lb/b/f/c/z;->j()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lb/b/a/b/al;->d:Lb/b/a/b/ak;

    invoke-static {p3, p1}, Lb/b/a/b/ak;->a(Lb/b/a/b/ak;I)V

    :cond_2
    const/16 p3, 0xb8

    if-ne p1, p3, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    move-object v0, p4

    check-cast v0, Lb/b/f/c/z;

    invoke-virtual {v0, p3}, Lb/b/f/c/z;->a(Z)Lb/b/f/d/a;

    move-result-object p3

    :goto_2
    iget-object v0, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v1, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {v0, v1, p3}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/a;)V

    goto :goto_4

    :pswitch_2
    move-object p3, p4

    check-cast p3, Lb/b/f/c/n;

    invoke-virtual {p3}, Lb/b/f/c/n;->a()Lb/b/f/d/c;

    move-result-object p3

    iget-object v0, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v1, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v2, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    invoke-interface {v0, v1, v2, p3}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;Lb/b/f/d/c;)V

    goto :goto_4

    :pswitch_3
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    :goto_3
    invoke-interface {p3, v0, v1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;)V

    goto :goto_4

    :pswitch_4
    move-object p3, p4

    check-cast p3, Lb/b/f/c/n;

    invoke-virtual {p3}, Lb/b/f/c/n;->a()Lb/b/f/d/c;

    move-result-object p3

    iget-object v0, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v1, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {v0, v1, p3}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;)V

    goto :goto_4

    :pswitch_5
    instance-of p3, p4, Lb/b/f/c/y;

    if-nez p3, :cond_4

    instance-of p3, p4, Lb/b/f/c/ab;

    if-eqz p3, :cond_0

    :cond_4
    iget-object p3, p0, Lb/b/a/b/al;->d:Lb/b/a/b/ak;

    invoke-static {p3, p4}, Lb/b/a/b/ak;->a(Lb/b/a/b/ak;Lb/b/f/c/a;)V

    goto/16 :goto_0

    :cond_5
    sget-object p3, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    invoke-static {p3, p5}, Lb/b/f/d/a;->a(Lb/b/f/d/c;I)Lb/b/f/d/a;

    move-result-object p3

    goto :goto_2

    :cond_6
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    goto :goto_3

    :goto_4
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, p5}, Lb/b/a/b/w;->a(I)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, p4}, Lb/b/a/b/w;->a(Lb/b/f/c/a;)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object p4, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, p4, p2, p1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(IIILb/b/f/d/c;)V
    .registers 13

    const v0, 0x32132

    const/16 v1, 0x3213

    const/16 v2, 0x11

    const/16 v3, 0x212

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lb/b/a/b/al;->a(III)V

    return-void

    :sswitch_0
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3}, Lb/b/a/b/w;->b()V

    sget-object p3, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    :goto_0
    invoke-direct {p0, p3}, Lb/b/a/b/al;->a(Lb/b/f/d/c;)V

    goto/16 :goto_d

    :sswitch_1
    sget-object p3, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    if-ne p4, p3, :cond_0

    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v5}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    goto :goto_1

    :cond_0
    move-object p3, p4

    :goto_1
    iget-object v0, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v1, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {v0, v1, p4}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;)V

    goto :goto_0

    :sswitch_2
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    invoke-interface {p3, v0, p4, v1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;Lb/b/f/d/c;)V

    goto/16 :goto_d

    :sswitch_3
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v0, p4}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;)V

    goto/16 :goto_d

    :sswitch_4
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p4}, Lb/b/f/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x2

    :cond_1
    invoke-virtual {p3, v4}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {p3, v4}, Lb/b/a/b/o;->b(I)Z

    move-result p3

    invoke-static {p4, v0}, Lb/b/a/b/ak;->a(Lb/b/f/d/c;Lb/b/f/d/c;)Lb/b/f/d/c;

    move-result-object v0

    if-eqz p3, :cond_3

    sget-object p3, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    if-ne v0, p3, :cond_2

    sget-object p3, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lb/b/f/d/c;->s()Lb/b/f/d/c;

    move-result-object p3

    :goto_2
    move-object p4, p3

    :cond_3
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v1, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v2, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    invoke-interface {p3, v1, v0, v2, p4}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;Lb/b/f/d/c;Lb/b/f/d/c;)V

    goto/16 :goto_d

    :sswitch_5
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v6}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-static {p4, p3}, Lb/b/a/b/ak;->a(Lb/b/f/d/c;Lb/b/f/d/c;)Lb/b/f/d/c;

    move-result-object p3

    sget-object p4, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    if-ne p3, p4, :cond_4

    sget-object p4, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Lb/b/f/d/c;->s()Lb/b/f/d/c;

    move-result-object p4

    :goto_3
    iget-object v0, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v1, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v2, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    invoke-interface {v0, v1, p3, v2}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;Lb/b/f/d/c;)V

    goto/16 :goto_d

    :sswitch_6
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3}, Lb/b/a/b/w;->b()V

    goto/16 :goto_d

    :cond_5
    :goto_4
    :pswitch_0
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    goto :goto_6

    :pswitch_1
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v5}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->o()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    invoke-virtual {p3, v0}, Lb/b/f/d/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v5, 0x1

    :cond_7
    if-nez v5, :cond_5

    iget-object v0, p0, Lb/b/a/b/al;->d:Lb/b/a/b/ak;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type mismatch: expected array type but encountered "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lb/b/a/b/ak;->a(Lb/b/a/b/ak;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_2
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    goto :goto_5

    :pswitch_3
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    goto :goto_5

    :pswitch_4
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    :goto_5
    invoke-interface {p3, v0, v1, v1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;Lb/b/f/d/c;)V

    goto/16 :goto_d

    :pswitch_5
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    goto :goto_6

    :pswitch_6
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    goto :goto_6

    :pswitch_7
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    goto :goto_6

    :pswitch_8
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    :goto_6
    invoke-interface {p3, v0, v1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;)V

    goto/16 :goto_d

    :pswitch_9
    :sswitch_7
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v0, p4, p4}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;Lb/b/f/d/c;)V

    goto/16 :goto_d

    :pswitch_a
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v5}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p3, v6}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->j()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v0, v7}, Lb/b/a/b/w;->a(Lb/b/a/b/p;I)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    const/16 v0, 0x12

    :goto_7
    invoke-interface {p3, v0}, Lb/b/a/b/w;->a(I)V

    goto/16 :goto_d

    :cond_8
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :pswitch_b
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v5}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/d/c;->k()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p3, v7}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_a

    :cond_9
    invoke-virtual {p3, v4}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->j()Z

    move-result p3

    if-eqz p3, :cond_a

    goto/16 :goto_9

    :cond_a
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :cond_b
    invoke-virtual {p3, v6}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/d/c;->j()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p3, v7}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/d/c;->k()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p3, v4}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->j()Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    const/4 v1, 0x4

    invoke-interface {p3, v0, v1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;I)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    const v0, 0x432143

    goto :goto_7

    :cond_d
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :cond_e
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :pswitch_c
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v5}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/d/c;->k()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p3, v7}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->k()Z

    move-result p3

    if-nez p3, :cond_f

    goto/16 :goto_a

    :cond_f
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :cond_10
    invoke-virtual {p3, v6}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/d/c;->k()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p3, v7}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->k()Z

    move-result p3

    if-nez p3, :cond_11

    :goto_8
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v1, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v1, v4}, Lb/b/a/b/w;->a(Lb/b/a/b/p;I)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    goto/16 :goto_7

    :cond_11
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :pswitch_d
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v5}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->k()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p3, v6}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {p3, v7}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->j()Z

    move-result p3

    if-eqz p3, :cond_13

    :goto_9
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v0, v4}, Lb/b/a/b/w;->a(Lb/b/a/b/p;I)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, v1}, Lb/b/a/b/w;->a(I)V

    goto/16 :goto_d

    :cond_13
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :cond_14
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :pswitch_e
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v5}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p3, v6}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->j()Z

    move-result p3

    if-eqz p3, :cond_15

    :goto_a
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v0, v7}, Lb/b/a/b/w;->a(Lb/b/a/b/p;I)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, v3}, Lb/b/a/b/w;->a(I)V

    goto/16 :goto_d

    :cond_15
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :pswitch_f
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v5}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->k()Z

    move-result p3

    if-nez p3, :cond_16

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v0, v6}, Lb/b/a/b/w;->a(Lb/b/a/b/p;I)V

    :goto_b
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, v2}, Lb/b/a/b/w;->a(I)V

    goto :goto_d

    :cond_16
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :pswitch_10
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v5}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->k()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v0, v6}, Lb/b/a/b/w;->a(Lb/b/a/b/p;I)V

    goto :goto_c

    :cond_17
    invoke-virtual {p3, v6}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->j()Z

    move-result p3

    if-eqz p3, :cond_18

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v0, v7}, Lb/b/a/b/w;->a(Lb/b/a/b/p;I)V

    const/16 v2, 0x2121

    :goto_c
    const/16 p3, 0x5c

    if-ne p1, p3, :cond_19

    goto :goto_b

    :cond_18
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    :pswitch_11
    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-virtual {p3}, Lb/b/a/b/p;->d()Lb/b/a/b/o;

    move-result-object p3

    invoke-virtual {p3, v5}, Lb/b/a/b/o;->c(I)Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/d/c;->k()Z

    move-result p3

    if-nez p3, :cond_1a

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, v0, v6}, Lb/b/a/b/w;->a(Lb/b/a/b/p;I)V

    :cond_19
    :goto_d
    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p3, p4}, Lb/b/a/b/w;->a(Lb/b/f/d/c;)V

    iget-object p3, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object p4, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    invoke-interface {p3, p4, p2, p1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;II)V

    return-void

    :cond_1a
    invoke-static {}, Lb/b/a/b/ak;->a()Lb/b/a/b/aj;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x85
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x2e -> :sswitch_5
        0x4f -> :sswitch_4
        0x64 -> :sswitch_7
        0x68 -> :sswitch_7
        0x6c -> :sswitch_7
        0x70 -> :sswitch_7
        0x74 -> :sswitch_3
        0x78 -> :sswitch_2
        0x7a -> :sswitch_2
        0x7c -> :sswitch_2
        0x7e -> :sswitch_7
        0x80 -> :sswitch_7
        0x82 -> :sswitch_7
        0xac -> :sswitch_1
        0xb1 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(IILb/b/f/c/ae;Ljava/util/ArrayList;)V
    .registers 7

    iget-object p2, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object v0, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    sget-object v1, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    invoke-interface {p2, v0, v1}, Lb/b/a/b/w;->a(Lb/b/a/b/p;Lb/b/f/d/c;)V

    iget-object p2, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p2, p4}, Lb/b/a/b/w;->a(Ljava/util/ArrayList;)V

    iget-object p2, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    invoke-interface {p2, p3}, Lb/b/a/b/w;->a(Lb/b/f/c/a;)V

    iget-object p2, p0, Lb/b/a/b/al;->a:Lb/b/a/b/w;

    iget-object p3, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    const/16 p4, 0xbc

    invoke-interface {p2, p3, p1, p4}, Lb/b/a/b/w;->a(Lb/b/a/b/p;II)V

    return-void
.end method

.method public final a(Lb/b/a/b/p;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/b/al;->b:Lb/b/a/b/p;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "frame == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
