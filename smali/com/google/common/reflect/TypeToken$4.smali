.class final Lcom/google/common/reflect/TypeToken$4;
.super Lcom/google/common/reflect/TypeVisitor;


# instance fields
.field final synthetic val$builder:Lcom/google/common/collect/ImmutableSet$Builder;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet$Builder;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$4;->val$builder:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {p0}, Lcom/google/common/reflect/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method final visitClass(Ljava/lang/Class;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$4;->val$builder:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    return-void
.end method

.method final visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$4;->val$builder:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/Types;->getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    return-void
.end method

.method final visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$4;->val$builder:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    return-void
.end method

.method final visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$4;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method final visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$4;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method
