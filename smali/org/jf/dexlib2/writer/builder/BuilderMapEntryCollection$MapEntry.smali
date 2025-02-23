.class Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private key:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;


# direct methods
.method private constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;)V

    return-void
.end method

.method static synthetic access$102(Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;->key:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;->getValue(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;->setValue(Ljava/lang/Object;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection$MapEntry;->setValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
