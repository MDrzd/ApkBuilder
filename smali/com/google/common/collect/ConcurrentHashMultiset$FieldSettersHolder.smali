.class Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;
.super Ljava/lang/Object;


# static fields
.field static final COUNT_MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    const-string v1, "countMap"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;->COUNT_MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
