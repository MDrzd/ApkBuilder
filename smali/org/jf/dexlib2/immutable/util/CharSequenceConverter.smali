.class public final Lorg/jf/dexlib2/immutable/util/CharSequenceConverter;
.super Ljava/lang/Object;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/util/CharSequenceConverter$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/util/CharSequenceConverter$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/util/CharSequenceConverter;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static immutableStringList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/util/CharSequenceConverter;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
