.class final Lb/b/b/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/c/i;


# instance fields
.field private final a:Lb/b/a/c/i;


# direct methods
.method private constructor <init>(Lb/b/a/c/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/b/b/n;->a:Lb/b/a/c/i;

    return-void
.end method

.method synthetic constructor <init>(Lb/b/a/c/i;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/b/b/n;-><init>(Lb/b/a/c/i;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lb/b/b/b/n;->a:Lb/b/a/c/i;

    invoke-interface {v0, p1}, Lb/b/a/c/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
