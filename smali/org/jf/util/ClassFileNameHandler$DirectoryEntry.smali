.class Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;
.super Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private caseSensitivity:I

.field private final children:Lcom/google/common/collect/Multimap;

.field private file:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/util/ClassFileNameHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/jf/util/ClassFileNameHandler;

    return-void
.end method

.method public constructor <init>(Lorg/jf/util/ClassFileNameHandler;Ljava/io/File;)V
    .registers 5
    .param p2    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->this$0:Lorg/jf/util/ClassFileNameHandler;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;-><init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;Lorg/jf/util/ClassFileNameHandler$1;)V

    iput-object v1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->file:Ljava/io/File;

    iget-object p1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->this$0:Lorg/jf/util/ClassFileNameHandler;

    invoke-static {p1}, Lorg/jf/util/ClassFileNameHandler;->access$700(Lorg/jf/util/ClassFileNameHandler;)I

    move-result p1

    iput p1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->caseSensitivity:I

    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->children:Lcom/google/common/collect/Multimap;

    iput-object p2, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->file:Ljava/io/File;

    iget-object p1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->physicalName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;)V
    .registers 5
    .param p2    # Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->this$0:Lorg/jf/util/ClassFileNameHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;-><init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;Lorg/jf/util/ClassFileNameHandler$1;)V

    iput-object v0, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->file:Ljava/io/File;

    iget-object p1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->this$0:Lorg/jf/util/ClassFileNameHandler;

    invoke-static {p1}, Lorg/jf/util/ClassFileNameHandler;->access$700(Lorg/jf/util/ClassFileNameHandler;)I

    move-result p1

    iput p1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->caseSensitivity:I

    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->children:Lcom/google/common/collect/Multimap;

    return-void
.end method

.method static synthetic access$100(Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->file:Ljava/io/File;

    return-object p0
.end method

.method private testCaseSensitivity(Ljava/io/File;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "test."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TEST."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    :try_start_0
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const-string v1, "test"

    invoke-virtual {p1, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return v1

    :cond_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    return v0

    :cond_1
    const/16 p1, 0x20

    :try_start_7
    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    :cond_2
    invoke-virtual {v4, p1}, Ljava/io/FileReader;->read(Ljava/nio/CharBuffer;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x4

    if-eq v5, v6, :cond_3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v5

    if-lt v5, v7, :cond_2

    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v4

    if-ne v4, v7, :cond_4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "test"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p1, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :try_start_9
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    return v1

    :cond_4
    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    :try_start_b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    return v1

    :catch_8
    :try_start_c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :catch_9
    :try_start_d
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    :catch_a
    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_b
    move-exception p1

    :try_start_e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catch_c
    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_1
    :try_start_10
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    :catch_d
    :try_start_11
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    :catch_e
    throw p1

    :cond_5
    move v1, v5

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized addChild(Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;)Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->getNormalizedName(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->children:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, v0}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    instance-of v1, p1, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;

    iget-object v3, v2, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->logicalName:Ljava/lang/String;

    iget-object v4, p1, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->logicalName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->setSuffix(I)V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected isCaseSensitive()Z
    .registers 5

    invoke-virtual {p0}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->getPhysicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->caseSensitivity:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->caseSensitivity:I

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/jf/util/ExceptionWithContext;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Can\'t delete %s to make it into a directory"

    invoke-direct {v1, v0, v3}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Lorg/jf/util/ExceptionWithContext;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Couldn\'t create directory %s"

    invoke-direct {v1, v0, v3}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_5
    :goto_1
    :try_start_0
    invoke-direct {p0, v0}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->testCaseSensitivity(Ljava/io/File;)Z

    move-result v0

    iput v0, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->caseSensitivity:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setSuffix() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected makePhysicalName(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-lez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->getNormalizedName(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->getNormalizedName(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setSuffix(I)V
    .registers 4

    invoke-super {p0, p1}, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;->setSuffix(I)V

    invoke-virtual {p0}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->getPhysicalName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->parent:Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->parent:Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    iget-object v1, v1, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->file:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->file:Ljava/io/File;

    :cond_0
    return-void
.end method
