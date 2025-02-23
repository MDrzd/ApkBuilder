.class public final Lb/b/f/c/l;
.super Lb/b/f/c/u;


# static fields
.field public static final a:Lb/b/f/c/l;

.field public static final b:Lb/b/f/c/l;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lb/b/f/c/l;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lb/b/f/c/l;-><init>(J)V

    sput-object v0, Lb/b/f/c/l;->a:Lb/b/f/c/l;

    new-instance v0, Lb/b/f/c/l;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lb/b/f/c/l;-><init>(J)V

    sput-object v0, Lb/b/f/c/l;->b:Lb/b/f/c/l;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/f/c/u;-><init>(J)V

    return-void
.end method

.method public static a(J)Lb/b/f/c/l;
    .registers 3

    new-instance v0, Lb/b/f/c/l;

    invoke-direct {v0, p0, p1}, Lb/b/f/c/l;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    sget-object v0, Lb/b/f/d/c;->d:Lb/b/f/d/c;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "double"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lb/b/f/c/l;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/c/l;->k()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "double{0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
