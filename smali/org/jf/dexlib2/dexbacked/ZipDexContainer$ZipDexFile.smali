.class public Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;
.super Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

# interfaces
.implements Lorg/jf/dexlib2/iface/MultiDexContainer$MultiDexFile;


# instance fields
.field private final entryName:Ljava/lang/String;

.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/ZipDexContainer;


# direct methods
.method protected constructor <init>(Lorg/jf/dexlib2/dexbacked/ZipDexContainer;Lorg/jf/dexlib2/Opcodes;[BLjava/lang/String;)V
    .registers 5
    .param p2    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;->this$0:Lorg/jf/dexlib2/dexbacked/ZipDexContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;[BI)V

    iput-object p4, p0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;->entryName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContainer()Lorg/jf/dexlib2/iface/MultiDexContainer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;->this$0:Lorg/jf/dexlib2/dexbacked/ZipDexContainer;

    return-object v0
.end method

.method public getEntryName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/ZipDexContainer$ZipDexFile;->entryName:Ljava/lang/String;

    return-object v0
.end method
