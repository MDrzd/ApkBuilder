.class Lorg/jf/dexlib2/dexbacked/OatFile$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/dexbacked/OatFile$1;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile$1;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$1$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/OatFile$1$1;->apply(Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;)Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;)Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->getDexFile()Lorg/jf/dexlib2/dexbacked/OatFile$OatDexFile;

    move-result-object p1

    return-object p1
.end method
