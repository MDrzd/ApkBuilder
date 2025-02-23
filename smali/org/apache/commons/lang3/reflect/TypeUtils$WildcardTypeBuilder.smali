.class public Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# instance fields
.field private lowerBounds:[Ljava/lang/reflect/Type;

.field private upperBounds:[Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->build()Ljava/lang/reflect/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/reflect/WildcardType;
    .registers 5

    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;

    iget-object v1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->upperBounds:[Ljava/lang/reflect/Type;

    iget-object v2, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->lowerBounds:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v0
.end method

.method public varargs withLowerBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->lowerBounds:[Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public varargs withUpperBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->upperBounds:[Ljava/lang/reflect/Type;

    return-object p0
.end method
