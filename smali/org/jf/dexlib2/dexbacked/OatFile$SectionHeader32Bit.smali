.class Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;
.super Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;I)V

    return-void
.end method


# virtual methods
.method public getAddress()J
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->offset:I

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getEntrySize()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->offset:I

    add-int/lit8 v1, v1, 0x24

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getLink()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->offset:I

    add-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->offset:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$SectionHeader32Bit;->offset:I

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/OatFile;->readSmallUint(I)I

    move-result v0

    return v0
.end method
