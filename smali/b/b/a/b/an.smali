.class public Lb/b/a/b/an;
.super Lb/b/a/b/a;


# direct methods
.method public constructor <init>(Lb/b/f/d/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/a/b/a;-><init>(Lb/b/f/d/a;)V

    return-void
.end method


# virtual methods
.method public a(Lb/b/a/b/p;II)V
    .registers 5

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    packed-switch p3, :pswitch_data_3

    packed-switch p3, :pswitch_data_4

    packed-switch p3, :pswitch_data_5

    sparse-switch p3, :sswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "shouldn\'t happen: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p2, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lb/b/a/b/an;->f()Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/ae;

    invoke-virtual {p2}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->r()Lb/b/f/d/c;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lb/b/a/b/an;->f()Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/ae;

    invoke-virtual {p2}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lb/b/a/b/an;->f()Lb/b/f/c/a;

    move-result-object p3

    check-cast p3, Lb/b/f/c/ae;

    invoke-virtual {p3}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object p3

    invoke-virtual {p3, p2}, Lb/b/f/d/c;->a(I)Lb/b/f/d/c;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lb/b/a/b/an;->f()Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/c/j;

    invoke-virtual {p2}, Lb/b/f/c/j;->b()Lb/b/f/d/c;

    move-result-object p2

    sget-object p3, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    if-ne p2, p3, :cond_1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v0}, Lb/b/a/b/an;->c(I)Lb/b/f/d/d;

    move-result-object p2

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->p()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Lb/b/a/b/p;->a(Lb/b/f/d/c;)V

    :cond_0
    invoke-virtual {p0}, Lb/b/a/b/an;->f()Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/d/d;

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p2

    sget-object p3, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    if-ne p2, p3, :cond_1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lb/b/a/b/an;->f()Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/d/d;

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p2

    sget-object p3, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    if-ne p2, p3, :cond_1

    goto :goto_1

    :pswitch_7
    new-instance p2, Lb/b/a/b/y;

    invoke-virtual {p0}, Lb/b/a/b/an;->g()I

    move-result p3

    invoke-direct {p2, p3}, Lb/b/a/b/y;-><init>(I)V

    goto :goto_2

    :pswitch_8
    :sswitch_0
    invoke-virtual {p0}, Lb/b/a/b/an;->d()Lb/b/f/d/c;

    move-result-object p2

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0}, Lb/b/a/b/an;->k()V

    invoke-virtual {p0}, Lb/b/a/b/an;->e()I

    move-result p2

    :goto_0
    if-eqz p2, :cond_2

    and-int/lit8 p3, p2, 0xf

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lb/b/a/b/an;->c(I)Lb/b/f/d/d;

    move-result-object p3

    invoke-virtual {p0, p3}, Lb/b/a/b/an;->b(Lb/b/f/d/d;)V

    shr-int/lit8 p2, p2, 0x4

    goto :goto_0

    :goto_1
    :pswitch_a
    :sswitch_1
    invoke-virtual {p0}, Lb/b/a/b/an;->k()V

    goto :goto_3

    :pswitch_b
    :sswitch_2
    invoke-virtual {p0, v0}, Lb/b/a/b/an;->c(I)Lb/b/f/d/d;

    move-result-object p2

    goto :goto_2

    :pswitch_c
    :sswitch_3
    invoke-virtual {p0}, Lb/b/a/b/an;->f()Lb/b/f/c/a;

    move-result-object p2

    check-cast p2, Lb/b/f/d/d;

    :cond_1
    :goto_2
    invoke-virtual {p0, p2}, Lb/b/a/b/an;->a(Lb/b/f/d/d;)V

    :cond_2
    :goto_3
    invoke-virtual {p0, p1}, Lb/b/a/b/an;->a(Lb/b/a/b/p;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xab
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb1
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc5
        :pswitch_2
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x12 -> :sswitch_3
        0x2e -> :sswitch_0
        0x36 -> :sswitch_2
        0x4f -> :sswitch_1
        0x64 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x70 -> :sswitch_0
        0x74 -> :sswitch_0
        0x78 -> :sswitch_0
        0x7a -> :sswitch_0
        0x7c -> :sswitch_0
        0x7e -> :sswitch_0
        0x80 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method
