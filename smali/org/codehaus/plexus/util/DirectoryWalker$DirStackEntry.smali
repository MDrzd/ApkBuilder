.class Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;
.super Ljava/lang/Object;


# instance fields
.field public count:I

.field public dir:Ljava/io/File;

.field public index:I

.field public percentageOffset:D

.field public percentageSize:D

.field final synthetic this$0:Lorg/codehaus/plexus/util/DirectoryWalker;


# direct methods
.method public constructor <init>(Lorg/codehaus/plexus/util/DirectoryWalker;Ljava/io/File;I)V
    .registers 4

    iput-object p1, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->this$0:Lorg/codehaus/plexus/util/DirectoryWalker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->dir:Ljava/io/File;

    iput p3, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->count:I

    return-void
.end method


# virtual methods
.method public getNextPercentageOffset()D
    .registers 9

    iget-wide v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->percentageOffset:D

    iget v2, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->index:I

    int-to-double v2, v2

    iget-wide v4, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->percentageSize:D

    iget v6, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->count:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getNextPercentageSize()D
    .registers 5

    iget-wide v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->percentageSize:D

    iget v2, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->count:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getPercentage()I
    .registers 7

    iget v0, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->index:I

    int-to-double v0, v0

    iget v2, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->count:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    iget-wide v2, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->percentageOffset:D

    iget-wide v4, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->percentageSize:D

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DirStackEntry[dir="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",percentageOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->percentageOffset:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",percentageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->percentageSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",percentage()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->getPercentage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",getNextPercentageOffset()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->getNextPercentageOffset()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",getNextPercentageSize()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/DirectoryWalker$DirStackEntry;->getNextPercentageSize()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
