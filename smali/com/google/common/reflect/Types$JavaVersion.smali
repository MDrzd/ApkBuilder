.class abstract enum Lcom/google/common/reflect/Types$JavaVersion;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/reflect/Types$JavaVersion;

.field static final CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA6:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA7:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA8:Lcom/google/common/reflect/Types$JavaVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/common/reflect/Types$JavaVersion$1;

    const-string v1, "JAVA6"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/Types$JavaVersion$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA6:Lcom/google/common/reflect/Types$JavaVersion;

    new-instance v0, Lcom/google/common/reflect/Types$JavaVersion$2;

    const-string v1, "JAVA7"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/common/reflect/Types$JavaVersion$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA7:Lcom/google/common/reflect/Types$JavaVersion;

    new-instance v0, Lcom/google/common/reflect/Types$JavaVersion$3;

    const-string v1, "JAVA8"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/common/reflect/Types$JavaVersion$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/reflect/Types$JavaVersion;

    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->JAVA6:Lcom/google/common/reflect/Types$JavaVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->JAVA7:Lcom/google/common/reflect/Types$JavaVersion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/reflect/Types$JavaVersion;->$VALUES:[Lcom/google/common/reflect/Types$JavaVersion;

    const-class v0, Ljava/lang/reflect/AnnotatedElement;

    const-class v1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    :goto_0
    sput-object v0, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    return-void

    :cond_0
    new-instance v0, Lcom/google/common/reflect/Types$JavaVersion$4;

    invoke-direct {v0}, Lcom/google/common/reflect/Types$JavaVersion$4;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/reflect/Types$JavaVersion$4;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA7:Lcom/google/common/reflect/Types$JavaVersion;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA6:Lcom/google/common/reflect/Types$JavaVersion;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/Types$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/Types$JavaVersion;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/Types$JavaVersion;
    .registers 2

    const-class v0, Lcom/google/common/reflect/Types$JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/reflect/Types$JavaVersion;

    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/Types$JavaVersion;
    .registers 1

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->$VALUES:[Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0}, [Lcom/google/common/reflect/Types$JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/Types$JavaVersion;

    return-object v0
.end method


# virtual methods
.method abstract newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/google/common/reflect/Types;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final usedInGenericType([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;
    .registers 6

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/Types$JavaVersion;->usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method abstract usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
