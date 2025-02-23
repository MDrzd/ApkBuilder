.class public Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;
.super Lorg/jf/dexlib2/base/BaseExceptionHandler;


# instance fields
.field protected exceptionHandler:Lorg/jf/dexlib2/iface/ExceptionHandler;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter;Lorg/jf/dexlib2/iface/ExceptionHandler;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/ExceptionHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;->this$0:Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseExceptionHandler;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;->exceptionHandler:Lorg/jf/dexlib2/iface/ExceptionHandler;

    return-void
.end method


# virtual methods
.method public getExceptionType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;->this$0:Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;->exceptionHandler:Lorg/jf/dexlib2/iface/ExceptionHandler;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerCodeAddress()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter$RewrittenExceptionHandler;->exceptionHandler:Lorg/jf/dexlib2/iface/ExceptionHandler;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getHandlerCodeAddress()I

    move-result v0

    return v0
.end method
