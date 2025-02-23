.class public Lorg/jf/dexlib2/builder/MethodLocation;
.super Ljava/lang/Object;


# instance fields
.field codeAddress:I

.field private debugItems:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field index:I

.field instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private labels:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/builder/BuilderInstruction;II)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/builder/BuilderInstruction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation;->labels:Ljava/util/List;

    iput-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation;->debugItems:Ljava/util/List;

    iput-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    iput p2, p0, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    iput p3, p0, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    return-void
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/builder/MethodLocation;Z)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/builder/MethodLocation;->getLabels(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/jf/dexlib2/builder/MethodLocation;Z)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getDebugItems(Z)Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation;->debugItems:Ljava/util/List;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation;->debugItems:Ljava/util/List;

    iget-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation;->debugItems:Ljava/util/List;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation;->debugItems:Ljava/util/List;

    return-object p1
.end method

.method private getLabels(Z)Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation;->labels:Ljava/util/List;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation;->labels:Ljava/util/List;

    iget-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation;->labels:Ljava/util/List;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation;->labels:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public addEndLocal(I)V
    .registers 4

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/builder/debug/BuilderEndLocal;

    invoke-direct {v1, p1}, Lorg/jf/dexlib2/builder/debug/BuilderEndLocal;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEpilogue()V
    .registers 3

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/builder/debug/BuilderEpilogueBegin;

    invoke-direct {v1}, Lorg/jf/dexlib2/builder/debug/BuilderEpilogueBegin;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLineNumber(I)V
    .registers 4

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/builder/debug/BuilderLineNumber;

    invoke-direct {v1, p1}, Lorg/jf/dexlib2/builder/debug/BuilderLineNumber;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNewLabel()Lorg/jf/dexlib2/builder/Label;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/Label;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/builder/Label;-><init>(Lorg/jf/dexlib2/builder/MethodLocation;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jf/dexlib2/builder/MethodLocation;->getLabels(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addPrologue()V
    .registers 3

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/builder/debug/BuilderPrologueEnd;

    invoke-direct {v1}, Lorg/jf/dexlib2/builder/debug/BuilderPrologueEnd;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRestartLocal(I)V
    .registers 4

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/builder/debug/BuilderRestartLocal;

    invoke-direct {v1, p1}, Lorg/jf/dexlib2/builder/debug/BuilderRestartLocal;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSetSourceFile(Lorg/jf/dexlib2/iface/reference/StringReference;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/builder/debug/BuilderSetSourceFile;

    invoke-direct {v1, p1}, Lorg/jf/dexlib2/builder/debug/BuilderSetSourceFile;-><init>(Lorg/jf/dexlib2/iface/reference/StringReference;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStartLocal(ILorg/jf/dexlib2/iface/reference/StringReference;Lorg/jf/dexlib2/iface/reference/TypeReference;Lorg/jf/dexlib2/iface/reference/StringReference;)V
    .registers 7
    .param p2    # Lorg/jf/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;-><init>(ILorg/jf/dexlib2/iface/reference/StringReference;Lorg/jf/dexlib2/iface/reference/TypeReference;Lorg/jf/dexlib2/iface/reference/StringReference;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCodeAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/MethodLocation;->codeAddress:I

    return v0
.end method

.method public getDebugItems()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/MethodLocation$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/builder/MethodLocation$2;-><init>(Lorg/jf/dexlib2/builder/MethodLocation;)V

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/MethodLocation;->index:I

    return v0
.end method

.method public getInstruction()Lorg/jf/dexlib2/iface/instruction/Instruction;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation;->instruction:Lorg/jf/dexlib2/builder/BuilderInstruction;

    return-object v0
.end method

.method public getLabels()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/MethodLocation$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/builder/MethodLocation$1;-><init>(Lorg/jf/dexlib2/builder/MethodLocation;)V

    return-object v0
.end method

.method mergeInto(Lorg/jf/dexlib2/builder/MethodLocation;)V
    .registers 8
    .param p1    # Lorg/jf/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation;->labels:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/jf/dexlib2/builder/MethodLocation;->labels:Ljava/util/List;

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p1, v3}, Lorg/jf/dexlib2/builder/MethodLocation;->getLabels(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2}, Lorg/jf/dexlib2/builder/MethodLocation;->getLabels(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/builder/Label;

    iput-object p1, v5, Lorg/jf/dexlib2/builder/Label;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/jf/dexlib2/builder/MethodLocation;->labels:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation;->debugItems:Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/jf/dexlib2/builder/MethodLocation;->labels:Ljava/util/List;

    if-eqz v0, :cond_5

    :cond_3
    invoke-direct {p0, v3}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/builder/BuilderDebugItem;

    iput-object p1, v4, Lorg/jf/dexlib2/builder/BuilderDebugItem;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    goto :goto_1

    :cond_4
    invoke-direct {p1, v2}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p1, Lorg/jf/dexlib2/builder/MethodLocation;->debugItems:Ljava/util/List;

    iput-object v1, p0, Lorg/jf/dexlib2/builder/MethodLocation;->debugItems:Ljava/util/List;

    :cond_5
    return-void
.end method
