.class Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$1;
.super Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V
    .registers 5

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;

    invoke-direct {p0, p2, p3, p4}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeList;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$1;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/String;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->readInt()I

    move-result p2

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    add-int/lit8 v1, p2, 0x14

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/dexbacked/DexReader;->moveRelative(I)V

    :try_start_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/DexBackedOdexFile;->buf:[B

    add-int/lit8 p2, p2, -0x1

    const-string v2, "US-ASCII"

    invoke-direct {p1, v1, v0, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
