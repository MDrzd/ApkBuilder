.class public final Lb/b/f/a/d;
.super Lb/b/h/h;


# static fields
.field public static final a:Lb/b/f/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/f/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/f/a/d;-><init>(I)V

    sput-object v0, Lb/b/f/a/d;->a:Lb/b/f/a/d;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method

.method public static a(Lb/b/f/a/d;Lb/b/f/a/d;)Lb/b/f/a/d;
    .registers 7

    invoke-virtual {p0}, Lb/b/f/a/d;->a_()I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/a/d;->a_()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v1, Lb/b/f/a/d;

    invoke-direct {v1, v0}, Lb/b/f/a/d;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lb/b/f/a/d;->a(I)Lb/b/f/a/c;

    move-result-object v3

    invoke-virtual {p1, v2}, Lb/b/f/a/d;->a(I)Lb/b/f/a/c;

    move-result-object v4

    invoke-static {v3, v4}, Lb/b/f/a/c;->a(Lb/b/f/a/c;Lb/b/f/a/c;)Lb/b/f/a/c;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb/b/f/a/d;->a(ILb/b/f/a/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/b/f/a/d;->b_()V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "list1.size() != list2.size()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(I)Lb/b/f/a/c;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/f/a/d;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/a/c;

    return-object p1
.end method

.method public final a(ILb/b/f/a/c;)V
    .registers 3

    invoke-virtual {p2}, Lb/b/f/a/c;->e()V

    invoke-virtual {p0, p1, p2}, Lb/b/f/a/d;->a(ILjava/lang/Object;)V

    return-void
.end method
