.class abstract enum Lb/b/g/a/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lb/b/g/a/b;

.field public static final enum b:Lb/b/g/a/b;

.field public static final enum c:Lb/b/g/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lb/b/g/a/c;

    const-string v1, "EVEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/g/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/a/b;->a:Lb/b/g/a/b;

    new-instance v0, Lb/b/g/a/d;

    const-string v1, "ODD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/b/g/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/a/b;->b:Lb/b/g/a/b;

    new-instance v0, Lb/b/g/a/e;

    const-string v1, "UNSPECIFIED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lb/b/g/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/g/a/b;->c:Lb/b/g/a/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lb/b/g/a/b;

    sget-object v1, Lb/b/g/a/b;->a:Lb/b/g/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lb/b/g/a/b;->b:Lb/b/g/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lb/b/g/a/b;->c:Lb/b/g/a/b;

    aput-object v1, v0, v4

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lb/b/g/a/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method abstract a(Ljava/util/BitSet;I)I
.end method
