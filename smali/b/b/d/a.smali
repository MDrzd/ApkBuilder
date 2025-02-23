.class public final Lb/b/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lb/b/d/c;

.field private b:Lb/b/d/c;

.field private c:Lb/b/d/c;

.field private d:Lb/b/d/c;

.field private e:Lb/b/d/c;

.field private f:Lb/b/d/c;

.field private g:Lb/b/d/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/d/a;->a:Lb/b/d/c;

    iput-object v0, p0, Lb/b/d/a;->b:Lb/b/d/c;

    iput-object v0, p0, Lb/b/d/a;->c:Lb/b/d/c;

    iput-object v0, p0, Lb/b/d/a;->d:Lb/b/d/c;

    iput-object v0, p0, Lb/b/d/a;->e:Lb/b/d/c;

    iput-object v0, p0, Lb/b/d/a;->f:Lb/b/d/c;

    iput-object v0, p0, Lb/b/d/a;->g:Lb/b/d/c;

    return-void
.end method


# virtual methods
.method public final a(Lb/b/d/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/d/a;->a:Lb/b/d/c;

    iput-object p1, p0, Lb/b/d/a;->b:Lb/b/d/c;

    iput-object p1, p0, Lb/b/d/a;->c:Lb/b/d/c;

    iput-object p1, p0, Lb/b/d/a;->d:Lb/b/d/c;

    iput-object p1, p0, Lb/b/d/a;->e:Lb/b/d/c;

    iput-object p1, p0, Lb/b/d/a;->f:Lb/b/d/c;

    iput-object p1, p0, Lb/b/d/a;->g:Lb/b/d/c;

    return-void
.end method

.method public final a([Lb/b/d/a/e;)V
    .registers 8

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    sget-object v4, Lb/b/d/b;->a:[I

    invoke-virtual {v2}, Lb/b/d/a/e;->b()I

    move-result v5

    invoke-static {v5}, Lb/b/d/e;->c(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lb/b/d/a;->g:Lb/b/d/c;

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lb/b/d/a;->f:Lb/b/d/c;

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lb/b/d/a;->e:Lb/b/d/c;

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lb/b/d/a;->d:Lb/b/d/c;

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Lb/b/d/a;->c:Lb/b/d/c;

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Lb/b/d/a;->b:Lb/b/d/c;

    :goto_1
    if-nez v3, :cond_0

    iget-object v3, p0, Lb/b/d/a;->a:Lb/b/d/c;

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Lb/b/d/c;->a(Lb/b/d/a/e;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lb/b/d/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/d/a;->b:Lb/b/d/c;

    return-void
.end method

.method public final c(Lb/b/d/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/d/a;->c:Lb/b/d/c;

    return-void
.end method

.method public final d(Lb/b/d/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/d/a;->d:Lb/b/d/c;

    return-void
.end method

.method public final e(Lb/b/d/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/d/a;->e:Lb/b/d/c;

    return-void
.end method

.method public final f(Lb/b/d/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/d/a;->f:Lb/b/d/c;

    return-void
.end method

.method public final g(Lb/b/d/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/d/a;->g:Lb/b/d/c;

    return-void
.end method
