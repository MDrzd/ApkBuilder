.class Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field final synthetic this$0:Lorg/jf/dexlib2/immutable/util/ParamUtil$1;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/immutable/util/ParamUtil$1;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;->this$0:Lorg/jf/dexlib2/immutable/util/ParamUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;->index:I

    iget-object v1, p0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;->this$0:Lorg/jf/dexlib2/immutable/util/ParamUtil$1;

    iget-object v1, v1, Lorg/jf/dexlib2/immutable/util/ParamUtil$1;->val$params:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;->next()Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;->this$0:Lorg/jf/dexlib2/immutable/util/ParamUtil$1;

    iget-object v0, v0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1;->val$params:Ljava/lang/String;

    iget v1, p0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;->index:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/immutable/util/ParamUtil;->access$000(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;->this$0:Lorg/jf/dexlib2/immutable/util/ParamUtil$1;

    iget-object v1, v1, Lorg/jf/dexlib2/immutable/util/ParamUtil$1;->val$params:Ljava/lang/String;

    iget v2, p0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1$1;->index:I

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
