.class final Lcom/google/common/reflect/Types$NativeTypeVariableEquals;
.super Ljava/lang/Object;


# static fields
.field static final NATIVE_TYPE_VARIABLE_ONLY:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-class v0, Lcom/google/common/reflect/Types$NativeTypeVariableEquals;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-class v2, Lcom/google/common/reflect/Types$NativeTypeVariableEquals;

    const-string v3, "X"

    new-array v1, v1, [Ljava/lang/reflect/Type;

    invoke-static {v2, v3, v1}, Lcom/google/common/reflect/Types;->newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/common/reflect/Types$NativeTypeVariableEquals;->NATIVE_TYPE_VARIABLE_ONLY:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
