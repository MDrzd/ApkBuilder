.class public final Lorg/a/a/q;
.super Lorg/a/a/o;


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/o;-><init>()V

    return-void
.end method

.method public constructor <init>(ILorg/a/a/j;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/a/a/o;-><init>(ILorg/a/a/j;)V

    iput-object p3, p0, Lorg/a/a/q;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/a/a/q;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/q;->token:Lorg/a/a/x;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MissingTokenException(inserted "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/a/a/q;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lorg/a/a/q;->token:Lorg/a/a/x;

    invoke-interface {v1}, Lorg/a/a/x;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/q;->token:Lorg/a/a/x;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MissingTokenException(at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "MissingTokenException"

    return-object v0
.end method
