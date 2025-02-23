.class final enum Lb/b/b/a/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lb/b/b/a/f;

.field public static final enum b:Lb/b/b/a/f;

.field public static final enum c:Lb/b/b/a/f;

.field public static final enum d:Lb/b/b/a/f;

.field private static final synthetic e:[Lb/b/b/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lb/b/b/a/f;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/b/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/b/a/f;->a:Lb/b/b/a/f;

    new-instance v0, Lb/b/b/a/f;

    const-string v1, "INNERCLASS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/b/b/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/b/a/f;->b:Lb/b/b/a/f;

    new-instance v0, Lb/b/b/a/f;

    const-string v1, "METHOD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lb/b/b/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/b/a/f;->c:Lb/b/b/a/f;

    new-instance v0, Lb/b/b/a/f;

    const-string v1, "PACKAGE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lb/b/b/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/b/a/f;->d:Lb/b/b/a/f;

    const/4 v0, 0x4

    new-array v0, v0, [Lb/b/b/a/f;

    sget-object v1, Lb/b/b/a/f;->a:Lb/b/b/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lb/b/b/a/f;->b:Lb/b/b/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/b/b/a/f;->c:Lb/b/b/a/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/b/b/a/f;->d:Lb/b/b/a/f;

    aput-object v1, v0, v5

    sput-object v0, Lb/b/b/a/f;->e:[Lb/b/b/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lb/b/b/a/f;
    .registers 2

    const-class v0, Lb/b/b/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/b/b/a/f;

    return-object p0
.end method

.method public static a()[Lb/b/b/a/f;
    .registers 1

    sget-object v0, Lb/b/b/a/f;->e:[Lb/b/b/a/f;

    invoke-virtual {v0}, [Lb/b/b/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/b/b/a/f;

    return-object v0
.end method
