.class abstract enum Lcom/google/common/collect/MapMaker$RemovalCause;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

.field public static final enum SIZE:Lcom/google/common/collect/MapMaker$RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$1;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMaker$RemovalCause$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$2;

    const-string v1, "REPLACED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/MapMaker$RemovalCause$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$3;

    const-string v1, "COLLECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/MapMaker$RemovalCause$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$4;

    const-string v1, "EXPIRED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/common/collect/MapMaker$RemovalCause$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$5;

    const-string v1, "SIZE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/common/collect/MapMaker$RemovalCause$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->SIZE:Lcom/google/common/collect/MapMaker$RemovalCause;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/collect/MapMaker$RemovalCause;

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->SIZE:Lcom/google/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->$VALUES:[Lcom/google/common/collect/MapMaker$RemovalCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/MapMaker$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMaker$RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMaker$RemovalCause;
    .registers 2

    const-class v0, Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/MapMaker$RemovalCause;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/MapMaker$RemovalCause;
    .registers 1

    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->$VALUES:[Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMaker$RemovalCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMaker$RemovalCause;

    return-object v0
.end method


# virtual methods
.method abstract wasEvicted()Z
.end method
