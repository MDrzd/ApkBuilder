.class public final Lb/b/a/a/f;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/f/c/ae;

.field private final b:Lb/b/f/c/aa;


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V
    .registers 4

    const-string v0, "EnclosingMethod"

    invoke-direct {p0, v0}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/a/f;->a:Lb/b/f/c/ae;

    iput-object p2, p0, Lb/b/a/a/f;->b:Lb/b/f/c/aa;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public final b()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/f;->a:Lb/b/f/c/ae;

    return-object v0
.end method

.method public final c()Lb/b/f/c/aa;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/f;->b:Lb/b/f/c/aa;

    return-object v0
.end method
