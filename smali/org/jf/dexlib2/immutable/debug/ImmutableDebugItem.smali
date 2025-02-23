.class public abstract Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/DebugItem;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final codeAddress:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;->codeAddress:I

    return-void
.end method

.method public static immutableListOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/debug/DebugItem;)Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Invalid debug item type: %d"

    invoke-direct {v0, p0, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    check-cast p0, Lorg/jf/dexlib2/iface/debug/LineNumber;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/debug/ImmutableLineNumber;->of(Lorg/jf/dexlib2/iface/debug/LineNumber;)Lorg/jf/dexlib2/immutable/debug/ImmutableLineNumber;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/jf/dexlib2/iface/debug/SetSourceFile;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;->of(Lorg/jf/dexlib2/iface/debug/SetSourceFile;)Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/jf/dexlib2/iface/debug/EpilogueBegin;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/debug/ImmutableEpilogueBegin;->of(Lorg/jf/dexlib2/iface/debug/EpilogueBegin;)Lorg/jf/dexlib2/immutable/debug/ImmutableEpilogueBegin;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/jf/dexlib2/iface/debug/PrologueEnd;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/debug/ImmutablePrologueEnd;->of(Lorg/jf/dexlib2/iface/debug/PrologueEnd;)Lorg/jf/dexlib2/immutable/debug/ImmutablePrologueEnd;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/jf/dexlib2/iface/debug/RestartLocal;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/debug/ImmutableRestartLocal;->of(Lorg/jf/dexlib2/iface/debug/RestartLocal;)Lorg/jf/dexlib2/immutable/debug/ImmutableRestartLocal;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/jf/dexlib2/iface/debug/EndLocal;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;->of(Lorg/jf/dexlib2/iface/debug/EndLocal;)Lorg/jf/dexlib2/immutable/debug/ImmutableEndLocal;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/debug/ImmutableStartLocal;->of(Lorg/jf/dexlib2/iface/debug/StartLocal;)Lorg/jf/dexlib2/immutable/debug/ImmutableStartLocal;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCodeAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;->codeAddress:I

    return v0
.end method
