.class Lorg/jf/dexlib2/analysis/ClassProto$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/analysis/ClassProto;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/ClassProto;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassProto$1;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto$1;->get()Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/jf/dexlib2/iface/ClassDef;
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto$1;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v0, v0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto$1;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v1, v1, Lorg/jf/dexlib2/analysis/ClassProto;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClassDef(Ljava/lang/String;)Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v0

    return-object v0
.end method
