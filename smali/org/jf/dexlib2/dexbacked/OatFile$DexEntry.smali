.class Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;
.super Ljava/lang/Object;


# instance fields
.field public final buf:[B

.field public final dexOffset:I

.field public final entryName:Ljava/lang/String;

.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile;Ljava/lang/String;[BI)V
    .registers 5

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->entryName:Ljava/lang/String;

    iput-object p3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->buf:[B

    iput p4, p0, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->dexOffset:I

    return-void
.end method


# virtual methods
.method public getDexFile()Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;
    .registers 6

    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->buf:[B

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->dexOffset:I

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->entryName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;[BILjava/lang/String;)V

    return-object v0
.end method
