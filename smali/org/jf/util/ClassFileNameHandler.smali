.class public Lorg/jf/util/ClassFileNameHandler;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_FILENAME_LENGTH:I = 0xff

.field private static final NUMERIC_SUFFIX_RESERVE:I = 0x6

.field private static reservedFileNameRegex:Ljava/util/regex/Pattern;


# instance fields
.field private final CASE_INSENSITIVE:I

.field private final CASE_SENSITIVE:I

.field private final NO_VALUE:I

.field private fileExtension:Ljava/lang/String;

.field private forcedCaseSensitivity:I

.field private modifyWindowsReservedFilenames:Z

.field private top:Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "^(CON|PRN|AUX|NUL|COM[1-9]|LPT[1-9])(\\..*)?$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jf/util/ClassFileNameHandler;->reservedFileNameRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/util/ClassFileNameHandler;->NO_VALUE:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/jf/util/ClassFileNameHandler;->CASE_INSENSITIVE:I

    const/4 v1, 0x1

    iput v1, p0, Lorg/jf/util/ClassFileNameHandler;->CASE_SENSITIVE:I

    iput v0, p0, Lorg/jf/util/ClassFileNameHandler;->forcedCaseSensitivity:I

    new-instance v0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    invoke-direct {v0, p0, p1}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;-><init>(Lorg/jf/util/ClassFileNameHandler;Ljava/io/File;)V

    iput-object v0, p0, Lorg/jf/util/ClassFileNameHandler;->top:Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    iput-object p2, p0, Lorg/jf/util/ClassFileNameHandler;->fileExtension:Ljava/lang/String;

    invoke-static {}, Lorg/jf/util/ClassFileNameHandler;->isWindows()Z

    move-result p1

    iput-boolean p1, p0, Lorg/jf/util/ClassFileNameHandler;->modifyWindowsReservedFilenames:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/util/ClassFileNameHandler;->NO_VALUE:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/jf/util/ClassFileNameHandler;->CASE_INSENSITIVE:I

    const/4 v1, 0x1

    iput v1, p0, Lorg/jf/util/ClassFileNameHandler;->CASE_SENSITIVE:I

    iput v0, p0, Lorg/jf/util/ClassFileNameHandler;->forcedCaseSensitivity:I

    new-instance v0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    invoke-direct {v0, p0, p1}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;-><init>(Lorg/jf/util/ClassFileNameHandler;Ljava/io/File;)V

    iput-object v0, p0, Lorg/jf/util/ClassFileNameHandler;->top:Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    iput-object p2, p0, Lorg/jf/util/ClassFileNameHandler;->fileExtension:Ljava/lang/String;

    iput p3, p0, Lorg/jf/util/ClassFileNameHandler;->forcedCaseSensitivity:I

    iput-boolean p4, p0, Lorg/jf/util/ClassFileNameHandler;->modifyWindowsReservedFilenames:Z

    return-void
.end method

.method static synthetic access$200(Lorg/jf/util/ClassFileNameHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/jf/util/ClassFileNameHandler;->modifyWindowsReservedFilenames:Z

    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lorg/jf/util/ClassFileNameHandler;->isReservedFileName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lorg/jf/util/ClassFileNameHandler;->addSuffixBeforeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lorg/jf/util/ClassFileNameHandler;->utf8Length(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/jf/util/ClassFileNameHandler;)I
    .registers 1

    invoke-direct {p0}, Lorg/jf/util/ClassFileNameHandler;->getMaxFilenameLength()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/jf/util/ClassFileNameHandler;)I
    .registers 1

    iget p0, p0, Lorg/jf/util/ClassFileNameHandler;->forcedCaseSensitivity:I

    return p0
.end method

.method private static addSuffixBeforeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-gez v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addUniqueChild(Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;[Ljava/lang/String;I)Ljava/io/File;
    .registers 6
    .param p1    # Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    :goto_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    new-instance v0, Lorg/jf/util/ClassFileNameHandler$FileEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, p3

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/jf/util/ClassFileNameHandler;->fileExtension:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/jf/util/ClassFileNameHandler$FileEntry;-><init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;Lorg/jf/util/ClassFileNameHandler$1;)V

    invoke-virtual {p1, v0}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->addChild(Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;)Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;

    invoke-virtual {v0}, Lorg/jf/util/ClassFileNameHandler$FileEntry;->getPhysicalName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-static {p1}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->access$100(Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3

    :cond_0
    new-instance v0, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    aget-object v1, p2, p3

    invoke-direct {v0, p0, p1, v1}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;-><init>(Lorg/jf/util/ClassFileNameHandler;Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;->addChild(Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;)Lorg/jf/util/ClassFileNameHandler$FileSystemEntry;

    move-result-object p1

    check-cast p1, Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private getMaxFilenameLength()I
    .registers 2

    const/16 v0, 0xf9

    return v0
.end method

.method private static isReservedFileName(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lorg/jf/util/ClassFileNameHandler;->reservedFileNameRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static isWindows()Z
    .registers 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static shortenPathComponent(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    add-int/lit8 p1, p1, 0x1

    :try_start_0
    const-string v0, "UTF-32BE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length p0, v0

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, p0, 0x1

    aget v2, v0, p0

    invoke-static {v2}, Lorg/jf/util/ClassFileNameHandler;->utf8Length(I)I

    move-result v2

    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    if-ge v2, p1, :cond_0

    aget v3, v0, v1

    :goto_0
    invoke-static {v3}, Lorg/jf/util/ClassFileNameHandler;->utf8Length(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    :cond_0
    if-ge v2, p1, :cond_3

    if-gtz p0, :cond_1

    array-length v3, v0

    if-ge v1, v3, :cond_3

    :cond_1
    if-lez p0, :cond_2

    add-int/lit8 p0, p0, -0x1

    aget v3, v0, p0

    invoke-static {v3}, Lorg/jf/util/ClassFileNameHandler;->utf8Length(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    if-ge v2, p1, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget v3, v0, v1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_4

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/16 p0, 0x23

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    array-length p0, v0

    if-ge v1, p0, :cond_5

    aget p0, v0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static utf8Length(I)I
    .registers 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x800

    if-ge p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private static utf8Length(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lorg/jf/util/ClassFileNameHandler;->utf8Length(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public getUniqueFilenameForClass(Ljava/lang/String;)Ljava/io/File;
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/16 v5, 0x2f

    if-ge v1, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-ge v3, v7, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_3

    sub-int v7, v3, v4

    if-eqz v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    add-int/lit8 v3, v3, 0x1

    move v4, v3

    move v6, v7

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not a valid dalvik class name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v4, v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    iget-object p1, p0, Lorg/jf/util/ClassFileNameHandler;->top:Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;

    invoke-direct {p0, p1, v1, v0}, Lorg/jf/util/ClassFileNameHandler;->addUniqueChild(Lorg/jf/util/ClassFileNameHandler$DirectoryEntry;[Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not a valid dalvik class name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not a valid dalvik class name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
