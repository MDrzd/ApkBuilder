.class public Lorg/jf/dexlib2/immutable/reference/ImmutableStringReference;
.super Lorg/jf/dexlib2/base/reference/BaseStringReference;

# interfaces
.implements Lorg/jf/dexlib2/immutable/reference/ImmutableReference;


# instance fields
.field protected final str:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseStringReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableStringReference;->str:Ljava/lang/String;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/reference/StringReference;)Lorg/jf/dexlib2/immutable/reference/ImmutableStringReference;
    .registers 2
    .param p0    # Lorg/jf/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableStringReference;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/reference/ImmutableStringReference;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/reference/ImmutableStringReference;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/reference/ImmutableStringReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/reference/ImmutableStringReference;->str:Ljava/lang/String;

    return-object v0
.end method
