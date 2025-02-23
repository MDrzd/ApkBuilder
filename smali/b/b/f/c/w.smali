.class public final Lb/b/f/c/w;
.super Lb/b/f/c/u;


# static fields
.field public static final a:Lb/b/f/c/w;

.field public static final b:Lb/b/f/c/w;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lb/b/f/c/w;->a(J)Lb/b/f/c/w;

    move-result-object v0

    sput-object v0, Lb/b/f/c/w;->a:Lb/b/f/c/w;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lb/b/f/c/w;->a(J)Lb/b/f/c/w;

    move-result-object v0

    sput-object v0, Lb/b/f/c/w;->b:Lb/b/f/c/w;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/f/c/u;-><init>(J)V

    return-void
.end method

.method public static a(J)Lb/b/f/c/w;
    .registers 3

    new-instance v0, Lb/b/f/c/w;

    invoke-direct {v0, p0, p1}, Lb/b/f/c/w;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    sget-object v0, Lb/b/f/d/c;->g:Lb/b/f/d/c;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "long"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lb/b/f/c/w;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/c/w;->k()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "long{0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, La/a/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
