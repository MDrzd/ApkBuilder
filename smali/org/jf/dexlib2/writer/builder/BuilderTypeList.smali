.class public Lorg/jf/dexlib2/writer/builder/BuilderTypeList;
.super Ljava/util/AbstractList;


# static fields
.field static final EMPTY:Lorg/jf/dexlib2/writer/builder/BuilderTypeList;


# instance fields
.field offset:I

.field final types:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;-><init>(Ljava/util/List;)V

    sput-object v0, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->EMPTY:Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->offset:I

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->types:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->get(I)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->types:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    return-object p1
.end method

.method public getOffset()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->offset:I

    return v0
.end method

.method public setOffset(I)V
    .registers 2

    iput p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->offset:I

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderTypeList;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
