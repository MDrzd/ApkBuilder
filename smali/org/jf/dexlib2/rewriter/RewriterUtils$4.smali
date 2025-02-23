.class final Lorg/jf/dexlib2/rewriter/RewriterUtils$4;
.super Lorg/jf/dexlib2/base/reference/BaseTypeReference;


# instance fields
.field final synthetic val$typeReference:Lorg/jf/dexlib2/iface/reference/TypeReference;

.field final synthetic val$typeRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/rewriter/Rewriter;Lorg/jf/dexlib2/iface/reference/TypeReference;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$4;->val$typeRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$4;->val$typeReference:Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$4;->val$typeRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$4;->val$typeReference:Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
