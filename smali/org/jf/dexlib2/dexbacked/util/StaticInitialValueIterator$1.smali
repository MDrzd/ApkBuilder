.class final Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator$1;
.super Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNextOrNull()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final skipNext()V
    .registers 1

    return-void
.end method
