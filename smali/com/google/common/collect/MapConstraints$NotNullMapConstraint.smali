.class final enum Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/common/collect/MapConstraint;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

.field public static final enum INSTANCE:Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;->INSTANCE:Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

    sget-object v1, Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;->INSTANCE:Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;->$VALUES:[Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;
    .registers 2

    const-class v0, Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;
    .registers 1

    sget-object v0, Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;->$VALUES:[Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

    return-object v0
.end method


# virtual methods
.method public final checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Not null"

    return-object v0
.end method
