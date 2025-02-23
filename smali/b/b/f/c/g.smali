.class public final Lb/b/f/c/g;
.super Lb/b/f/c/t;


# static fields
.field public static final a:Lb/b/f/c/g;

.field private static b:Lb/b/f/c/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/f/c/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/f/c/g;-><init>(Z)V

    sput-object v0, Lb/b/f/c/g;->a:Lb/b/f/c/g;

    new-instance v0, Lb/b/f/c/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb/b/f/c/g;-><init>(Z)V

    sput-object v0, Lb/b/f/c/g;->b:Lb/b/f/c/g;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/c/t;-><init>(I)V

    return-void
.end method

.method public static a(I)Lb/b/f/c/g;
    .registers 4

    if-nez p0, :cond_0

    sget-object p0, Lb/b/f/c/g;->a:Lb/b/f/c/g;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lb/b/f/c/g;->b:Lb/b/f/c/g;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m()Z
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/g;->j()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    sget-object v0, Lb/b/f/d/c;->a:Lb/b/f/d/c;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "boolean"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lb/b/f/c/g;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    return-object v0

    :cond_0
    const-string v0, "false"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lb/b/f/c/g;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "boolean{true}"

    return-object v0

    :cond_0
    const-string v0, "boolean{false}"

    return-object v0
.end method
