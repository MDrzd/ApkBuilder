.class public Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem;
.super Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;


# instance fields
.field private commentedOut:Z

.field private final targets:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)V

    invoke-virtual {p1, p2}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->getSparseSwitchBaseAddress(I)I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem;->targets:Ljava/util/List;

    if-ltz p2, :cond_1

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    invoke-virtual {p1}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->getLabelCache()Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;

    move-result-object v1

    new-instance v2, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    iget-object v3, p1, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v3, v3, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v4

    add-int/2addr v4, p2

    const-string v5, "sswitch_"

    invoke-direct {v2, v3, v4, v5}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;-><init>(Lorg/jf/baksmali/BaksmaliOptions;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->internLabel(Lorg/jf/baksmali/Adaptors/LabelMethodItem;)Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem;->targets:Ljava/util/List;

    new-instance v3, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchLabelTarget;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v0

    invoke-direct {v3, v0, v1}, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchLabelTarget;-><init>(ILorg/jf/baksmali/Adaptors/LabelMethodItem;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem;->commentedOut:Z

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/SparseSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    iget-object p3, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem;->targets:Ljava/util/List;

    new-instance v0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchOffsetTarget;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v1

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchOffsetTarget;-><init>(II)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 6

    iget-boolean v0, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem;->commentedOut:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;

    invoke-direct {v0, p1}, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    :cond_0
    const-string v0, ".sparse-switch\n"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->indent(I)V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;

    invoke-virtual {v2}, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;->getKey()I

    move-result v3

    invoke-static {p1, v3}, Lorg/jf/baksmali/Renderers/IntegerRenderer;->writeTo(Lorg/jf/util/IndentingWriter;I)V

    const-string v3, " -> "

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;->writeTargetTo(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {v2}, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem$SparseSwitchTarget;->getKey()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/jf/baksmali/Adaptors/Format/SparseSwitchMethodItem;->writeCommentIfResourceId(Lorg/jf/util/IndentingWriter;I)Z

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Lorg/jf/util/IndentingWriter;->write(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->deindent(I)V

    const-string v0, ".end sparse-switch"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
