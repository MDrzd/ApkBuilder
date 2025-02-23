.class final Lb/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private synthetic a:Lb/a/i;


# direct methods
.method private constructor <init>(Lb/a/i;)V
    .registers 2

    iput-object p1, p0, Lb/a/j;->a:Lb/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/i;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/a/j;-><init>(Lb/a/i;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 4

    iget-object v0, p0, Lb/a/j;->a:Lb/a/i;

    invoke-static {v0}, Lb/a/i;->a(Lb/a/i;)Lb/a/ac;

    move-result-object v0

    iget-object v0, v0, Lb/a/ac;->g:Lb/a/ad;

    invoke-virtual {v0}, Lb/a/ad;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lb/a/k;

    iget-object v1, p0, Lb/a/j;->a:Lb/a/i;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/a/k;-><init>(Lb/a/i;B)V

    return-object v0
.end method
