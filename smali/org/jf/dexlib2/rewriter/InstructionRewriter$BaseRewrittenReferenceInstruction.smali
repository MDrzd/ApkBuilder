.class public Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;


# instance fields
.field protected instruction:Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/InstructionRewriter;


# direct methods
.method protected constructor <init>(Lorg/jf/dexlib2/rewriter/InstructionRewriter;Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->this$0:Lorg/jf/dexlib2/rewriter/InstructionRewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    return-void
.end method


# virtual methods
.method public getCodeUnits()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getCodeUnits()I

    move-result v0

    return v0
.end method

.method public getOpcode()Lorg/jf/dexlib2/Opcode;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getOpcode()Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Lorg/jf/dexlib2/iface/reference/Reference;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->getReferenceType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->this$0:Lorg/jf/dexlib2/rewriter/InstructionRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/Reference;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->this$0:Lorg/jf/dexlib2/rewriter/InstructionRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/Reference;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->this$0:Lorg/jf/dexlib2/rewriter/InstructionRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteTypeReference(Lorg/jf/dexlib2/rewriter/Rewriter;Lorg/jf/dexlib2/iface/reference/TypeReference;)Lorg/jf/dexlib2/iface/reference/TypeReference;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getReferenceType()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/InstructionRewriter$BaseRewrittenReferenceInstruction;->instruction:Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReferenceType()I

    move-result v0

    return v0
.end method
