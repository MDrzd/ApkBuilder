.class public final enum Lb/b/g/p;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lb/b/g/p;

.field public static final enum b:Lb/b/g/p;

.field public static final enum c:Lb/b/g/p;

.field public static final enum d:Lb/b/g/p;

.field private static enum e:Lb/b/g/p;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lb/b/g/p;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/g/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/p;->e:Lb/b/g/p;

    new-instance v0, Lb/b/g/p;

    const-string v1, "NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/b/g/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/p;->a:Lb/b/g/p;

    new-instance v0, Lb/b/g/p;

    const-string v1, "METHOD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lb/b/g/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/p;->b:Lb/b/g/p;

    new-instance v0, Lb/b/g/p;

    const-string v1, "INTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lb/b/g/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/p;->c:Lb/b/g/p;

    new-instance v0, Lb/b/g/p;

    const-string v1, "GLOBAL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lb/b/g/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/p;->d:Lb/b/g/p;

    const/4 v0, 0x5

    new-array v0, v0, [Lb/b/g/p;

    sget-object v1, Lb/b/g/p;->e:Lb/b/g/p;

    aput-object v1, v0, v2

    sget-object v1, Lb/b/g/p;->a:Lb/b/g/p;

    aput-object v1, v0, v3

    sget-object v1, Lb/b/g/p;->b:Lb/b/g/p;

    aput-object v1, v0, v4

    sget-object v1, Lb/b/g/p;->c:Lb/b/g/p;

    aput-object v1, v0, v5

    sget-object v1, Lb/b/g/p;->d:Lb/b/g/p;

    aput-object v1, v0, v6

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
