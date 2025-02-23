.class public Lcom/beust/jcommander/converters/CommaParameterSplitter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/beust/jcommander/converters/IParameterSplitter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public split(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
