.class final Lb/b/a/b/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private synthetic b:Lb/b/a/b/z;


# direct methods
.method private constructor <init>(Lb/b/a/b/z;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/b/ac;->b:Lb/b/a/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/b/a/b/ac;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lb/b/a/b/z;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/a/b/ac;-><init>(Lb/b/a/b/z;)V

    return-void
.end method


# virtual methods
.method final a(Lb/b/f/d/c;)Lb/b/a/b/ad;
    .registers 4

    iget-object v0, p0, Lb/b/a/b/ac;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/b/ad;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/b/ac;->b:Lb/b/a/b/z;

    invoke-static {v0}, Lb/b/a/b/z;->a(Lb/b/a/b/z;)Lb/b/a/b/ae;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/b/ae;->a()I

    move-result v0

    new-instance v1, Lb/b/a/b/ad;

    invoke-direct {v1, p1, v0}, Lb/b/a/b/ad;-><init>(Lb/b/f/d/c;I)V

    iget-object v0, p0, Lb/b/a/b/ac;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method final a()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/ac;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
