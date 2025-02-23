.class Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;
.super Ljava/io/InputStream;


# instance fields
.field private position:I

.field final synthetic this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/io/MemoryDataStore;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    iput p2, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->val$offset:I

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iget p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->val$offset:I

    iput p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    iget-object v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v1}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v0

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .registers 6

    array-length v0, p1

    iget-object v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v1}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v2}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v2

    iget v3, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    return v0
.end method

.method public read([BII)I
    .registers 6

    iget-object p2, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {p2}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object p2

    array-length p2, p2

    iget v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    sub-int/2addr p2, v0

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p3, 0x0

    if-gtz p2, :cond_1

    iget p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    iget-object p2, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {p2}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object p2

    array-length p2, p2

    if-lt p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return p3

    :cond_1
    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v0

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    invoke-static {v0, v1, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    return p2
.end method

.method public skip(J)J
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->this$0:Lorg/jf/dexlib2/writer/io/MemoryDataStore;

    invoke-static {v0}, Lorg/jf/dexlib2/writer/io/MemoryDataStore;->access$100(Lorg/jf/dexlib2/writer/io/MemoryDataStore;)[B

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/jf/dexlib2/writer/io/MemoryDataStore$2;->position:I

    int-to-long p1, p1

    return-wide p1
.end method
