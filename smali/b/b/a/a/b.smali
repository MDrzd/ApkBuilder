.class public final Lb/b/a/a/b;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/a/b/d;

.field private final b:I


# direct methods
.method public constructor <init>(Lb/b/a/b/d;)V
    .registers 5

    const-string v0, "BootstrapMethods"

    invoke-direct {p0, v0}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lb/b/a/a/b;->a:Lb/b/a/b/d;

    invoke-virtual {p1}, Lb/b/a/b/d;->a_()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lb/b/a/b/d;->a_()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lb/b/a/b/d;->a(I)Lb/b/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/a/b/e;->b()Lb/b/a/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/a/b/c;->a_()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lb/b/a/a/b;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/a/a/b;->b:I

    return v0
.end method

.method public final b()Lb/b/a/b/d;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/b;->a:Lb/b/a/b/d;

    return-object v0
.end method
