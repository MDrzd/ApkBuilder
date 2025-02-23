.class Lorg/jf/dexlib2/builder/MethodLocation$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private currentLabel:Lorg/jf/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$1:Lorg/jf/dexlib2/builder/MethodLocation$1;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/builder/MethodLocation$1;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->this$1:Lorg/jf/dexlib2/builder/MethodLocation$1;

    iput-object p2, p0, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->currentLabel:Lorg/jf/dexlib2/builder/Label;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->next()Lorg/jf/dexlib2/builder/Label;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jf/dexlib2/builder/Label;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/Label;

    iput-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->currentLabel:Lorg/jf/dexlib2/builder/Label;

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->currentLabel:Lorg/jf/dexlib2/builder/Label;

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->currentLabel:Lorg/jf/dexlib2/builder/Label;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->currentLabel:Lorg/jf/dexlib2/builder/Label;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jf/dexlib2/builder/Label;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$1$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
