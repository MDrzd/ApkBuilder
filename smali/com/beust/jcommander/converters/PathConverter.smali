.class public Lcom/beust/jcommander/converters/PathConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/beust/jcommander/IStringConverter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/beust/jcommander/converters/PathConverter;->convert(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method
