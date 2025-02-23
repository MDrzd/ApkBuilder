.class public final Lb/b/f/c/s;
.super Lb/b/f/c/v;


# static fields
.field public static final a:Lb/b/f/c/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/f/c/s;

    invoke-direct {v0}, Lb/b/f/c/s;-><init>()V

    sput-object v0, Lb/b/f/c/s;->a:Lb/b/f/c/s;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/f/c/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    sget-object v0, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    return-object v0
.end method

.method protected final b(Lb/b/f/c/a;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lb/b/f/c/s;

    return p1
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "known-null"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    const-string v0, "null"

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    const v0, 0x4466757a

    return v0
.end method

.method public final i()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final k()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "known-null"

    return-object v0
.end method
