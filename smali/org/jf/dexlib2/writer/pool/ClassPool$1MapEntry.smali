.class Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private final classDef:Lorg/jf/dexlib2/writer/pool/PoolClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/writer/pool/ClassPool;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/pool/ClassPool;Lorg/jf/dexlib2/writer/pool/PoolClassDef;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/writer/pool/PoolClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;->this$0:Lorg/jf/dexlib2/writer/pool/ClassPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;->classDef:Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;->getKey()Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lorg/jf/dexlib2/writer/pool/PoolClassDef;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;->classDef:Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;->classDef:Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    iget v0, v0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->classDefIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;->classDef:Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    iget v0, v0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->classDefIndex:I

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;->classDef:Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->classDefIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/pool/ClassPool$1MapEntry;->setValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
