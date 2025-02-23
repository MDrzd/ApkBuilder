.class public Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
.super Lorg/jf/dexlib2/writer/EncodedValueWriter;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/DexWriter;


# direct methods
.method private constructor <init>(Lorg/jf/dexlib2/writer/DexWriter;Lorg/jf/dexlib2/writer/DexDataWriter;)V
    .registers 10
    .param p2    # Lorg/jf/dexlib2/writer/DexDataWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->this$0:Lorg/jf/dexlib2/writer/DexWriter;

    iget-object v2, p1, Lorg/jf/dexlib2/writer/DexWriter;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    iget-object v3, p1, Lorg/jf/dexlib2/writer/DexWriter;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    iget-object v4, p1, Lorg/jf/dexlib2/writer/DexWriter;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    iget-object v5, p1, Lorg/jf/dexlib2/writer/DexWriter;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    iget-object v6, p1, Lorg/jf/dexlib2/writer/DexWriter;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/jf/dexlib2/writer/EncodedValueWriter;-><init>(Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/StringSection;Lorg/jf/dexlib2/writer/TypeSection;Lorg/jf/dexlib2/writer/FieldSection;Lorg/jf/dexlib2/writer/MethodSection;Lorg/jf/dexlib2/writer/AnnotationSection;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jf/dexlib2/writer/DexWriter;Lorg/jf/dexlib2/writer/DexDataWriter;Lorg/jf/dexlib2/writer/DexWriter$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;-><init>(Lorg/jf/dexlib2/writer/DexWriter;Lorg/jf/dexlib2/writer/DexDataWriter;)V

    return-void
.end method


# virtual methods
.method protected writeEncodedValue(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->this$0:Lorg/jf/dexlib2/writer/DexWriter;

    invoke-virtual {v0, p0, p1}, Lorg/jf/dexlib2/writer/DexWriter;->writeEncodedValue(Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V

    return-void
.end method
