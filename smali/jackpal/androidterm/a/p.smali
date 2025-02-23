.class final Ljackpal/androidterm/a/p;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private synthetic b:Ljackpal/androidterm/a/o;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/a/o;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/p;->b:Ljackpal/androidterm/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ljackpal/androidterm/a/p;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/p;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Ljackpal/androidterm/a/p;->a:I

    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    return-void

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .registers 3

    iget v0, p0, Ljackpal/androidterm/a/p;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/a/p;->a:I

    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Ljackpal/androidterm/a/p;->a:I

    :goto_0
    return-void
.end method

.method public final c()V
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/p;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/a/p;->a:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Ljackpal/androidterm/a/p;->a:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/p;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/a/p;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
