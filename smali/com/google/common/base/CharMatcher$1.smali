.class final Lcom/google/common/base/CharMatcher$1;
.super Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public final matches(C)Z
    .registers 5

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x85

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1680

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2007

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x205f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/16 v0, 0x2000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x200a

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2028
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharMatcher.BREAKING_WHITESPACE"

    return-object v0
.end method
