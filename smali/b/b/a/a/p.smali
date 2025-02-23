.class public final Lb/b/a/a/p;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/f/c/ad;


# direct methods
.method public constructor <init>(Lb/b/f/c/ad;)V
    .registers 3

    const-string v0, "Signature"

    invoke-direct {p0, v0}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/a/p;->a:Lb/b/f/c/ad;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "signature == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public final b()Lb/b/f/c/ad;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/p;->a:Lb/b/f/c/ad;

    return-object v0
.end method
