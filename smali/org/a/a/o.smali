.class public Lorg/a/a/o;
.super Lorg/a/a/u;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/a/a/u;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/o;->a:I

    return-void
.end method

.method public constructor <init>(ILorg/a/a/j;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/a/a/u;-><init>(Lorg/a/a/j;)V

    const/4 p2, 0x0

    iput p2, p0, Lorg/a/a/o;->a:I

    iput p1, p0, Lorg/a/a/o;->a:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MismatchedTokenException("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/a/a/o;->getUnexpectedType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/a/a/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
