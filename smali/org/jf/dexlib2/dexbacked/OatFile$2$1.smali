.class Lorg/jf/dexlib2/dexbacked/OatFile$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/dexbacked/OatFile$2;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile$2;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$2$1;->this$1:Lorg/jf/dexlib2/dexbacked/OatFile$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/OatFile$2$1;->apply(Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p1, p1, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntry;->entryName:Ljava/lang/String;

    return-object p1
.end method
