.class public final Lb/b/c/b/q;
.super Lb/b/h/h;


# static fields
.field public static final a:Lb/b/c/b/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/c/b/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/c/b/q;-><init>(I)V

    sput-object v0, Lb/b/c/b/q;->a:Lb/b/c/b/q;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method

.method public static a(Lb/b/c/b/l;)Lb/b/c/b/q;
    .registers 6

    invoke-virtual {p0}, Lb/b/c/b/l;->a_()I

    move-result v0

    new-instance v1, Lb/b/c/b/t;

    invoke-direct {v1, v0}, Lb/b/c/b/t;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lb/b/c/b/l;->a(I)Lb/b/c/b/k;

    move-result-object v3

    instance-of v4, v3, Lb/b/c/b/u;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lb/b/c/b/u;

    invoke-virtual {v4}, Lb/b/c/b/u;->c()Lb/b/f/b/w;

    move-result-object v4

    invoke-virtual {v3}, Lb/b/c/b/k;->h()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lb/b/c/b/t;->a(ILb/b/f/b/w;)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lb/b/c/b/v;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lb/b/c/b/v;

    invoke-virtual {v4}, Lb/b/c/b/v;->c()Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v3}, Lb/b/c/b/k;->h()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lb/b/c/b/t;->a(ILb/b/f/b/r;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lb/b/c/b/t;->a()Lb/b/c/b/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Lb/b/c/b/s;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/c/b/q;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/b/s;

    return-object p1
.end method

.method public final a(ILb/b/c/b/s;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/b/c/b/q;->a(ILjava/lang/Object;)V

    return-void
.end method
