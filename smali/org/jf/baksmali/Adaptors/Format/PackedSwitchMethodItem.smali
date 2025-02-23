.class public Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;
.super Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;


# instance fields
.field private commentedOut:Z

.field private final firstKey:I

.field private final targets:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;)V
    .registers 12

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)V

    invoke-virtual {p1, p2}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->getPackedSwitchBaseAddress(I)I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;->targets:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_1

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    if-eqz v0, :cond_0

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v0

    move v2, v0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Lorg/jf/baksmali/Adaptors/MethodDefinition;->getLabelCache()Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;

    move-result-object v4

    new-instance v5, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    iget-object v6, p1, Lorg/jf/baksmali/Adaptors/MethodDefinition;->classDef:Lorg/jf/baksmali/Adaptors/ClassDefinition;

    iget-object v6, v6, Lorg/jf/baksmali/Adaptors/ClassDefinition;->options:Lorg/jf/baksmali/BaksmaliOptions;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result v3

    add-int/2addr v3, p2

    const-string v7, "pswitch_"

    invoke-direct {v5, v6, v3, v7}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;-><init>(Lorg/jf/baksmali/BaksmaliOptions;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->internLabel(Lorg/jf/baksmali/Adaptors/LabelMethodItem;)Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    move-result-object v3

    iget-object v4, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;->targets:Ljava/util/List;

    new-instance v5, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchLabelTarget;

    invoke-direct {v5, v3}, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchLabelTarget;-><init>(Lorg/jf/baksmali/Adaptors/LabelMethodItem;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;->commentedOut:Z

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/instruction/formats/PackedSwitchPayload;->getSwitchElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jf/dexlib2/iface/instruction/SwitchElement;

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result p3

    move v2, p3

    const/4 v0, 0x0

    :cond_2
    iget-object p3, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;->targets:Ljava/util/List;

    new-instance v3, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchOffsetTarget;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result p2

    invoke-direct {v3, p2}, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchOffsetTarget;-><init>(I)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput v2, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;->firstKey:I

    return-void
.end method


# virtual methods
.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 8

    iget-boolean v0, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;->commentedOut:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;

    invoke-direct {v0, p1}, Lorg/jf/baksmali/Adaptors/CommentingIndentingWriter;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    :cond_0
    const-string v0, ".packed-switch "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget v0, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;->firstKey:I

    invoke-static {p1, v0}, Lorg/jf/baksmali/Renderers/IntegerRenderer;->writeTo(Lorg/jf/util/IndentingWriter;I)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->indent(I)V

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    iget v2, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;->firstKey:I

    iget-object v3, p0, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;->targets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchTarget;

    invoke-virtual {v4, p1}, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem$PackedSwitchTarget;->writeTargetTo(Lorg/jf/util/IndentingWriter;)V

    invoke-virtual {p0, p1, v2}, Lorg/jf/baksmali/Adaptors/Format/PackedSwitchMethodItem;->writeCommentIfResourceId(Lorg/jf/util/IndentingWriter;I)Z

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    add-int/2addr v2, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->deindent(I)V

    const-string v0, ".end packed-switch"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return v5
.end method
