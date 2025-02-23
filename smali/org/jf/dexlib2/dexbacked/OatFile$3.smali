.class Lorg/jf/dexlib2/dexbacked/OatFile$3;
.super Ljava/util/AbstractList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

.field final synthetic val$entryCount:I

.field final synthetic val$entrySize:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile;III)V
    .registers 5

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iput p2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->val$entryCount:I

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->val$offset:I

    iput p4, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->val$entrySize:I

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/OatFile$3;->get(I)Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;
    .registers 6

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->val$entryCount:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->access$400(Lorg/jf/dexlib2/dexbacked/OatFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader64Bit;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->val$offset:I

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->val$entrySize:I

    mul-int p1, p1, v3

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader64Bit;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;I)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->val$offset:I

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->val$entrySize:I

    mul-int p1, p1, v3

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;I)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$3;->val$entryCount:I

    return v0
.end method
