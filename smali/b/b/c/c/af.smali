.class public abstract Lb/b/c/c/af;
.super Lb/b/c/c/ag;


# instance fields
.field private final a:Lb/b/f/c/ae;


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;)V
    .registers 3

    invoke-direct {p0}, Lb/b/c/c/ag;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/c/c/af;->a:Lb/b/f/c/ae;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lb/b/c/c/u;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/c/c/u;->k()Lb/b/c/c/bg;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/af;->a:Lb/b/f/c/ae;

    invoke-virtual {p1, v0}, Lb/b/c/c/bg;->a(Lb/b/f/c/ae;)Lb/b/c/c/bf;

    return-void
.end method

.method public final d()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/af;->a:Lb/b/f/c/ae;

    return-object v0
.end method
