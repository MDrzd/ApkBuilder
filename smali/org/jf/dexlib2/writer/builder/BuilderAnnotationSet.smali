.class public Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;
.super Ljava/util/AbstractSet;


# static fields
.field public static final EMPTY:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;


# instance fields
.field final annotations:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;-><init>(Ljava/util/Set;)V

    sput-object v0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;->EMPTY:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;->offset:I

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;->annotations:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;->annotations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;->annotations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
