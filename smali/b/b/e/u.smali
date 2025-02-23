.class final Lb/b/e/u;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/d/c;


# instance fields
.field private synthetic a:Lb/b/e/q;


# direct methods
.method private constructor <init>(Lb/b/e/q;)V
    .registers 2

    iput-object p1, p0, Lb/b/e/u;->a:Lb/b/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/b/e/q;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/e/u;-><init>(Lb/b/e/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/d/a/e;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/d/a/e;->d()I

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/e;->u()S

    move-result v1

    iget-object v2, p0, Lb/b/e/u;->a:Lb/b/e/q;

    invoke-static {v2}, Lb/b/e/q;->a(Lb/b/e/q;)[Lb/b/d/a/e;

    move-result-object v2

    iget-object v3, p0, Lb/b/e/u;->a:Lb/b/e/q;

    invoke-static {v3}, Lb/b/e/q;->b(Lb/b/e/q;)I

    move-result v3

    iget-object v4, p0, Lb/b/e/u;->a:Lb/b/e/q;

    invoke-static {v4}, Lb/b/e/q;->c(Lb/b/e/q;)Lb/b/e/o;

    move-result-object v4

    invoke-virtual {v4, v0}, Lb/b/e/o;->e(I)I

    move-result v0

    iget-object v4, p0, Lb/b/e/u;->a:Lb/b/e/q;

    invoke-static {v4}, Lb/b/e/q;->c(Lb/b/e/q;)Lb/b/e/o;

    move-result-object v4

    invoke-virtual {v4, v1}, Lb/b/e/o;->c(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lb/b/d/a/e;->a(II)Lb/b/d/a/e;

    move-result-object p1

    aput-object p1, v2, v3

    return-void
.end method
