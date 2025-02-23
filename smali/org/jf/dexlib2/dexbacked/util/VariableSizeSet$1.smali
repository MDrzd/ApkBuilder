.class Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet$1;
.super Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V
    .registers 5

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet$1;->this$0:Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;

    invoke-direct {p0, p2, p3, p4}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeIterator;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-void
.end method


# virtual methods
.method protected readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet$1;->this$0:Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;

    invoke-virtual {v0, p1, p2}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
