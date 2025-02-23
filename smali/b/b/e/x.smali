.class final Lb/b/e/x;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/d/c;


# instance fields
.field private synthetic a:Lb/b/e/q;


# direct methods
.method private constructor <init>(Lb/b/e/q;)V
    .registers 2

    iput-object p1, p0, Lb/b/e/x;->a:Lb/b/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/b/e/q;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/e/x;-><init>(Lb/b/e/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/d/a/e;)V
    .registers 5

    invoke-virtual {p1}, Lb/b/d/a/e;->d()I

    move-result v0

    iget-object v1, p0, Lb/b/e/x;->a:Lb/b/e/q;

    invoke-static {v1}, Lb/b/e/q;->c(Lb/b/e/q;)Lb/b/e/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/b/e/o;->b(I)I

    move-result v0

    invoke-virtual {p1}, Lb/b/d/a/e;->b()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, v0}, Lb/b/e/q;->a(ZI)V

    iget-object v1, p0, Lb/b/e/x;->a:Lb/b/e/q;

    invoke-static {v1}, Lb/b/e/q;->a(Lb/b/e/q;)[Lb/b/d/a/e;

    move-result-object v1

    iget-object v2, p0, Lb/b/e/x;->a:Lb/b/e/q;

    invoke-static {v2}, Lb/b/e/q;->b(Lb/b/e/q;)I

    move-result v2

    invoke-virtual {p1, v0}, Lb/b/d/a/e;->d(I)Lb/b/d/a/e;

    move-result-object p1

    aput-object p1, v1, v2

    return-void
.end method
