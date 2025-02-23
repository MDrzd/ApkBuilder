.class final Lcom/gmail/heagoo/neweditor/ak;
.super Ljava/lang/Object;


# instance fields
.field final synthetic A:Lcom/gmail/heagoo/neweditor/aj;

.field public a:Z

.field public b:Z

.field public c:Z

.field public d:B

.field public e:Lcom/gmail/heagoo/neweditor/v;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/StringBuffer;

.field public h:I

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Ljava/lang/StringBuffer;

.field public p:B

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/StringBuffer;

.field public w:I

.field public x:B

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/neweditor/aj;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 10

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ak;->A:Lcom/gmail/heagoo/neweditor/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/gmail/heagoo/neweditor/ak;->d:B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gmail/heagoo/neweditor/ak;->n:Z

    const-string v2, "_"

    iput-object v2, p0, Lcom/gmail/heagoo/neweditor/ak;->s:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/gmail/heagoo/neweditor/ak;->z:I

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string p2, "NAME"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gmail/heagoo/neweditor/aj;->a(Lcom/gmail/heagoo/neweditor/aj;Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "VALUE"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gmail/heagoo/neweditor/aj;->b(Lcom/gmail/heagoo/neweditor/aj;Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "TYPE"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/gmail/heagoo/neweditor/Token;->stringToToken(Ljava/lang/String;)B

    move-result v3

    iput-byte v3, p0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    iget-byte v3, p0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    if-ne v3, v2, :cond_0

    const-string v3, "token-invalid"

    invoke-static {v3, p2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p2, -0x2

    iput-byte p2, p0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    const-string v3, "EXCLUDE_MATCH"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "TRUE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-byte v2, p0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    :cond_1
    const-string v3, "MATCH_TYPE"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "CONTEXT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-byte v2, p0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    goto :goto_0

    :cond_2
    const-string v4, "RULE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-byte p2, p0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/gmail/heagoo/neweditor/Token;->stringToToken(Ljava/lang/String;)B

    move-result p2

    iput-byte p2, p0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    iget-byte p2, p0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    if-ne p2, v2, :cond_4

    const-string p2, "token-invalid"

    invoke-static {p2, v3}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    const-string p2, "TRUE"

    const-string v3, "AT_LINE_START"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gmail/heagoo/neweditor/ak;->a:Z

    const-string p2, "TRUE"

    const-string v3, "AT_WHITESPACE_END"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gmail/heagoo/neweditor/ak;->b:Z

    const-string p2, "TRUE"

    const-string v3, "AT_WORD_START"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gmail/heagoo/neweditor/ak;->c:Z

    const-string p2, "TRUE"

    const-string v3, "NO_LINE_BREAK"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gmail/heagoo/neweditor/ak;->q:Z

    const-string p2, "TRUE"

    const-string v3, "NO_WORD_BREAK"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gmail/heagoo/neweditor/ak;->r:Z

    const-string p2, "IGNORE_CASE"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p2, "TRUE"

    const-string v3, "IGNORE_CASE"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 v1, 0x0

    :cond_5
    iput-boolean v1, p0, Lcom/gmail/heagoo/neweditor/ak;->n:Z

    const-string p2, "TRUE"

    const-string v1, "HIGHLIGHT_DIGITS"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gmail/heagoo/neweditor/ak;->m:Z

    const-string p2, "TRUE"

    const-string v1, "REGEXP"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gmail/heagoo/neweditor/ak;->t:Z

    const-string p2, "DIGIT_RE"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/ak;->f:Ljava/lang/String;

    const-string p2, "NO_WORD_SEP"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/ak;->s:Ljava/lang/String;

    :cond_6
    const-string p2, "AT_CHAR"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gmail/heagoo/neweditor/ak;->z:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "termchar-invalid"

    invoke-static {v1, p2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput v2, p0, Lcom/gmail/heagoo/neweditor/ak;->z:I

    :cond_7
    :goto_1
    const-string p2, "ESCAPE"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/ak;->j:Ljava/lang/String;

    const-string p2, "SET"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/ak;->u:Ljava/lang/String;

    const-string p2, "DELEGATE"

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    const-string v1, "::"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_8

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    invoke-static {p1}, Lcom/gmail/heagoo/neweditor/aj;->a(Lcom/gmail/heagoo/neweditor/aj;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    :goto_2
    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/aj;->a()Lcom/gmail/heagoo/neweditor/ah;

    move-result-object v4

    if-nez v4, :cond_9

    :goto_3
    const-string p1, "delegate-invalid"

    invoke-static {p1, p2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v4, v1}, Lcom/gmail/heagoo/neweditor/ah;->a(Ljava/lang/String;)Lcom/gmail/heagoo/neweditor/v;

    move-result-object v5

    iput-object v5, p0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    invoke-static {p1}, Lcom/gmail/heagoo/neweditor/aj;->b(Lcom/gmail/heagoo/neweditor/aj;)Lcom/gmail/heagoo/neweditor/ah;

    move-result-object v5

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    if-nez v4, :cond_a

    new-instance p2, Lcom/gmail/heagoo/neweditor/v;

    invoke-direct {p2, v3, v1}, Lcom/gmail/heagoo/neweditor/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Lcom/gmail/heagoo/neweditor/v;->b(B)V

    invoke-static {p1}, Lcom/gmail/heagoo/neweditor/aj;->b(Lcom/gmail/heagoo/neweditor/aj;)Lcom/gmail/heagoo/neweditor/ah;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/neweditor/v;)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    :goto_4
    const-string p1, "DEFAULT"

    invoke-interface {p3, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/gmail/heagoo/neweditor/Token;->stringToToken(Ljava/lang/String;)B

    move-result p2

    iput-byte p2, p0, Lcom/gmail/heagoo/neweditor/ak;->d:B

    iget-byte p2, p0, Lcom/gmail/heagoo/neweditor/ak;->d:B

    if-ne p2, v2, :cond_c

    const-string p2, "token-invalid"

    invoke-static {p2, p1}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-byte v0, p0, Lcom/gmail/heagoo/neweditor/ak;->d:B

    :cond_c
    const-string p1, "HASH_CHAR"

    invoke-interface {p3, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ak;->k:Ljava/lang/String;

    const-string p1, "HASH_CHARS"

    invoke-interface {p3, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ak;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ak;->k:Ljava/lang/String;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ak;->l:Ljava/lang/String;

    if-eqz p1, :cond_d

    const-string p1, "hash-char-and-hash-chars-mutually-exclusive"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/ak;->l:Ljava/lang/String;

    :cond_d
    return-void
.end method
