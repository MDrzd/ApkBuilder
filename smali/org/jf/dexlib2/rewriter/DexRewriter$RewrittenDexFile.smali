.class public Lorg/jf/dexlib2/rewriter/DexRewriter$RewrittenDexFile;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/DexFile;


# instance fields
.field protected final dexFile:Lorg/jf/dexlib2/iface/DexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/DexRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/DexRewriter;Lorg/jf/dexlib2/iface/DexFile;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/DexRewriter$RewrittenDexFile;->this$0:Lorg/jf/dexlib2/rewriter/DexRewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/DexRewriter$RewrittenDexFile;->dexFile:Lorg/jf/dexlib2/iface/DexFile;

    return-void
.end method


# virtual methods
.method public getClasses()Ljava/util/Set;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter$RewrittenDexFile;->this$0:Lorg/jf/dexlib2/rewriter/DexRewriter;

    invoke-virtual {v0}, Lorg/jf/dexlib2/rewriter/DexRewriter;->getClassDefRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/DexRewriter$RewrittenDexFile;->dexFile:Lorg/jf/dexlib2/iface/DexFile;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOpcodes()Lorg/jf/dexlib2/Opcodes;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter$RewrittenDexFile;->dexFile:Lorg/jf/dexlib2/iface/DexFile;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/DexFile;->getOpcodes()Lorg/jf/dexlib2/Opcodes;

    move-result-object v0

    return-object v0
.end method
