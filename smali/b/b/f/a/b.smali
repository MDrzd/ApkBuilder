.class public final enum Lb/b/f/a/b;
.super Ljava/lang/Enum;

# interfaces
.implements Lb/b/h/s;


# static fields
.field public static final enum a:Lb/b/f/a/b;

.field public static final enum b:Lb/b/f/a/b;

.field public static final enum c:Lb/b/f/a/b;

.field public static final enum d:Lb/b/f/a/b;

.field private static final synthetic f:[Lb/b/f/a/b;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lb/b/f/a/b;

    const-string v1, "RUNTIME"

    const-string v2, "runtime"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lb/b/f/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/b/f/a/b;->a:Lb/b/f/a/b;

    new-instance v0, Lb/b/f/a/b;

    const-string v1, "BUILD"

    const-string v2, "build"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lb/b/f/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/b/f/a/b;->b:Lb/b/f/a/b;

    new-instance v0, Lb/b/f/a/b;

    const-string v1, "SYSTEM"

    const-string v2, "system"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lb/b/f/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/b/f/a/b;->c:Lb/b/f/a/b;

    new-instance v0, Lb/b/f/a/b;

    const-string v1, "EMBEDDED"

    const-string v2, "embedded"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lb/b/f/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/b/f/a/b;->d:Lb/b/f/a/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lb/b/f/a/b;

    sget-object v1, Lb/b/f/a/b;->a:Lb/b/f/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lb/b/f/a/b;->b:Lb/b/f/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lb/b/f/a/b;->c:Lb/b/f/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lb/b/f/a/b;->d:Lb/b/f/a/b;

    aput-object v1, v0, v6

    sput-object v0, Lb/b/f/a/b;->f:[Lb/b/f/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lb/b/f/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()[Lb/b/f/a/b;
    .registers 1

    sget-object v0, Lb/b/f/a/b;->f:[Lb/b/f/a/b;

    invoke-virtual {v0}, [Lb/b/f/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/b/f/a/b;

    return-object v0
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/a/b;->e:Ljava/lang/String;

    return-object v0
.end method
