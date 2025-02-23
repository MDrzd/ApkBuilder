.class Lorg/jf/dexlib2/builder/MethodLocation$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private currentDebugItem:Lorg/jf/dexlib2/builder/BuilderDebugItem;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$1:Lorg/jf/dexlib2/builder/MethodLocation$2;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/builder/MethodLocation$2;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->this$1:Lorg/jf/dexlib2/builder/MethodLocation$2;

    iput-object p2, p0, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->currentDebugItem:Lorg/jf/dexlib2/builder/BuilderDebugItem;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->next()Lorg/jf/dexlib2/builder/BuilderDebugItem;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jf/dexlib2/builder/BuilderDebugItem;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/BuilderDebugItem;

    iput-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->currentDebugItem:Lorg/jf/dexlib2/builder/BuilderDebugItem;

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->currentDebugItem:Lorg/jf/dexlib2/builder/BuilderDebugItem;

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->currentDebugItem:Lorg/jf/dexlib2/builder/BuilderDebugItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->currentDebugItem:Lorg/jf/dexlib2/builder/BuilderDebugItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jf/dexlib2/builder/BuilderDebugItem;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
