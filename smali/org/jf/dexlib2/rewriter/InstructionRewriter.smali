.class public Lorg/jf/dexlib2/rewriter/InstructionRewriter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/rewriter/Rewriter;


# instance fields
.field protected final rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    return-void
.end method


# virtual methods
.method public bridge synthetic rewrite(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/Instruction;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/rewriter/InstructionRewriter;->rewrite(Lorg/jf/dexlib2/iface/instruction/Instruction;)Lorg/jf/dexlib2/iface/instruction/Instruction;

    move-result-object p1

    return-object p1
.end method

.method public rewrite(Lorg/jf/dexlib2/iface/instruction/Instruction;)Lorg/jf/dexlib2/iface/instruction/Instruction;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/instruction/Instruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p1, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$1;->$SwitchMap$org$jf$dexlib2$Format:[I

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/Instruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v1

    iget-object v1, v1, Lorg/jf/dexlib2/Opcode;->format:Lorg/jf/dexlib2/Format;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    new-instance v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction3rc;

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction3rc;-><init>(Lorg/jf/dexlib2/rewriter/InstructionRewriter;Lorg/jf/dexlib2/iface/instruction/formats/Instruction3rc;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction35c;-><init>(Lorg/jf/dexlib2/rewriter/InstructionRewriter;Lorg/jf/dexlib2/iface/instruction/formats/Instruction35c;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction31c;

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction31c;-><init>(Lorg/jf/dexlib2/rewriter/InstructionRewriter;Lorg/jf/dexlib2/iface/instruction/formats/Instruction31c;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction22c;

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction22c;-><init>(Lorg/jf/dexlib2/rewriter/InstructionRewriter;Lorg/jf/dexlib2/iface/instruction/formats/Instruction22c;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction21c;

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction21c;-><init>(Lorg/jf/dexlib2/rewriter/InstructionRewriter;Lorg/jf/dexlib2/iface/instruction/formats/Instruction21c;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction20bc;

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/InstructionRewriter$RewrittenInstruction20bc;-><init>(Lorg/jf/dexlib2/rewriter/InstructionRewriter;Lorg/jf/dexlib2/iface/instruction/formats/Instruction20bc;)V

    return-object v0

    :cond_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
