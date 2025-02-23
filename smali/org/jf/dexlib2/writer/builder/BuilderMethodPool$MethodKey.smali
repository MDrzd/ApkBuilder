.class Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;
.super Lorg/jf/dexlib2/base/reference/BaseMethodReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/reference/MethodReference;


# instance fields
.field private final definingClass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final parameterTypes:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final returnType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->definingClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->parameterTypes:Ljava/util/List;

    iput-object p4, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->returnType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->parameterTypes:Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool$MethodKey;->returnType:Ljava/lang/String;

    return-object v0
.end method
