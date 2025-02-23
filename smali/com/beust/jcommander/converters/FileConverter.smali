.class public Lcom/beust/jcommander/converters/FileConverter;
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
.method public convert(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/beust/jcommander/converters/FileConverter;->convert(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
