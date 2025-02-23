.class final Lb/b/g/s;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ak;


# instance fields
.field private synthetic a:Lb/b/f/b/ad;

.field private synthetic b:Lb/b/g/r;


# direct methods
.method constructor <init>(Lb/b/g/r;Lb/b/f/b/ad;)V
    .registers 3

    iput-object p1, p0, Lb/b/g/s;->b:Lb/b/g/r;

    iput-object p2, p0, Lb/b/g/s;->a:Lb/b/f/b/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/g/aa;)V
    .registers 2

    return-void
.end method

.method public final a(Lb/b/g/x;)V
    .registers 2

    return-void
.end method

.method public final b(Lb/b/g/x;)V
    .registers 9

    invoke-virtual {p1}, Lb/b/g/x;->d()Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/g/x;->a()Lb/b/f/b/u;

    move-result-object v1

    iget-object v2, p0, Lb/b/g/s;->b:Lb/b/g/r;

    invoke-static {v2, p1}, Lb/b/g/r;->a(Lb/b/g/r;Lb/b/g/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lb/b/f/b/u;->a_()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lb/b/f/b/x;->d()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-static {v2}, Lb/b/g/r;->a(Lb/b/f/b/r;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/b/g/s;->b:Lb/b/g/r;

    invoke-virtual {v1}, Lb/b/f/b/u;->g()Lb/b/f/b/u;

    move-result-object v1

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized IF regop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc

    :goto_0
    :pswitch_4
    invoke-static {v2, p1, v1, v0, v3}, Lb/b/g/r;->a(Lb/b/g/r;Lb/b/g/x;Lb/b/f/b/u;ILb/b/f/c/a;)V

    return-void

    :cond_2
    invoke-virtual {v1, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-static {v2}, Lb/b/g/r;->a(Lb/b/f/b/r;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lb/b/g/s;->b:Lb/b/g/r;

    invoke-virtual {v1}, Lb/b/f/b/u;->i()Lb/b/f/b/u;

    move-result-object v1

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    invoke-static {v2, p1, v1, v0, v3}, Lb/b/g/r;->a(Lb/b/g/r;Lb/b/g/x;Lb/b/f/b/u;ILb/b/f/c/a;)V

    return-void

    :cond_3
    iget-object v2, p0, Lb/b/g/s;->a:Lb/b/f/b/ad;

    invoke-virtual {v1, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v1, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v6

    invoke-interface {v2, v0, v3, v6}, Lb/b/f/b/ad;->a(Lb/b/f/b/x;Lb/b/f/b/r;Lb/b/f/b/r;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lb/b/g/x;->f()V

    return-void

    :cond_4
    invoke-virtual {v0}, Lb/b/f/b/x;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lb/b/g/s;->a:Lb/b/f/b/ad;

    invoke-virtual {v1, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v1, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v6

    invoke-interface {v2, v0, v3, v6}, Lb/b/f/b/ad;->a(Lb/b/f/b/x;Lb/b/f/b/r;Lb/b/f/b/r;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v1, v5}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v1

    invoke-static {v0, v1}, Lb/b/f/b/u;->a(Lb/b/f/b/r;Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/g/x;->a(Lb/b/f/b/u;)V

    invoke-virtual {p1}, Lb/b/g/x;->f()V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
