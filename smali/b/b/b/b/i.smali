.class final Lb/b/b/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Lb/b/a/c/k;

.field private synthetic d:Lb/b/b/b/c;


# direct methods
.method private constructor <init>(Lb/b/b/b/c;Ljava/lang/String;[BLb/b/a/c/k;)V
    .registers 5

    iput-object p1, p0, Lb/b/b/b/i;->d:Lb/b/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/b/b/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lb/b/b/b/i;->b:[B

    iput-object p4, p0, Lb/b/b/b/i;->c:Lb/b/a/c/k;

    return-void
.end method

.method synthetic constructor <init>(Lb/b/b/b/c;Ljava/lang/String;[BLb/b/a/c/k;B)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/b/b/i;-><init>(Lb/b/b/b/c;Ljava/lang/String;[BLb/b/a/c/k;)V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lb/b/b/b/i;->d:Lb/b/b/b/c;

    iget-object v1, p0, Lb/b/b/b/i;->b:[B

    iget-object v2, p0, Lb/b/b/b/i;->c:Lb/b/a/c/k;

    invoke-static {v0, v1, v2}, Lb/b/b/b/c;->a(Lb/b/b/b/c;[BLb/b/a/c/k;)Lb/b/c/c/m;

    move-result-object v0

    return-object v0
.end method
