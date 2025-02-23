.class public final Lcom/google/common/collect/MutableClassToInstanceMap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedMap;

# interfaces
.implements Lcom/google/common/collect/ClassToInstanceMap;


# static fields
.field private static final VALUE_CAN_BE_CAST_TO_KEY:Lcom/google/common/collect/MapConstraint;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/MutableClassToInstanceMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/MutableClassToInstanceMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/MutableClassToInstanceMap;->VALUE_CAN_BE_CAST_TO_KEY:Lcom/google/common/collect/MapConstraint;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 3

    sget-object v0, Lcom/google/common/collect/MutableClassToInstanceMap;->VALUE_CAN_BE_CAST_TO_KEY:Lcom/google/common/collect/MapConstraint;

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/google/common/primitives/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static create()Lcom/google/common/collect/MutableClassToInstanceMap;
    .registers 2

    new-instance v0, Lcom/google/common/collect/MutableClassToInstanceMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/MutableClassToInstanceMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/MutableClassToInstanceMap;
    .registers 2

    new-instance v0, Lcom/google/common/collect/MutableClassToInstanceMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MutableClassToInstanceMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic putAll(Ljava/util/Map;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
