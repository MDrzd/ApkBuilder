.class public final Lb/b/f/c/o;
.super Lb/b/f/c/t;


# static fields
.field public static final a:Lb/b/f/c/o;

.field public static final b:Lb/b/f/c/o;

.field public static final c:Lb/b/f/c/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lb/b/f/c/o;->a(I)Lb/b/f/c/o;

    move-result-object v0

    sput-object v0, Lb/b/f/c/o;->a:Lb/b/f/c/o;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lb/b/f/c/o;->a(I)Lb/b/f/c/o;

    move-result-object v0

    sput-object v0, Lb/b/f/c/o;->b:Lb/b/f/c/o;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lb/b/f/c/o;->a(I)Lb/b/f/c/o;

    move-result-object v0

    sput-object v0, Lb/b/f/c/o;->c:Lb/b/f/c/o;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/c/t;-><init>(I)V

    return-void
.end method

.method public static a(I)Lb/b/f/c/o;
    .registers 2

    new-instance v0, Lb/b/f/c/o;

    invoke-direct {v0, p0}, Lb/b/f/c/o;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    sget-object v0, Lb/b/f/d/c;->e:Lb/b/f/d/c;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "float"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/o;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lb/b/f/c/o;->j()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "float{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
