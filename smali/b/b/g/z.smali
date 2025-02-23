.class public final enum Lb/b/g/z;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lb/b/g/z;

.field public static final enum b:Lb/b/g/z;

.field public static final enum c:Lb/b/g/z;

.field public static final enum d:Lb/b/g/z;

.field public static final enum e:Lb/b/g/z;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lb/b/g/z;

    const-string v1, "MOVE_PARAM_COMBINER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/g/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/z;->a:Lb/b/g/z;

    new-instance v0, Lb/b/g/z;

    const-string v1, "SCCP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/b/g/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/z;->b:Lb/b/g/z;

    new-instance v0, Lb/b/g/z;

    const-string v1, "LITERAL_UPGRADE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lb/b/g/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/z;->c:Lb/b/g/z;

    new-instance v0, Lb/b/g/z;

    const-string v1, "CONST_COLLECTOR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lb/b/g/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/z;->d:Lb/b/g/z;

    new-instance v0, Lb/b/g/z;

    const-string v1, "ESCAPE_ANALYSIS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lb/b/g/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/z;->e:Lb/b/g/z;

    const/4 v0, 0x5

    new-array v0, v0, [Lb/b/g/z;

    sget-object v1, Lb/b/g/z;->a:Lb/b/g/z;

    aput-object v1, v0, v2

    sget-object v1, Lb/b/g/z;->b:Lb/b/g/z;

    aput-object v1, v0, v3

    sget-object v1, Lb/b/g/z;->c:Lb/b/g/z;

    aput-object v1, v0, v4

    sget-object v1, Lb/b/g/z;->d:Lb/b/g/z;

    aput-object v1, v0, v5

    sget-object v1, Lb/b/g/z;->e:Lb/b/g/z;

    aput-object v1, v0, v6

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
