.class public Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;
.super Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->access$1000(Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;)Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->offset:I

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile$StringTable;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSectionIndex()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readUshort(I)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->offset:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readLongAsSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getValue()J
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SymbolTable$Symbol64;->offset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method
