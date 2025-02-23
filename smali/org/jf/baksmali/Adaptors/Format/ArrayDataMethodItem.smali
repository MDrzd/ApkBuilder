.class public Lorg/jf/baksmali/Adaptors/Format/ArrayDataMethodItem;
.super Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItem;-><init>(Lorg/jf/baksmali/Adaptors/MethodDefinition;ILorg/jf/dexlib2/iface/instruction/Instruction;)V

    return-void
.end method


# virtual methods
.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 9

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Format/ArrayDataMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v0, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v0

    const-string v1, ".array-data "

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/Format/ArrayDataMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v1, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getElementWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->printSignedIntAsDec(I)V

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->write(I)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->indent(I)V

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/Format/ArrayDataMethodItem;->instruction:Lorg/jf/dexlib2/iface/instruction/Instruction;

    check-cast v2, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/instruction/formats/ArrayPayload;->getArrayElements()Ljava/util/List;

    move-result-object v2

    const-string v3, ""

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "s"

    goto :goto_0

    :pswitch_1
    const-string v3, "t"

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lorg/jf/baksmali/Renderers/LongRenderer;->writeSignedIntOrLongTo(Lorg/jf/util/IndentingWriter;J)V

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v5, 0x8

    if-ne v0, v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lorg/jf/baksmali/Adaptors/Format/ArrayDataMethodItem;->writeCommentIfLikelyDouble(Lorg/jf/util/IndentingWriter;J)V

    goto :goto_2

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/jf/baksmali/Adaptors/Format/ArrayDataMethodItem;->writeCommentIfResourceId(Lorg/jf/util/IndentingWriter;I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, p1, v4}, Lorg/jf/baksmali/Adaptors/Format/ArrayDataMethodItem;->writeCommentIfLikelyFloat(Lorg/jf/util/IndentingWriter;I)V

    :cond_1
    :goto_2
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lorg/jf/util/IndentingWriter;->deindent(I)V

    const-string v0, ".end array-data"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
