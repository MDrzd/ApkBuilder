.class public Lorg/jf/baksmali/ListHelpCommand$ListHlepCommand;
.super Lorg/jf/baksmali/ListHelpCommand;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    hidden = true
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandName = "hlep"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/baksmali/ListHelpCommand;-><init>(Ljava/util/List;)V

    return-void
.end method
