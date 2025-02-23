.class final Lb/b/b/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/c/i;


# instance fields
.field private synthetic a:Lb/b/b/b/c;


# direct methods
.method private constructor <init>(Lb/b/b/b/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/b/b/m;->a:Lb/b/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/b/b/b/c;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/b/b/m;-><init>(Lb/b/b/b/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 3

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lb/b/b/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lb/b/b/b/m;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->a(Lb/b/b/b/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
