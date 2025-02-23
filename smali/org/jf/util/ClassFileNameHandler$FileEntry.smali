.class Lorg/jf/util/ClassFileNameHandler$FileEntry;
.super Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;


# instance fields
.field final synthetic this$0:Lorg/jf/util/ClassFileNameHandler;


# direct methods
.method private constructor <init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;)V
    .registers 5
    .param p2    # Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/util/ClassFileNameHandler$FileEntry;->this$0:Lorg/jf/util/ClassFileNameHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;-><init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;Lorg/jf/util/ClassFileNameHandler$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;Lorg/jf/util/ClassFileNameHandler$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/jf/util/ClassFileNameHandler$FileEntry;-><init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected makePhysicalName(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/jf/util/ClassFileNameHandler$FileEntry;->getNormalizedName(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jf/util/ClassFileNameHandler;->access$400(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jf/util/ClassFileNameHandler$FileEntry;->getNormalizedName(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
