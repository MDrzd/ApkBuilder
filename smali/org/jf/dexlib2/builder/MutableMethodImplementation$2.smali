.class Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;
.super Ljava/util/AbstractList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;->this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;->get(I)Lorg/jf/dexlib2/builder/BuilderInstruction;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/jf/dexlib2/builder/BuilderInstruction;
    .registers 3

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;->this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    invoke-static {v0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->access$100(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;->this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    invoke-static {v0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->access$200(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)V

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;->this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    iget-object v0, v0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object p1, p1, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;->this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    invoke-static {v0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->access$100(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;->this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    invoke-static {v0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->access$200(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)V

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$2;->this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    iget-object v0, v0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->instructionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
