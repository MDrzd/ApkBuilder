.class final Lb/b/e/t;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/d/c;


# instance fields
.field private synthetic a:Lb/b/e/q;


# direct methods
.method private constructor <init>(Lb/b/e/q;)V
    .registers 2

    iput-object p1, p0, Lb/b/e/t;->a:Lb/b/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/b/e/q;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/e/t;-><init>(Lb/b/e/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/d/a/e;)V
    .registers 4

    iget-object v0, p0, Lb/b/e/t;->a:Lb/b/e/q;

    invoke-static {v0}, Lb/b/e/q;->a(Lb/b/e/q;)[Lb/b/d/a/e;

    move-result-object v0

    iget-object v1, p0, Lb/b/e/t;->a:Lb/b/e/q;

    invoke-static {v1}, Lb/b/e/q;->b(Lb/b/e/q;)I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method
