.class Lorg/jf/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference$1;->this$1:Lorg/jf/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/rewriter/MethodReferenceRewriter$RewrittenMethodReference$1;->apply(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
