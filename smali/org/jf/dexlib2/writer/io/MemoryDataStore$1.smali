.class Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;
.super Ljava/io/OutputStream;


# instance fields
.field private position:I

.field final synthetic this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/io/MemoryDataStore;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    iput p2, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->val$offset:I

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iget p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->val$offset:I

    iput p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$000(Lorg/jf/dexlib2/writer/io/MemoryDataStore;I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v0

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([B)V
    .registers 6

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$000(Lorg/jf/dexlib2/writer/io/MemoryDataStore;I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v0

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    return-void
.end method

.method public write([BII)V
    .registers 6

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$000(Lorg/jf/dexlib2/writer/io/MemoryDataStore;I)V

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v0

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$1;->position:I

    return-void
.end method
