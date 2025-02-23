.class Lorg/jf/dexlib2/analysis/ClassPath$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/analysis/ClassPath;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/ClassPath;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassPath$2;->this$0:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassPath$2;->get()Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper;
    .registers 3

    new-instance v0, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/ClassPath$2;->this$0:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v1}, Lorg/jf/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/analysis/OdexedFieldInstructionMapper;-><init>(Z)V

    return-object v0
.end method
