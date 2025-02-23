.class public Lorg/jf/baksmali/ListMethodsCommand;
.super Lorg/jf/baksmali/ListReferencesCommand;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Lists the methods in a dex file\'s method table."
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "method",
        "m"
    }
    commandName = "methods"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jf/baksmali/ListReferencesCommand;-><init>(Ljava/util/List;I)V

    return-void
.end method
