.class public Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;
.super Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

# interfaces
.implements Lorg/jf/dexlib2/iface/MultiDexContainer$MultiDexFile;


# instance fields
.field public final filename:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/OatFile;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile;[BILjava/lang/String;)V
    .registers 5
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-static {p1}, Lorg/jf/dexlib2/dexbacked/OatFile;->access$200(Lorg/jf/dexlib2/dexbacked/OatFile;)Lorg/jf/dexlib2/Opcodes;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;[BI)V

    iput-object p4, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContainer()Lorg/jf/dexlib2/dexbacked/OatFile;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    return-object v0
.end method

.method public bridge synthetic getContainer()Lorg/jf/dexlib2/iface/MultiDexContainer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;->getContainer()Lorg/jf/dexlib2/dexbacked/OatFile;

    move-result-object v0

    return-object v0
.end method

.method public getEntryName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public hasOdexOpcodes()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
