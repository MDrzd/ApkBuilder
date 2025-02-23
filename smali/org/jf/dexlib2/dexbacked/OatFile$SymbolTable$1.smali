.class Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;
.super Ljava/util/AbstractList;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->get(I)Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;
    .registers 6

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->access$700(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->access$400(Lorg/jf/dexlib2/dexbacked/OatFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v2}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->access$800(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v2

    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v3}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->access$900(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v3

    mul-int p1, p1, v3

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;I)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol32;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v2}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->access$800(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v2

    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v3}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->access$900(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v3

    mul-int p1, p1, v3

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol32;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;I)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->access$700(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)I

    move-result v0

    return v0
.end method
