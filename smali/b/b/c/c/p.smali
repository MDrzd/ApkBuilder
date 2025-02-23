.class final Lb/b/c/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/c/b/j;


# instance fields
.field private synthetic a:Lb/b/c/c/u;

.field private synthetic b:Lb/b/c/c/o;


# direct methods
.method constructor <init>(Lb/b/c/c/o;Lb/b/c/c/u;)V
    .registers 3

    iput-object p1, p0, Lb/b/c/c/p;->b:Lb/b/c/c/o;

    iput-object p2, p0, Lb/b/c/c/p;->a:Lb/b/c/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/c/a;)I
    .registers 3

    iget-object v0, p0, Lb/b/c/c/p;->a:Lb/b/c/c/u;

    invoke-virtual {v0, p1}, Lb/b/c/c/u;->b(Lb/b/f/c/a;)Lb/b/c/c/ag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lb/b/c/c/ag;->i()I

    move-result p1

    return p1
.end method
