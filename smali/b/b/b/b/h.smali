.class final Lb/b/b/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private synthetic c:Lb/b/b/b/c;


# direct methods
.method private constructor <init>(Lb/b/b/b/c;Ljava/lang/String;[B)V
    .registers 4

    iput-object p1, p0, Lb/b/b/b/h;->c:Lb/b/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/b/b/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lb/b/b/b/h;->b:[B

    return-void
.end method

.method synthetic constructor <init>(Lb/b/b/b/c;Ljava/lang/String;[BB)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lb/b/b/b/h;-><init>(Lb/b/b/b/c;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public final a()Lb/b/a/c/k;
    .registers 4

    iget-object v0, p0, Lb/b/b/b/h;->c:Lb/b/b/b/c;

    iget-object v1, p0, Lb/b/b/b/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lb/b/b/b/h;->b:[B

    invoke-static {v0, v1, v2}, Lb/b/b/b/c;->a(Lb/b/b/b/c;Ljava/lang/String;[B)Lb/b/a/c/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lb/b/b/b/h;->a()Lb/b/a/c/k;

    move-result-object v0

    return-object v0
.end method
