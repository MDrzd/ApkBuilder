.class public final Lb/b/f/c/ac;
.super Lb/b/f/c/t;


# static fields
.field public static final a:Lb/b/f/c/ac;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lb/b/f/c/ac;->a(S)Lb/b/f/c/ac;

    move-result-object v0

    sput-object v0, Lb/b/f/c/ac;->a:Lb/b/f/c/ac;

    return-void
.end method

.method private constructor <init>(S)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/c/t;-><init>(I)V

    return-void
.end method

.method public static a(I)Lb/b/f/c/ac;
    .registers 4

    int-to-short v0, p0

    if-ne v0, p0, :cond_0

    invoke-static {v0}, Lb/b/f/c/ac;->a(S)Lb/b/f/c/ac;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus short value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(S)Lb/b/f/c/ac;
    .registers 2

    new-instance v0, Lb/b/f/c/ac;

    invoke-direct {v0, p0}, Lb/b/f/c/ac;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    sget-object v0, Lb/b/f/d/c;->h:Lb/b/f/d/c;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "short"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/ac;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lb/b/f/c/ac;->j()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "short{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->p(I)Ljava/lang/String;

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
