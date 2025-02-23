.class final Lb/b/b/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lb/b/c/c/u;

.field private synthetic b:Lb/b/b/b/c;


# direct methods
.method private constructor <init>(Lb/b/b/b/c;Lb/b/c/c/u;)V
    .registers 3

    iput-object p1, p0, Lb/b/b/b/j;->b:Lb/b/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/b/b/j;->a:Lb/b/c/c/u;

    return-void
.end method

.method synthetic constructor <init>(Lb/b/b/b/c;Lb/b/c/c/u;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lb/b/b/b/j;-><init>(Lb/b/b/b/c;Lb/b/c/c/u;)V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lb/b/b/b/j;->b:Lb/b/b/b/c;

    iget-object v1, p0, Lb/b/b/b/j;->a:Lb/b/c/c/u;

    invoke-static {v0, v1}, Lb/b/b/b/c;->a(Lb/b/b/b/c;Lb/b/c/c/u;)[B

    move-result-object v0

    return-object v0
.end method
