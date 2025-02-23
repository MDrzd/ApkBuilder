.class public final Lb/b/c/b/z;
.super Lb/b/h/h;


# static fields
.field private static a:Lb/b/c/b/z;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/c/b/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/c/b/z;-><init>(I)V

    sput-object v0, Lb/b/c/b/z;->a:Lb/b/c/b/z;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method

.method public static a(Lb/b/c/b/l;I)Lb/b/c/b/z;
    .registers 13

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus howMuch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object v0, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    invoke-virtual {p0}, Lb/b/c/b/l;->a_()I

    move-result v1

    new-array v2, v1, [Lb/b/c/b/aa;

    const/4 v3, 0x0

    move-object v6, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {p0, v4}, Lb/b/c/b/l;->a(I)Lb/b/c/b/k;

    move-result-object v8

    instance-of v9, v8, Lb/b/c/b/g;

    if-eqz v9, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Lb/b/c/b/k;->j()Lb/b/f/b/z;

    move-result-object v9

    invoke-virtual {v9, v0}, Lb/b/f/b/z;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v9, v6}, Lb/b/f/b/z;->a(Lb/b/f/b/z;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x3

    if-ne p1, v10, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    new-instance v6, Lb/b/c/b/aa;

    invoke-virtual {v8}, Lb/b/c/b/k;->h()I

    move-result v7

    invoke-direct {v6, v7, v9}, Lb/b/c/b/aa;-><init>(ILb/b/f/b/z;)V

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    move-object v6, v9

    const/4 v7, 0x0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lb/b/c/b/z;

    invoke-direct {p0, v5}, Lb/b/c/b/z;-><init>(I)V

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object p1, v2, v3

    invoke-virtual {p0, v3, p1}, Lb/b/c/b/z;->a(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lb/b/c/b/z;->b_()V

    return-object p0

    :pswitch_1
    sget-object p0, Lb/b/c/b/z;->a:Lb/b/c/b/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Lb/b/c/b/aa;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/c/b/z;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/b/aa;

    return-object p1
.end method
