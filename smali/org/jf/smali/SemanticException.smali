.class public Lorg/jf/smali/SemanticException;
.super Lorg/a/a/u;


# instance fields
.field private errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/a/a/j;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/a/a/u;-><init>(Lorg/a/a/j;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/smali/SemanticException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method varargs constructor <init>(Lorg/a/a/j;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/a/a/u;-><init>(Lorg/a/a/j;)V

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/smali/SemanticException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method varargs constructor <init>(Lorg/a/a/j;Lorg/a/a/b/d;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lorg/a/a/u;-><init>()V

    iput-object p1, p0, Lorg/jf/smali/SemanticException;->input:Lorg/a/a/j;

    iget-object p1, p2, Lorg/a/a/b/d;->a:Lorg/a/a/x;

    iput-object p1, p0, Lorg/jf/smali/SemanticException;->token:Lorg/a/a/x;

    invoke-virtual {p2}, Lorg/a/a/b/d;->k()I

    move-result p1

    iput p1, p0, Lorg/jf/smali/SemanticException;->index:I

    iget-object p1, p0, Lorg/jf/smali/SemanticException;->token:Lorg/a/a/x;

    invoke-interface {p1}, Lorg/a/a/x;->getLine()I

    move-result p1

    iput p1, p0, Lorg/jf/smali/SemanticException;->line:I

    iget-object p1, p0, Lorg/jf/smali/SemanticException;->token:Lorg/a/a/x;

    invoke-interface {p1}, Lorg/a/a/x;->getCharPositionInLine()I

    move-result p1

    iput p1, p0, Lorg/jf/smali/SemanticException;->charPositionInLine:I

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/smali/SemanticException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method varargs constructor <init>(Lorg/a/a/j;Lorg/a/a/x;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lorg/a/a/u;-><init>()V

    iput-object p1, p0, Lorg/jf/smali/SemanticException;->input:Lorg/a/a/j;

    iput-object p2, p0, Lorg/jf/smali/SemanticException;->token:Lorg/a/a/x;

    move-object p1, p2

    check-cast p1, Lorg/a/a/e;

    invoke-virtual {p1}, Lorg/a/a/e;->getStartIndex()I

    move-result p1

    iput p1, p0, Lorg/jf/smali/SemanticException;->index:I

    invoke-interface {p2}, Lorg/a/a/x;->getLine()I

    move-result p1

    iput p1, p0, Lorg/jf/smali/SemanticException;->line:I

    invoke-interface {p2}, Lorg/a/a/x;->getCharPositionInLine()I

    move-result p1

    iput p1, p0, Lorg/jf/smali/SemanticException;->charPositionInLine:I

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/smali/SemanticException;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jf/smali/SemanticException;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
