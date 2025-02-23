.class public Lorg/jf/baksmali/Adaptors/ClassDefinition;
.super Ljava/lang/Object;


# instance fields
.field public final classDef:Lorg/jf/dexlib2/iface/ClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final fieldsSetInStaticConstructor:Ljava/util/HashSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final options:Lorg/jf/baksmali/BaksmaliOptions;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected validationErrors:Z


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/BaksmaliOptions;Lorg/jf/dexlib2/iface/ClassDef;)V
    .registers 3
    .param p1    # Lorg/jf/baksmali/BaksmaliOptions;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iput-object p2, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-static {p2}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->findFieldsSetInStaticConstructor(Lorg/jf/dexlib2/iface/ClassDef;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->fieldsSetInStaticConstructor:Ljava/util/HashSet;

    return-void
.end method

.method private static findFieldsSetInStaticConstructor(Lorg/jf/dexlib2/iface/ClassDef;)Ljava/util/HashSet;
    .registers 7
    .param p0    # Lorg/jf/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<clinit>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/Method;->getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/Instruction;

    sget-object v4, Lorg/jf/baksmali/Adaptors/ClassDefinition$1;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/reference/FieldReference;
    :try_end_0
    .catch Lorg/jf/dexlib2/dexbacked/DexBackedDexFile$InvalidItemIndex; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lorg/jf/dexlib2/util/ReferenceUtil;->getShortFieldDescriptor(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private writeAccessFlags(Lorg/jf/util/IndentingWriter;)V
    .registers 6

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Lorg/jf/dexlib2/AccessFlags;->getAccessFlagsForClass(I)[Lorg/jf/dexlib2/AccessFlags;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/jf/dexlib2/AccessFlags;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeAnnotations(Lorg/jf/util/IndentingWriter;)V
    .registers 5

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\n\n"

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v1, "# annotations\n"

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v2, v2, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {p1, v0, v1}, Lorg/jf/baksmali/Adaptors/AnnotationFormatter;->writeTo(Lorg/jf/util/IndentingWriter;Ljava/util/Collection;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private writeClass(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    const-string v0, ".class "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->writeAccessFlags(Lorg/jf/util/IndentingWriter;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void
.end method

.method private writeDirectMethods(Lorg/jf/util/IndentingWriter;)Ljava/util/Set;
    .registers 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    instance-of v1, v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    check-cast v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getDirectMethods(Z)Ljava/lang/Iterable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/Method;

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v2, "\n\n"

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v2, "# direct methods"

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-static {v3, v4}, Lorg/jf/dexlib2/util/ReferenceUtil;->getMethodDescriptor(Lorg/jf/dexlib2/iface/reference/MethodReference;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "# duplicate method ignored\n"

    invoke-virtual {p1, v4}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    new-instance v4, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;

    invoke-direct {v4, p1}, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_2

    :cond_2
    move-object v4, p1

    :goto_2
    invoke-interface {v3}, Lorg/jf/dexlib2/iface/Method;->getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    invoke-static {v4, v3, v5}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->writeEmptyMethodTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Method;Lorg/jf/baksmali/BaksmaliOptions;)V

    goto :goto_1

    :cond_3
    new-instance v6, Lorg/jf/baksmali/Adaptors/MethodDefinition;

    invoke-direct {v6, p0, v3, v5}, Lorg/jf/baksmali/Adaptors/MethodDefinition;-><init>(Lorg/jf/baksmali/Adaptors/ClassDefinition;Lorg/jf/dexlib2/iface/Method;Lorg/jf/dexlib2/iface/MethodImplementation;)V

    invoke-virtual {v6, v4}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->writeTo(Lorg/jf/util/IndentingWriter;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private writeInstanceFields(Lorg/jf/util/IndentingWriter;Ljava/util/Set;)V
    .registers 15

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    instance-of v1, v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    check-cast v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getInstanceFields(Z)Ljava/lang/Iterable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/iface/Field;

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const-string v3, "\n\n"

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v3, "# instance fields"

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_1
    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-static {v4}, Lorg/jf/dexlib2/util/ReferenceUtil;->getShortFieldDescriptor(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_2

    const-string v7, "# duplicate field ignored\n"

    invoke-virtual {p1, v7}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    new-instance v7, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;

    invoke-direct {v7, p1}, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;-><init>(Ljava/io/Writer;)V

    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Ignoring duplicate field: %s->%s"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v11}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v2

    aput-object v6, v8, v5

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Duplicate static+instance field found: %s->%s"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v10}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v2

    aput-object v6, v8, v5

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "You will need to rename one of these fields, including all references."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v5, "# There is both a static and instance field with this signature.\n# You will need to rename one of these fields, including all references.\n"

    invoke-virtual {p1, v5}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :cond_3
    move-object v7, p1

    :goto_2
    iget-object v5, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    invoke-static {v5, v7, v4, v2}, Lorg/jf/baksmali/Adaptors/FieldDefinition;->writeTo(Lorg/jf/baksmali/BaksmaliOptions;Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Field;Z)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private writeInterfaces(Lorg/jf/util/IndentingWriter;)V
    .registers 6

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getInterfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    const-string v2, "# interfaces\n"

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".implements "

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeSourceFile(Lorg/jf/util/IndentingWriter;)V
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ".source \""

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/jf/util/StringUtils;->writeEscapedString(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v0, "\"\n"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private writeStaticFields(Lorg/jf/util/IndentingWriter;)Ljava/util/Set;
    .registers 14

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    instance-of v1, v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    check-cast v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getStaticFields(Z)Ljava/lang/Iterable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/iface/Field;

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const-string v3, "\n\n"

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v3, "# static fields"

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_1
    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-static {v4}, Lorg/jf/dexlib2/util/ReferenceUtil;->getShortFieldDescriptor(Lorg/jf/dexlib2/iface/reference/FieldReference;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "# duplicate field ignored\n"

    invoke-virtual {p1, v7}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    new-instance v7, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;

    invoke-direct {v7, p1}, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;-><init>(Ljava/io/Writer;)V

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Ignoring duplicate field: %s->%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v11}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    aput-object v6, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->fieldsSetInStaticConstructor:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    move-object v7, p1

    :goto_2
    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    invoke-static {v6, v7, v4, v5}, Lorg/jf/baksmali/Adaptors/FieldDefinition;->writeTo(Lorg/jf/baksmali/BaksmaliOptions;Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Field;Z)V

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private writeSuper(Lorg/jf/util/IndentingWriter;)V
    .registers 4

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ".super "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    :cond_0
    return-void
.end method

.method private writeVirtualMethods(Lorg/jf/util/IndentingWriter;Ljava/util/Set;)V
    .registers 14

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    instance-of v1, v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    check-cast v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->getVirtualMethods(Z)Ljava/lang/Iterable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/iface/Method;

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const-string v3, "\n\n"

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const-string v3, "# virtual methods"

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_1
    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-static {v4, v5}, Lorg/jf/dexlib2/util/ReferenceUtil;->getMethodDescriptor(Lorg/jf/dexlib2/iface/reference/MethodReference;Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v5, "# duplicate method ignored\n"

    invoke-virtual {p1, v5}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    new-instance v5, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;

    invoke-direct {v5, p1}, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_2

    :cond_2
    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "# There is both a direct and virtual method with this signature.\n# You will need to rename one of these methods, including all references.\n"

    invoke-virtual {p1, v7}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Duplicate direct+virtual method found: %s->%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v10}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    aput-object v6, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "You will need to rename one of these methods, including all references."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    move-object v5, p1

    :goto_2
    invoke-interface {v4}, Lorg/jf/dexlib2/iface/Method;->getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    invoke-static {v5, v4, v6}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->writeEmptyMethodTo(Lorg/jf/util/IndentingWriter;Lorg/jf/dexlib2/iface/Method;Lorg/jf/baksmali/BaksmaliOptions;)V

    goto :goto_1

    :cond_4
    new-instance v7, Lorg/jf/baksmali/Adaptors/MethodDefinition;

    invoke-direct {v7, p0, v4, v6}, Lorg/jf/baksmali/Adaptors/MethodDefinition;-><init>(Lorg/jf/baksmali/Adaptors/ClassDefinition;Lorg/jf/dexlib2/iface/Method;Lorg/jf/dexlib2/iface/MethodImplementation;)V

    invoke-virtual {v7, v5}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->writeTo(Lorg/jf/util/IndentingWriter;)V

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public hadValidationErrors()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jf/baksmali/Adaptors/ClassDefinition;->validationErrors:Z

    return v0
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->writeClass(Lorg/jf/util/IndentingWriter;)V

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->writeSuper(Lorg/jf/util/IndentingWriter;)V

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->writeSourceFile(Lorg/jf/util/IndentingWriter;)V

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->writeInterfaces(Lorg/jf/util/IndentingWriter;)V

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->writeAnnotations(Lorg/jf/util/IndentingWriter;)V

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->writeStaticFields(Lorg/jf/util/IndentingWriter;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->writeInstanceFields(Lorg/jf/util/IndentingWriter;Ljava/util/Set;)V

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->writeDirectMethods(Lorg/jf/util/IndentingWriter;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jf/baksmali/Adaptors/ClassDefinition;->writeVirtualMethods(Lorg/jf/util/IndentingWriter;Ljava/util/Set;)V

    return-void
.end method
