.class public abstract Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;
.super Ljava/util/AbstractSet;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;-><init>(Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;)V

    return-object v0
.end method

.method public abstract readItem(I)Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
