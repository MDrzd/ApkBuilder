.class abstract Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;
.super Ljava/lang/Object;


# instance fields
.field public final logicalName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final parent:Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected physicalName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/util/ClassFileNameHandler;


# direct methods
.method private constructor <init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;)V
    .registers 4
    .param p2    # Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->this$0:Lorg/jf/util/ClassFileNameHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->physicalName:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->parent:Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    iput-object p3, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->logicalName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;Lorg/jf/util/ClassFileNameHandler$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;-><init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNormalizedName(Z)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->logicalName:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->parent:Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->parent:Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    invoke-virtual {p1}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->isCaseSensitive()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->this$0:Lorg/jf/util/ClassFileNameHandler;

    invoke-static {p1}, Lorg/jf/util/ClassFileNameHandler;->access$200(Lorg/jf/util/ClassFileNameHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lorg/jf/util/ClassFileNameHandler;->access$300(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "#"

    invoke-static {v0, p1}, Lorg/jf/util/ClassFileNameHandler;->access$400(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lorg/jf/util/ClassFileNameHandler;->access$500(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->this$0:Lorg/jf/util/ClassFileNameHandler;

    invoke-static {v1}, Lorg/jf/util/ClassFileNameHandler;->access$600(Lorg/jf/util/ClassFileNameHandler;)I

    move-result v1

    if-le p1, v1, :cond_2

    iget-object v1, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->this$0:Lorg/jf/util/ClassFileNameHandler;

    invoke-static {v1}, Lorg/jf/util/ClassFileNameHandler;->access$600(Lorg/jf/util/ClassFileNameHandler;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lorg/jf/util/ClassFileNameHandler;->shortenPathComponent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getPhysicalName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->physicalName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract makePhysicalName(I)Ljava/lang/String;
.end method

.method public setSuffix(I)V
    .registers 3

    if-ltz p1, :cond_1

    const v0, 0x1869f

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->physicalName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->makePhysicalName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->physicalName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The suffix can only be set once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "suffix must be in [0, 100000)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
