.class Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1;

.field private type:Lorg/jf/dexlib2/analysis/TypeProto;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1$1;->this$0:Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1$1;->this$0:Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1;

    iget-object p1, p1, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1;->val$typeProto:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-static {p1}, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils;->getSuperclassAsTypeProto(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1$1;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1$1;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1$1;->next()Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jf/dexlib2/analysis/TypeProto;
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1$1;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils;->getSuperclassAsTypeProto(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils$1$1;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
