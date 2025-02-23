.class Lorg/jf/dexlib2/writer/util/TryListBuilder$TryBounds;
.super Ljava/lang/Object;


# instance fields
.field public final end:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final start:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$TryBounds;->start:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/util/TryListBuilder$TryBounds;->end:Lorg/jf/dexlib2/writer/util/TryListBuilder$MutableTryBlock;

    return-void
.end method
