.class public final Lb/b/f/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/f/b/ad;


# static fields
.field public static final a:Lb/b/f/b/f;


# instance fields
.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/f/b/f;

    invoke-direct {v0}, Lb/b/f/b/f;-><init>()V

    sput-object v0, Lb/b/f/b/f;->a:Lb/b/f/b/f;

    new-instance v0, Lb/b/f/b/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb/b/f/b/f;-><init>(Z)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/f/b/f;->b:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/f/b/f;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/b/x;Lb/b/f/b/r;Lb/b/f/b/r;)Z
    .registers 7

    invoke-virtual {p2}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v0

    sget-object v1, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p3}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v0

    instance-of v0, v0, Lb/b/f/c/p;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object p3

    instance-of p3, p3, Lb/b/f/c/p;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lb/b/f/b/x;->a()I

    move-result p1

    const/16 p3, 0xf

    if-ne p1, p3, :cond_1

    invoke-virtual {p2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object p1

    check-cast p1, Lb/b/f/c/p;

    :goto_0
    invoke-virtual {p1}, Lb/b/f/c/p;->l()Z

    move-result p1

    return p1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p3}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object p2

    check-cast p2, Lb/b/f/c/p;

    invoke-virtual {p1}, Lb/b/f/b/x;->a()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {p2}, Lb/b/f/c/v;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lb/b/f/c/v;->j()I

    move-result p1

    int-to-byte p2, p1

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v2

    :pswitch_2
    invoke-virtual {p2}, Lb/b/f/c/p;->j()I

    move-result p1

    neg-int p1, p1

    invoke-static {p1}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lb/b/f/c/p;->l()Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lb/b/f/b/x;Lb/b/f/b/u;)Z
    .registers 7

    iget-boolean v0, p0, Lb/b/f/b/f;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lb/b/f/b/x;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lb/b/f/b/u;->a_()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p2, v0}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->k()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    if-lt v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
