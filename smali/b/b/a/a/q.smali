.class public final Lb/b/a/a/q;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/f/c/ad;


# direct methods
.method public constructor <init>(Lb/b/f/c/ad;)V
    .registers 3

    const-string v0, "SourceDebugExtension"

    invoke-direct {p0, v0}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lb/b/a/a/q;->a:Lb/b/f/c/ad;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/a/a/q;->a:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final b()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/q;->a:Lb/b/f/c/ad;

    return-object v0
.end method
