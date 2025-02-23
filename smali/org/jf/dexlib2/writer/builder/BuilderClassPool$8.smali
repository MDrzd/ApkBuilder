.class Lorg/jf/dexlib2/writer/builder/BuilderClassPool$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassPool;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderClassPool;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$8;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$8;->apply(Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;->name:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    return-object p1
.end method
