.class public Lorg/jf/smali/HelpCommand$HlepCommand;
.super Lorg/jf/smali/HelpCommand;


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

    invoke-direct {p0, p1}, Lorg/jf/smali/HelpCommand;-><init>(Ljava/util/List;)V

    return-void
.end method
