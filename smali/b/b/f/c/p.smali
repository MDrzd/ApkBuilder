.class public final Lb/b/f/c/p;
.super Lb/b/f/c/t;


# static fields
.field public static final a:Lb/b/f/c/p;

.field public static final b:Lb/b/f/c/p;

.field public static final c:Lb/b/f/c/p;

.field public static final d:Lb/b/f/c/p;

.field public static final e:Lb/b/f/c/p;

.field public static final f:Lb/b/f/c/p;

.field public static final g:Lb/b/f/c/p;

.field private static final h:[Lb/b/f/c/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1ff

    new-array v0, v0, [Lb/b/f/c/p;

    sput-object v0, Lb/b/f/c/p;->h:[Lb/b/f/c/p;

    const/4 v0, -0x1

    invoke-static {v0}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v0

    sput-object v0, Lb/b/f/c/p;->a:Lb/b/f/c/p;

    const/4 v0, 0x0

    invoke-static {v0}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v0

    sput-object v0, Lb/b/f/c/p;->b:Lb/b/f/c/p;

    const/4 v0, 0x1

    invoke-static {v0}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v0

    sput-object v0, Lb/b/f/c/p;->c:Lb/b/f/c/p;

    const/4 v0, 0x2

    invoke-static {v0}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v0

    sput-object v0, Lb/b/f/c/p;->d:Lb/b/f/c/p;

    const/4 v0, 0x3

    invoke-static {v0}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v0

    sput-object v0, Lb/b/f/c/p;->e:Lb/b/f/c/p;

    const/4 v0, 0x4

    invoke-static {v0}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v0

    sput-object v0, Lb/b/f/c/p;->f:Lb/b/f/c/p;

    const/4 v0, 0x5

    invoke-static {v0}, Lb/b/f/c/p;->a(I)Lb/b/f/c/p;

    move-result-object v0

    sput-object v0, Lb/b/f/c/p;->g:Lb/b/f/c/p;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/c/t;-><init>(I)V

    return-void
.end method

.method public static a(I)Lb/b/f/c/p;
    .registers 4

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x1ff

    sget-object v1, Lb/b/f/c/p;->h:[Lb/b/f/c/p;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/b/f/c/p;->j()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lb/b/f/c/p;

    invoke-direct {v1, p0}, Lb/b/f/c/p;-><init>(I)V

    sget-object p0, Lb/b/f/c/p;->h:[Lb/b/f/c/p;

    aput-object v1, p0, v0

    return-object v1
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    sget-object v0, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "int"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/p;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lb/b/f/c/p;->j()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "int{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
