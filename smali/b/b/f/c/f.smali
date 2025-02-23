.class public abstract Lb/b/f/c/f;
.super Lb/b/f/c/x;


# instance fields
.field private final a:Lb/b/f/d/a;

.field private b:Lb/b/f/d/a;


# direct methods
.method constructor <init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/f/c/x;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    invoke-virtual {p0}, Lb/b/f/c/f;->m()Lb/b/f/c/aa;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/aa;->b()Lb/b/f/c/ad;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lb/b/f/c/f;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lb/b/f/d/a;->b(Ljava/lang/String;)Lb/b/f/d/a;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lb/b/f/c/f;->a:Lb/b/f/d/a;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lb/b/f/d/a;->a(Ljava/lang/String;)Lb/b/f/d/a;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/f/c/f;->b:Lb/b/f/d/a;

    return-void
.end method


# virtual methods
.method public final a(Z)Lb/b/f/d/a;
    .registers 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/f/c/f;->a:Lb/b/f/d/a;

    return-object p1

    :cond_0
    iget-object p1, p0, Lb/b/f/c/f;->b:Lb/b/f/d/a;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lb/b/f/c/f;->l()Lb/b/f/c/ae;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object p1

    iget-object v0, p0, Lb/b/f/c/f;->a:Lb/b/f/d/a;

    invoke-virtual {v0, p1}, Lb/b/f/d/a;->a(Lb/b/f/d/c;)Lb/b/f/d/a;

    move-result-object p1

    iput-object p1, p0, Lb/b/f/c/f;->b:Lb/b/f/d/a;

    :cond_1
    iget-object p1, p0, Lb/b/f/c/f;->b:Lb/b/f/d/a;

    return-object p1
.end method

.method public final a()Lb/b/f/d/c;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/f;->a:Lb/b/f/d/a;

    invoke-virtual {v0}, Lb/b/f/d/a;->b()Lb/b/f/d/c;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lb/b/f/c/a;)I
    .registers 3

    invoke-super {p0, p1}, Lb/b/f/c/x;->b(Lb/b/f/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lb/b/f/c/f;

    iget-object v0, p0, Lb/b/f/c/f;->a:Lb/b/f/d/a;

    iget-object p1, p1, Lb/b/f/c/f;->a:Lb/b/f/d/a;

    invoke-virtual {v0, p1}, Lb/b/f/d/a;->a(Lb/b/f/d/a;)I

    move-result p1

    return p1
.end method

.method public final b(Z)I
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/f/c/f;->a(Z)Lb/b/f/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/d/b;->f()I

    move-result p1

    return p1
.end method

.method public final i()Lb/b/f/d/a;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/f;->a:Lb/b/f/d/a;

    return-object v0
.end method

.method public final j()Z
    .registers 7

    invoke-virtual {p0}, Lb/b/f/c/f;->l()Lb/b/f/c/ae;

    move-result-object v0

    sget-object v1, Lb/b/f/c/ae;->j:Lb/b/f/c/ae;

    invoke-virtual {v0, v1}, Lb/b/f/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lb/b/f/c/f;->m()Lb/b/f/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/aa;->a()Lb/b/f/c/ad;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v5, -0x468dbb88

    if-eq v1, v5, :cond_1

    const v5, 0x38222167

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "invokeExact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "invoke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    return v4

    :cond_3
    sget-object v1, Lb/b/f/c/ae;->k:Lb/b/f/c/ae;

    invoke-virtual {v0, v1}, Lb/b/f/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lb/b/f/c/f;->m()Lb/b/f/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/aa;->a()Lb/b/f/c/ad;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "weakCompareAndSetRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "getAndSetAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "compareAndExchange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "getAndBitwiseOr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "getAndBitwiseXorAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "getAndAddAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "compareAndExchangeAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "getOpaque"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "setOpaque"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "getAndBitwiseAndAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "getAndSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "getAndAdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "getVolatile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "setVolatile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "getAndBitwiseOrAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "getAndSetRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "getAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "setRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "weakCompareAndSetAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "weakCompareAndSetPlain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x1d

    goto :goto_1

    :sswitch_16
    const-string v1, "getAndBitwiseXorRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_17
    const-string v1, "getAndBitwiseXor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_18
    const-string v1, "getAndBitwiseAnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_19
    const-string v1, "getAndAddRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_1a
    const-string v1, "weakCompareAndSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x1b

    goto :goto_1

    :sswitch_1b
    const-string v1, "compareAndExchangeRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1c
    const-string v1, "compareAndSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1d
    const-string v1, "getAndBitwiseAndRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_1e
    const-string v1, "getAndBitwiseOrRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xe

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return v4

    :cond_5
    :goto_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x74054ecc -> :sswitch_1e
        -0x64896c60 -> :sswitch_1d
        -0x639aefb0 -> :sswitch_1c
        -0x4d038cae -> :sswitch_1b
        -0x42a27c48 -> :sswitch_1a
        -0x41bf8e59 -> :sswitch_19
        -0x3d910599 -> :sswitch_18
        -0x3d90af15 -> :sswitch_17
        -0x2f5b5f64 -> :sswitch_16
        -0x21ce070e -> :sswitch_15
        -0xe5aaa02 -> :sswitch_14
        -0xdc04ebb -> :sswitch_13
        -0x7976360 -> :sswitch_12
        -0x23e5d3a -> :sswitch_11
        0x18f56 -> :sswitch_10
        0x1bc62 -> :sswitch_f
        0x594ea03 -> :sswitch_e
        0x6099c1e -> :sswitch_d
        0xb513b12 -> :sswitch_c
        0x10d9c640 -> :sswitch_b
        0x10da0a01 -> :sswitch_a
        0x1510cc6f -> :sswitch_9
        0x1c0e5b23 -> :sswitch_8
        0x28d92717 -> :sswitch_7
        0x2c96ac21 -> :sswitch_6
        0x37daaa76 -> :sswitch_5
        0x4a3ed96b -> :sswitch_4
        0x50983b53 -> :sswitch_3
        0x58737ef5 -> :sswitch_2
        0x775bdb95 -> :sswitch_1
        0x780b1d2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
