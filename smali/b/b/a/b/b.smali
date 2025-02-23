.class public final Lb/b/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/b/m;


# instance fields
.field private final a:Lb/b/a/b/n;

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:[Lb/b/h/k;

.field private final f:[Lb/b/a/b/g;

.field private g:I


# direct methods
.method private constructor <init>(Lb/b/a/b/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/b/b;->a:Lb/b/a/b/n;

    invoke-virtual {p1}, Lb/b/a/b/n;->l()Lb/b/a/b/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/b/j;->b()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La/a/a;->n(I)[I

    move-result-object v0

    iput-object v0, p0, Lb/b/a/b/b;->b:[I

    invoke-static {p1}, La/a/a;->n(I)[I

    move-result-object v0

    iput-object v0, p0, Lb/b/a/b/b;->c:[I

    invoke-static {p1}, La/a/a;->n(I)[I

    move-result-object v0

    iput-object v0, p0, Lb/b/a/b/b;->d:[I

    new-array v0, p1, [Lb/b/h/k;

    iput-object v0, p0, Lb/b/a/b/b;->e:[Lb/b/h/k;

    new-array p1, p1, [Lb/b/a/b/g;

    iput-object p1, p0, Lb/b/a/b/b;->f:[Lb/b/a/b/g;

    const/4 p1, -0x1

    iput p1, p0, Lb/b/a/b/b;->g:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lb/b/a/b/n;)Lb/b/a/b/f;
    .registers 12

    new-instance v0, Lb/b/a/b/b;

    invoke-direct {v0, p0}, Lb/b/a/b/b;-><init>(Lb/b/a/b/n;)V

    iget-object p0, v0, Lb/b/a/b/b;->a:Lb/b/a/b/n;

    invoke-virtual {p0}, Lb/b/a/b/n;->l()Lb/b/a/b/j;

    move-result-object p0

    iget-object v1, v0, Lb/b/a/b/b;->a:Lb/b/a/b/n;

    invoke-virtual {v1}, Lb/b/a/b/n;->m()Lb/b/a/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/b/g;->a_()I

    move-result v2

    iget-object v3, v0, Lb/b/a/b/b;->b:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, La/a/a;->b([II)V

    iget-object v3, v0, Lb/b/a/b/b;->d:[I

    invoke-static {v3, v4}, La/a/a;->b([II)V

    :cond_0
    iget-object v3, v0, Lb/b/a/b/b;->b:[I

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v5, :cond_2

    aget v8, v3, v6

    if-eqz v8, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_6

    :try_start_0
    iget-object v3, v0, Lb/b/a/b/b;->b:[I

    :goto_2
    invoke-static {v3, v4}, La/a/a;->d([II)I

    move-result v5

    if-ltz v5, :cond_3

    invoke-static {v3, v5}, La/a/a;->c([II)V

    invoke-virtual {p0, v5, v0}, Lb/b/a/b/j;->a(ILb/b/a/b/m;)I

    invoke-interface {v0, v5}, Lb/b/a/b/m;->a(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lb/b/a/b/g;->a(I)Lb/b/a/b/h;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/a/b/h;->a()I

    move-result v6

    invoke-virtual {v5}, Lb/b/a/b/h;->b()I

    move-result v8

    iget-object v9, v0, Lb/b/a/b/b;->c:[I

    invoke-static {v9, v6}, La/a/a;->d([II)I

    move-result v9

    if-ltz v9, :cond_4

    if-ge v9, v8, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_5

    iget-object v9, v0, Lb/b/a/b/b;->d:[I

    invoke-static {v9, v6}, La/a/a;->b([II)V

    iget-object v6, v0, Lb/b/a/b/b;->d:[I

    invoke-static {v6, v8}, La/a/a;->b([II)V

    invoke-virtual {v5}, Lb/b/a/b/h;->c()I

    move-result v5

    invoke-direct {v0, v5, v7}, Lb/b/a/b/b;->a(IZ)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance v0, Lb/b/a/b/aj;

    const-string v1, "flow of control falls off end of method"

    invoke-direct {v0, v1, p0}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    iget-object p0, v0, Lb/b/a/b/b;->a:Lb/b/a/b/n;

    invoke-virtual {p0}, Lb/b/a/b/n;->l()Lb/b/a/b/j;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/a/b/j;->b()I

    move-result p0

    new-array p0, p0, [Lcom/gmail/heagoo/common/ae;

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_5
    iget-object v2, v0, Lb/b/a/b/b;->d:[I

    add-int/lit8 v3, v7, 0x1

    invoke-static {v2, v3}, La/a/a;->d([II)I

    move-result v2

    if-ltz v2, :cond_c

    iget-object v3, v0, Lb/b/a/b/b;->c:[I

    invoke-static {v3, v7}, La/a/a;->a([II)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    add-int/lit8 v5, v2, -0x1

    :goto_6
    if-lt v5, v7, :cond_8

    iget-object v3, v0, Lb/b/a/b/b;->e:[Lb/b/h/k;

    aget-object v3, v3, v5

    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_8
    const/4 v5, -0x1

    :goto_7
    if-nez v3, :cond_a

    invoke-static {v2}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v3

    :goto_8
    sget-object v5, Lb/b/a/b/g;->a:Lb/b/a/b/g;

    :cond_9
    move-object v9, v3

    move-object v10, v5

    goto :goto_9

    :cond_a
    iget-object v6, v0, Lb/b/a/b/b;->f:[Lb/b/a/b/g;

    aget-object v5, v6, v5

    if-nez v5, :cond_9

    goto :goto_8

    :goto_9
    new-instance v3, Lcom/gmail/heagoo/common/ae;

    move-object v5, v3

    move v6, v7

    move v8, v2

    invoke-direct/range {v5 .. v10}, Lcom/gmail/heagoo/common/ae;-><init>(IIILb/b/h/k;Lb/b/a/b/g;)V

    aput-object v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    :cond_b
    move v7, v2

    goto :goto_5

    :cond_c
    new-instance v0, Lb/b/a/b/f;

    invoke-direct {v0, v1}, Lb/b/a/b/f;-><init>(I)V

    :goto_a
    if-ge v4, v1, :cond_d

    aget-object v2, p0, v4

    invoke-virtual {v0, v4, v2}, Lb/b/a/b/f;->a(ILcom/gmail/heagoo/common/ae;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_d
    return-object v0
.end method

.method private a(IIZ)V
    .registers 5

    iget-object v0, p0, Lb/b/a/b/b;->c:[I

    invoke-static {v0, p1}, La/a/a;->b([II)V

    if-eqz p3, :cond_0

    add-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lb/b/a/b/b;->a(IZ)V

    return-void

    :cond_0
    iget-object p3, p0, Lb/b/a/b/b;->d:[I

    add-int/2addr p1, p2

    invoke-static {p3, p1}, La/a/a;->b([II)V

    return-void
.end method

.method private a(IZ)V
    .registers 4

    iget-object v0, p0, Lb/b/a/b/b;->c:[I

    invoke-static {v0, p1}, La/a/a;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/b/b;->b:[I

    invoke-static {v0, p1}, La/a/a;->b([II)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lb/b/a/b/b;->d:[I

    invoke-static {p2, p1}, La/a/a;->b([II)V

    :cond_1
    return-void
.end method

.method private b(IIZ)V
    .registers 6

    add-int/2addr p2, p1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lb/b/a/b/b;->a(IZ)V

    :cond_0
    iget-object v0, p0, Lb/b/a/b/b;->a:Lb/b/a/b/n;

    invoke-virtual {v0}, Lb/b/a/b/n;->m()Lb/b/a/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/b/g;->b(I)Lb/b/a/b/g;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/b/b;->f:[Lb/b/a/b/g;

    aput-object v0, v1, p1

    iget-object v1, p0, Lb/b/a/b/b;->e:[Lb/b/h/k;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {v0, p2}, Lb/b/a/b/g;->c(I)Lb/b/h/k;

    move-result-object p2

    aput-object p2, v1, p1

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/a/b/b;->g:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lb/b/a/b/b;->g:I

    return-void
.end method

.method public final a(III)V
    .registers 4

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lb/b/a/b/b;->a(IIZ)V

    return-void
.end method

.method public final a(IIII)V
    .registers 6

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2, v0}, Lb/b/a/b/b;->a(IZ)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lb/b/a/b/b;->a(IIZ)V

    iget-object p1, p0, Lb/b/a/b/b;->e:[Lb/b/h/k;

    invoke-static {p4}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object p3

    aput-object p3, p1, p2

    goto :goto_1

    :goto_0
    add-int p1, p2, p3

    invoke-direct {p0, p2, p3, v0}, Lb/b/a/b/b;->a(IIZ)V

    invoke-direct {p0, p1, v0}, Lb/b/a/b/b;->a(IZ)V

    iget-object p3, p0, Lb/b/a/b/b;->e:[Lb/b/h/k;

    invoke-static {p1, p4}, Lb/b/h/k;->a(II)Lb/b/h/k;

    move-result-object p1

    aput-object p1, p3, p2

    :goto_1
    invoke-direct {p0, p4, v0}, Lb/b/a/b/b;->a(IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IIIILb/b/f/d/c;I)V
    .registers 7

    const/16 p4, 0xa9

    if-ne p1, p4, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lb/b/a/b/b;->a(IIZ)V

    iget-object p1, p0, Lb/b/a/b/b;->e:[Lb/b/h/k;

    sget-object p3, Lb/b/h/k;->a:Lb/b/h/k;

    aput-object p3, p1, p2

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lb/b/a/b/b;->a(IIZ)V

    return-void
.end method

.method public final a(IIILb/b/a/b/am;I)V
    .registers 7

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lb/b/a/b/b;->a(IIZ)V

    invoke-virtual {p4}, Lb/b/a/b/am;->g()I

    move-result p3

    const/4 p5, 0x1

    invoke-direct {p0, p3, p5}, Lb/b/a/b/b;->a(IZ)V

    invoke-virtual {p4}, Lb/b/a/b/am;->f()I

    move-result p3

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-virtual {p4, p1}, Lb/b/a/b/am;->b(I)I

    move-result v0

    invoke-direct {p0, v0, p5}, Lb/b/a/b/b;->a(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/b/a/b/b;->e:[Lb/b/h/k;

    invoke-virtual {p4}, Lb/b/a/b/am;->h()Lb/b/h/k;

    move-result-object p3

    aput-object p3, p1, p2

    return-void
.end method

.method public final a(IIILb/b/f/c/a;I)V
    .registers 6

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lb/b/a/b/b;->a(IIZ)V

    instance-of p5, p4, Lb/b/f/c/x;

    if-nez p5, :cond_0

    instance-of p5, p4, Lb/b/f/c/ae;

    if-nez p5, :cond_0

    instance-of p5, p4, Lb/b/f/c/ad;

    if-nez p5, :cond_0

    instance-of p5, p4, Lb/b/f/c/r;

    if-nez p5, :cond_0

    instance-of p5, p4, Lb/b/f/c/y;

    if-nez p5, :cond_0

    instance-of p4, p4, Lb/b/f/c/ab;

    if-eqz p4, :cond_1

    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lb/b/a/b/b;->b(IIZ)V

    :cond_1
    return-void
.end method

.method public final a(IIILb/b/f/d/c;)V
    .registers 7

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x70

    if-eq p1, v0, :cond_1

    const/16 p4, 0xac

    const/4 v0, 0x0

    if-eq p1, p4, :cond_0

    const/16 p4, 0xb1

    if-eq p1, p4, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    invoke-direct {p0, p2, p3, v1}, Lb/b/a/b/b;->a(IIZ)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2, p3, v0}, Lb/b/a/b/b;->a(IIZ)V

    invoke-direct {p0, p2, p3, v0}, Lb/b/a/b/b;->b(IIZ)V

    return-void

    :pswitch_1
    invoke-direct {p0, p2, p3, v1}, Lb/b/a/b/b;->a(IIZ)V

    invoke-direct {p0, p2, p3, v1}, Lb/b/a/b/b;->b(IIZ)V

    return-void

    :cond_0
    invoke-direct {p0, p2, p3, v0}, Lb/b/a/b/b;->a(IIZ)V

    iget-object p1, p0, Lb/b/a/b/b;->e:[Lb/b/h/k;

    sget-object p3, Lb/b/h/k;->a:Lb/b/h/k;

    aput-object p3, p1, p2

    return-void

    :cond_1
    invoke-direct {p0, p2, p3, v1}, Lb/b/a/b/b;->a(IIZ)V

    sget-object p1, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    if-eq p4, p1, :cond_3

    sget-object p1, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    if-ne p4, p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-direct {p0, p2, p3, v1}, Lb/b/a/b/b;->b(IIZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(IILb/b/f/c/ae;Ljava/util/ArrayList;)V
    .registers 5

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lb/b/a/b/b;->a(IIZ)V

    invoke-direct {p0, p1, p2, p3}, Lb/b/a/b/b;->b(IIZ)V

    return-void
.end method
