.class final Lb/b/g/am;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ak;


# instance fields
.field private synthetic a:Lb/b/g/al;


# direct methods
.method constructor <init>(Lb/b/g/al;)V
    .registers 2

    iput-object p1, p0, Lb/b/g/am;->a:Lb/b/g/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lb/b/g/aj;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lb/b/g/am;->a:Lb/b/g/al;

    invoke-static {v3}, Lb/b/g/al;->a(Lb/b/g/al;)[Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/r;->f()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lb/b/g/aa;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/g/am;->a(Lb/b/g/aj;)V

    return-void
.end method

.method public final a(Lb/b/g/x;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/g/am;->a(Lb/b/g/aj;)V

    return-void
.end method

.method public final b(Lb/b/g/x;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/g/am;->a(Lb/b/g/aj;)V

    return-void
.end method
