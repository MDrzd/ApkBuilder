.class public Lorg/jf/dexlib2/writer/pool/DexPool;
.super Lorg/jf/dexlib2/writer/DexWriter;


# instance fields
.field private final sections:[Lorg/jf/dexlib2/writer/pool/Markable;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DexWriter;-><init>(Lorg/jf/dexlib2/Opcodes;)V

    const/16 p1, 0x9

    new-array p1, p1, [Lorg/jf/dexlib2/writer/pool/Markable;

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/Markable;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/Markable;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/Markable;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/Markable;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/Markable;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/Markable;

    const/4 v1, 0x5

    aput-object v0, p1, v1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/Markable;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/Markable;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/Markable;

    const/16 v1, 0x8

    aput-object v0, p1, v1

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->sections:[Lorg/jf/dexlib2/writer/pool/Markable;

    return-void
.end method

.method public static writeTo(Ljava/lang/String;Lorg/jf/dexlib2/iface/DexFile;)V
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/DexFile;->getOpcodes()Lorg/jf/dexlib2/Opcodes;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/DexPool;-><init>(Lorg/jf/dexlib2/Opcodes;)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/ClassDef;

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/pool/DexPool;->internClass(Lorg/jf/dexlib2/iface/ClassDef;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jf/dexlib2/writer/io/FileDataStore;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lorg/jf/dexlib2/writer/io/FileDataStore;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/pool/DexPool;->writeTo(Lorg/jf/dexlib2/writer/io/DexDataStore;)V

    return-void
.end method

.method public static writeTo(Lorg/jf/dexlib2/writer/io/DexDataStore;Lorg/jf/dexlib2/iface/DexFile;)V
    .registers 4
    .param p0    # Lorg/jf/dexlib2/writer/io/DexDataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance v0, Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/DexFile;->getOpcodes()Lorg/jf/dexlib2/Opcodes;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/DexPool;-><init>(Lorg/jf/dexlib2/Opcodes;)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/ClassDef;

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/pool/DexPool;->internClass(Lorg/jf/dexlib2/iface/ClassDef;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lorg/jf/dexlib2/writer/pool/DexPool;->writeTo(Lorg/jf/dexlib2/writer/io/DexDataStore;)V

    return-void
.end method


# virtual methods
.method protected getSectionProvider()Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public internClass(Lorg/jf/dexlib2/iface/ClassDef;)V
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/ClassPool;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/pool/ClassPool;->intern(Lorg/jf/dexlib2/iface/ClassDef;)V

    return-void
.end method

.method internEncodedValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p1, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/TypePool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/AnnotationElement;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v1, Lorg/jf/dexlib2/writer/pool/StringPool;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/writer/pool/StringPool;->intern(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/AnnotationElement;->getValue()Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/writer/pool/DexPool;->internEncodedValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    check-cast p1, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/value/EncodedValue;

    invoke-virtual {p0, v0}, Lorg/jf/dexlib2/writer/pool/DexPool;->internEncodedValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)V

    goto :goto_1

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/FieldPool;

    check-cast p1, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/pool/FieldPool;->intern(Lorg/jf/dexlib2/iface/reference/FieldReference;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/MethodPool;

    check-cast p1, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/MethodReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/pool/MethodPool;->intern(Lorg/jf/dexlib2/iface/reference/MethodReference;)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/FieldPool;

    check-cast p1, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/pool/FieldPool;->intern(Lorg/jf/dexlib2/iface/reference/FieldReference;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/TypePool;

    check-cast p1, Lorg/jf/dexlib2/iface/value/TypeEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/TypeEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/pool/TypePool;->intern(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v0, Lorg/jf/dexlib2/writer/pool/StringPool;

    check-cast p1, Lorg/jf/dexlib2/iface/value/StringEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/pool/StringPool;->intern(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mark()V
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->sections:[Lorg/jf/dexlib2/writer/pool/Markable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/jf/dexlib2/writer/pool/Markable;->mark()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/DexPool;->sections:[Lorg/jf/dexlib2/writer/pool/Markable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/jf/dexlib2/writer/pool/Markable;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic writeEncodedValue(Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p2, Lorg/jf/dexlib2/iface/value/EncodedValue;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/writer/pool/DexPool;->writeEncodedValue(Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Lorg/jf/dexlib2/iface/value/EncodedValue;)V

    return-void
.end method

.method protected writeEncodedValue(Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Lorg/jf/dexlib2/iface/value/EncodedValue;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Unrecognized value type: %d"

    invoke-direct {p1, p2, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    check-cast p2, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeBoolean(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeNull()V

    return-void

    :pswitch_2
    check-cast p2, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeAnnotation(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void

    :pswitch_3
    check-cast p2, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeArray(Ljava/util/Collection;)V

    return-void

    :pswitch_4
    check-cast p2, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeEnum(Lorg/jf/dexlib2/iface/reference/FieldReference;)V

    return-void

    :pswitch_5
    check-cast p2, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/MethodReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeMethod(Lorg/jf/dexlib2/iface/reference/MethodReference;)V

    return-void

    :pswitch_6
    check-cast p2, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeField(Lorg/jf/dexlib2/iface/reference/FieldReference;)V

    return-void

    :pswitch_7
    check-cast p2, Lorg/jf/dexlib2/iface/value/TypeEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/TypeEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeType(Ljava/lang/Object;)V

    return-void

    :pswitch_8
    check-cast p2, Lorg/jf/dexlib2/iface/value/StringEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeString(Ljava/lang/Object;)V

    return-void

    :pswitch_9
    check-cast p2, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeDouble(D)V

    return-void

    :pswitch_a
    check-cast p2, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeFloat(F)V

    return-void

    :pswitch_b
    check-cast p2, Lorg/jf/dexlib2/iface/value/IntEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeInt(I)V

    return-void

    :pswitch_c
    check-cast p2, Lorg/jf/dexlib2/iface/value/CharEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeChar(C)V

    return-void

    :pswitch_d
    check-cast p2, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeShort(I)V

    return-void

    :cond_0
    check-cast p2, Lorg/jf/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeLong(J)V

    return-void

    :cond_1
    check-cast p2, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeByte(B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
