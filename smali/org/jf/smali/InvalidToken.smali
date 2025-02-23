.class public Lorg/jf/smali/InvalidToken;
.super Lorg/a/a/e;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lorg/a/a/e;-><init>(I)V

    iput-object p1, p0, Lorg/jf/smali/InvalidToken;->message:Ljava/lang/String;

    const/16 p1, 0x64

    iput p1, p0, Lorg/jf/smali/InvalidToken;->channel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x59

    invoke-direct {p0, v0, p2}, Lorg/a/a/e;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lorg/jf/smali/InvalidToken;->message:Ljava/lang/String;

    const/16 p1, 0x64

    iput p1, p0, Lorg/jf/smali/InvalidToken;->channel:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jf/smali/InvalidToken;->message:Ljava/lang/String;

    return-object v0
.end method
