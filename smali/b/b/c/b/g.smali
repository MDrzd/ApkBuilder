.class public final Lb/b/c/b/g;
.super Lb/b/c/b/al;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Lb/b/f/b/z;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/b/c/b/g;-><init>(Lb/b/f/b/z;Z)V

    return-void
.end method

.method public constructor <init>(Lb/b/f/b/z;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/c/b/al;-><init>(Lb/b/f/b/z;)V

    iput-boolean p2, p0, Lb/b/c/b/g;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 3

    new-instance p1, Lb/b/c/b/g;

    invoke-virtual {p0}, Lb/b/c/b/g;->j()Lb/b/f/b/z;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/b/c/b/g;-><init>(Lb/b/f/b/z;)V

    return-object p1
.end method

.method protected final a(Z)Ljava/lang/String;
    .registers 2

    const-string p1, "code-address"

    return-object p1
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/c/b/g;->a:Z

    return v0
.end method
