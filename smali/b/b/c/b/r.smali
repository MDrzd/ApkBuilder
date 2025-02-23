.class public final enum Lb/b/c/b/r;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lb/b/c/b/r;

.field public static final enum b:Lb/b/c/b/r;

.field public static final enum c:Lb/b/c/b/r;

.field public static final enum d:Lb/b/c/b/r;

.field public static final enum e:Lb/b/c/b/r;

.field public static final enum f:Lb/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lb/b/c/b/r;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/c/b/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/c/b/r;->a:Lb/b/c/b/r;

    new-instance v0, Lb/b/c/b/r;

    const-string v1, "END_SIMPLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/b/c/b/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/c/b/r;->b:Lb/b/c/b/r;

    new-instance v0, Lb/b/c/b/r;

    const-string v1, "END_REPLACED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lb/b/c/b/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/c/b/r;->c:Lb/b/c/b/r;

    new-instance v0, Lb/b/c/b/r;

    const-string v1, "END_MOVED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lb/b/c/b/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/c/b/r;->d:Lb/b/c/b/r;

    new-instance v0, Lb/b/c/b/r;

    const-string v1, "END_CLOBBERED_BY_PREV"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lb/b/c/b/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/c/b/r;->e:Lb/b/c/b/r;

    new-instance v0, Lb/b/c/b/r;

    const-string v1, "END_CLOBBERED_BY_NEXT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lb/b/c/b/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/c/b/r;->f:Lb/b/c/b/r;

    const/4 v0, 0x6

    new-array v0, v0, [Lb/b/c/b/r;

    sget-object v1, Lb/b/c/b/r;->a:Lb/b/c/b/r;

    aput-object v1, v0, v2

    sget-object v1, Lb/b/c/b/r;->b:Lb/b/c/b/r;

    aput-object v1, v0, v3

    sget-object v1, Lb/b/c/b/r;->c:Lb/b/c/b/r;

    aput-object v1, v0, v4

    sget-object v1, Lb/b/c/b/r;->d:Lb/b/c/b/r;

    aput-object v1, v0, v5

    sget-object v1, Lb/b/c/b/r;->e:Lb/b/c/b/r;

    aput-object v1, v0, v6

    sget-object v1, Lb/b/c/b/r;->f:Lb/b/c/b/r;

    aput-object v1, v0, v7

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
