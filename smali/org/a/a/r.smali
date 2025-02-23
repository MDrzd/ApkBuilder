.class public final Lorg/a/a/r;
.super Lorg/a/a/u;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/u;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/a/a/j;)V
    .registers 5

    invoke-direct {p0, p4}, Lorg/a/a/u;-><init>(Lorg/a/a/j;)V

    iput-object p1, p0, Lorg/a/a/r;->a:Ljava/lang/String;

    iput p2, p0, Lorg/a/a/r;->b:I

    iput p3, p0, Lorg/a/a/r;->d:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/a/a/r;->input:Lorg/a/a/j;

    instance-of v0, v0, Lorg/a/a/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NoViableAltException(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/a/a/r;->getUnexpectedType()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'@["

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/a/a/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NoViableAltException("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/a/a/r;->getUnexpectedType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@["

    goto :goto_0
.end method
