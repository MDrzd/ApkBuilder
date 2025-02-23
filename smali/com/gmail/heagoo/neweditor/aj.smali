.class public final Lcom/gmail/heagoo/neweditor/aj;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Lcom/gmail/heagoo/neweditor/ah;

.field private b:Lcom/gmail/heagoo/neweditor/s;

.field private c:Lcom/gmail/heagoo/neweditor/v;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Stack;

.field private h:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, "xml"

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/aj;->d:Ljava/lang/String;

    new-instance v0, Lcom/gmail/heagoo/neweditor/ah;

    invoke-direct {v0}, Lcom/gmail/heagoo/neweditor/ah;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/aj;->a:Lcom/gmail/heagoo/neweditor/ah;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/aj;->a:Lcom/gmail/heagoo/neweditor/ah;

    new-instance v1, Lcom/gmail/heagoo/neweditor/v;

    const-string v2, "xml"

    const-string v3, "MAIN"

    invoke-direct {v1, v2, v3}, Lcom/gmail/heagoo/neweditor/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/neweditor/v;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/aj;->g:Ljava/util/Stack;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/aj;->h:Ljava/util/Hashtable;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/gmail/heagoo/neweditor/ak;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/gmail/heagoo/neweditor/ak;
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/aj;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/aj;->g:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/neweditor/ak;

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/gmail/heagoo/neweditor/ak;
    .registers 4

    if-eqz p1, :cond_0

    new-instance v0, Lcom/gmail/heagoo/neweditor/ak;

    invoke-direct {v0, p0, p1, p2}, Lcom/gmail/heagoo/neweditor/ak;-><init>(Lcom/gmail/heagoo/neweditor/aj;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/aj;->g:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/gmail/heagoo/neweditor/aj;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/aj;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/neweditor/aj;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/aj;->e:Ljava/lang/String;

    return-object p1
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const-string v0, "DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error occurred: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lcom/gmail/heagoo/neweditor/aj;)Lcom/gmail/heagoo/neweditor/ah;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/aj;->a:Lcom/gmail/heagoo/neweditor/ah;

    return-object p0
.end method

.method private b()Lcom/gmail/heagoo/neweditor/ak;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/aj;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/neweditor/ak;

    return-object v0
.end method

.method static synthetic b(Lcom/gmail/heagoo/neweditor/aj;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/aj;->f:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/gmail/heagoo/neweditor/ah;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/aj;->a:Lcom/gmail/heagoo/neweditor/ah;

    return-object v0
.end method

.method public final characters([CII)V
    .registers 11

    invoke-direct {p0}, Lcom/gmail/heagoo/neweditor/aj;->b()Lcom/gmail/heagoo/neweditor/ak;

    move-result-object v0

    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v2, "EOL_SPAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v6, "EOL_SPAN_REGEXP"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v6, "MARK_PREVIOUS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v6, "MARK_FOLLOWING"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v6, "SEQ"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v6, "SEQ_REGEXP"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v6, "END"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->A:Lcom/gmail/heagoo/neweditor/aj;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/aj;->g:Ljava/util/Stack;

    iget-object v6, v0, Lcom/gmail/heagoo/neweditor/ak;->A:Lcom/gmail/heagoo/neweditor/aj;

    iget-object v6, v6, Lcom/gmail/heagoo/neweditor/aj;->g:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v1, v6}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/neweditor/ak;

    iget-object v6, v1, Lcom/gmail/heagoo/neweditor/ak;->g:Ljava/lang/StringBuffer;

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v6, v1, Lcom/gmail/heagoo/neweditor/ak;->g:Ljava/lang/StringBuffer;

    iget-object v6, v1, Lcom/gmail/heagoo/neweditor/ak;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v6, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget-boolean p1, v0, Lcom/gmail/heagoo/neweditor/ak;->a:Z

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_1
    iget-boolean p1, v0, Lcom/gmail/heagoo/neweditor/ak;->b:Z

    if-nez p1, :cond_2

    const/4 v5, 0x0

    :cond_2
    or-int p1, v3, v5

    iget-boolean p2, v0, Lcom/gmail/heagoo/neweditor/ak;->c:Z

    if-nez p2, :cond_3

    const/4 v2, 0x0

    :cond_3
    or-int/2addr p1, v2

    iput p1, v1, Lcom/gmail/heagoo/neweditor/ak;->h:I

    iget-boolean p1, v0, Lcom/gmail/heagoo/neweditor/ak;->t:Z

    iput-boolean p1, v1, Lcom/gmail/heagoo/neweditor/ak;->i:Z

    iput-boolean v4, v1, Lcom/gmail/heagoo/neweditor/ak;->a:Z

    iput-boolean v4, v1, Lcom/gmail/heagoo/neweditor/ak;->c:Z

    iput-boolean v4, v1, Lcom/gmail/heagoo/neweditor/ak;->b:Z

    return-void

    :cond_4
    iget-object v0, v1, Lcom/gmail/heagoo/neweditor/ak;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void

    :cond_5
    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->o:Ljava/lang/StringBuffer;

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->o:Ljava/lang/StringBuffer;

    :cond_6
    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ak;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void

    :cond_7
    :goto_0
    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->A:Lcom/gmail/heagoo/neweditor/aj;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/aj;->g:Ljava/util/Stack;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ak;->A:Lcom/gmail/heagoo/neweditor/aj;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/aj;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/neweditor/ak;

    :cond_8
    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    iget-object v1, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget-boolean p1, v0, Lcom/gmail/heagoo/neweditor/ak;->a:Z

    if-nez p1, :cond_9

    const/4 v3, 0x0

    :cond_9
    iget-boolean p1, v0, Lcom/gmail/heagoo/neweditor/ak;->b:Z

    if-nez p1, :cond_a

    const/4 v5, 0x0

    :cond_a
    or-int p1, v5, v3

    iget-boolean p2, v0, Lcom/gmail/heagoo/neweditor/ak;->c:Z

    if-eqz p2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v2, 0x0

    :goto_1
    or-int/2addr p1, v2

    iput p1, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iput-boolean v4, v0, Lcom/gmail/heagoo/neweditor/ak;->a:Z

    iput-boolean v4, v0, Lcom/gmail/heagoo/neweditor/ak;->c:Z

    iput-boolean v4, v0, Lcom/gmail/heagoo/neweditor/ak;->b:Z

    return-void

    :cond_c
    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/gmail/heagoo/neweditor/aj;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/neweditor/ak;

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v3, "PROPERTY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/gmail/heagoo/neweditor/aj;->h:Ljava/util/Hashtable;

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->e:Ljava/lang/String;

    iget-object v3, v1, Lcom/gmail/heagoo/neweditor/aj;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v3, "PROPS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/gmail/heagoo/neweditor/aj;->b()Lcom/gmail/heagoo/neweditor/ak;

    move-result-object v0

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v2, "RULES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Lcom/gmail/heagoo/neweditor/v;->a(Ljava/util/Hashtable;)V

    :cond_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v1, Lcom/gmail/heagoo/neweditor/aj;->h:Ljava/util/Hashtable;

    return-void

    :cond_2
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v3, "RULES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v0, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->b:Lcom/gmail/heagoo/neweditor/s;

    invoke-virtual {v0, v2}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/neweditor/s;)V

    iput-object v3, v1, Lcom/gmail/heagoo/neweditor/aj;->b:Lcom/gmail/heagoo/neweditor/s;

    iput-object v3, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    return-void

    :cond_3
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "IMPORT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object v3, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/neweditor/v;)V

    :cond_4
    return-void

    :cond_5
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "TERMINATE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget v0, v0, Lcom/gmail/heagoo/neweditor/ak;->z:I

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(I)V

    return-void

    :cond_6
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "SEQ"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    if-nez v2, :cond_7

    const-string v0, "empty-tag"

    const-string v2, "SEQ"

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget v3, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v4, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    iget-byte v0, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    invoke-static {v3, v4, v5, v0}, Lcom/gmail/heagoo/common/p;->a(ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;B)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V

    return-void

    :cond_8
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "SEQ_REGEXP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    if-nez v2, :cond_9

    const-string v0, "empty-tag"

    const-string v2, "SEQ_REGEXP"

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_9
    :try_start_0
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->l:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget v3, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v4, v0, Lcom/gmail/heagoo/neweditor/ak;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v5, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    iget-byte v7, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    const-string v0, "RULES"

    invoke-direct {v1, v0}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;)Lcom/gmail/heagoo/neweditor/ak;

    move-result-object v0

    iget-boolean v8, v0, Lcom/gmail/heagoo/neweditor/ak;->n:Z

    invoke-static/range {v3 .. v8}, Lcom/gmail/heagoo/common/p;->a(I[CLjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BZ)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V

    return-void

    :cond_a
    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object v3, v0, Lcom/gmail/heagoo/neweditor/ak;->k:Ljava/lang/String;

    iget v4, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v5, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    iget-byte v7, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    const-string v0, "RULES"

    invoke-direct {v1, v0}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;)Lcom/gmail/heagoo/neweditor/ak;

    move-result-object v0

    iget-boolean v8, v0, Lcom/gmail/heagoo/neweditor/ak;->n:Z

    invoke-static/range {v3 .. v8}, Lcom/gmail/heagoo/common/p;->a(Ljava/lang/String;ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BZ)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "regexp"

    invoke-static {v2, v0}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_b
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "SPAN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    if-nez v2, :cond_c

    const-string v0, "empty-tag"

    const-string v2, "BEGIN"

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_c
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->g:Ljava/lang/StringBuffer;

    if-nez v2, :cond_d

    const-string v0, "empty-tag"

    const-string v2, "END"

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_d
    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget v3, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v4, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/gmail/heagoo/neweditor/ak;->h:I

    iget-object v6, v0, Lcom/gmail/heagoo/neweditor/ak;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    iget-byte v8, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    iget-byte v9, v0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    iget-boolean v10, v0, Lcom/gmail/heagoo/neweditor/ak;->q:Z

    iget-boolean v11, v0, Lcom/gmail/heagoo/neweditor/ak;->r:Z

    iget-object v12, v0, Lcom/gmail/heagoo/neweditor/ak;->j:Ljava/lang/String;

    invoke-static/range {v3 .. v12}, Lcom/gmail/heagoo/common/p;->a(ILjava/lang/String;ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BBZZLjava/lang/String;)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V

    return-void

    :cond_e
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "SPAN_REGEXP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    if-nez v2, :cond_f

    const-string v0, "empty-tag"

    const-string v2, "BEGIN"

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_f
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->g:Ljava/lang/StringBuffer;

    if-nez v2, :cond_10

    const-string v0, "empty-tag"

    const-string v2, "END"

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_10
    :try_start_1
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->l:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget v3, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v4, v0, Lcom/gmail/heagoo/neweditor/ak;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v5, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/gmail/heagoo/neweditor/ak;->h:I

    iget-object v7, v0, Lcom/gmail/heagoo/neweditor/ak;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    iget-byte v9, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    iget-byte v10, v0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    iget-boolean v11, v0, Lcom/gmail/heagoo/neweditor/ak;->q:Z

    iget-boolean v12, v0, Lcom/gmail/heagoo/neweditor/ak;->r:Z

    const-string v13, "RULES"

    invoke-direct {v1, v13}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;)Lcom/gmail/heagoo/neweditor/ak;

    move-result-object v13

    iget-boolean v13, v13, Lcom/gmail/heagoo/neweditor/ak;->n:Z

    iget-object v14, v0, Lcom/gmail/heagoo/neweditor/ak;->j:Ljava/lang/String;

    iget-boolean v15, v0, Lcom/gmail/heagoo/neweditor/ak;->i:Z

    invoke-static/range {v3 .. v15}, Lcom/gmail/heagoo/common/p;->a(I[CLjava/lang/String;ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BBZZZLjava/lang/String;Z)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V

    return-void

    :cond_11
    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object v3, v0, Lcom/gmail/heagoo/neweditor/ak;->k:Ljava/lang/String;

    iget v4, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v5, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/gmail/heagoo/neweditor/ak;->h:I

    iget-object v7, v0, Lcom/gmail/heagoo/neweditor/ak;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    iget-byte v9, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    iget-byte v10, v0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    iget-boolean v11, v0, Lcom/gmail/heagoo/neweditor/ak;->q:Z

    iget-boolean v12, v0, Lcom/gmail/heagoo/neweditor/ak;->r:Z

    const-string v13, "RULES"

    invoke-direct {v1, v13}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;)Lcom/gmail/heagoo/neweditor/ak;

    move-result-object v13

    iget-boolean v13, v13, Lcom/gmail/heagoo/neweditor/ak;->n:Z

    iget-object v14, v0, Lcom/gmail/heagoo/neweditor/ak;->j:Ljava/lang/String;

    iget-boolean v15, v0, Lcom/gmail/heagoo/neweditor/ak;->i:Z

    invoke-static/range {v3 .. v15}, Lcom/gmail/heagoo/common/p;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BBZZZLjava/lang/String;Z)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v2, "regexp"

    invoke-static {v2, v0}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_12
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "EOL_SPAN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    if-nez v2, :cond_13

    const-string v0, "empty-tag"

    const-string v2, "EOL_SPAN"

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_13
    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget v3, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v4, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    iget-byte v6, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    iget-byte v0, v0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    invoke-static {v3, v4, v5, v6, v0}, Lcom/gmail/heagoo/common/p;->a(ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BB)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V

    return-void

    :cond_14
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "EOL_SPAN_REGEXP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    if-nez v2, :cond_15

    const-string v0, "empty-tag"

    const-string v2, "EOL_SPAN_REGEXP"

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_15
    :try_start_2
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->l:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget v3, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v4, v0, Lcom/gmail/heagoo/neweditor/ak;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v5, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    iget-byte v7, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    iget-byte v8, v0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    const-string v0, "RULES"

    invoke-direct {v1, v0}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;)Lcom/gmail/heagoo/neweditor/ak;

    move-result-object v0

    iget-boolean v9, v0, Lcom/gmail/heagoo/neweditor/ak;->n:Z

    invoke-static/range {v3 .. v9}, Lcom/gmail/heagoo/common/p;->a(I[CLjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BBZ)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V

    return-void

    :cond_16
    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object v3, v0, Lcom/gmail/heagoo/neweditor/ak;->k:Ljava/lang/String;

    iget v4, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v5, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/gmail/heagoo/neweditor/ak;->e:Lcom/gmail/heagoo/neweditor/v;

    iget-byte v7, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    iget-byte v8, v0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    const-string v0, "RULES"

    invoke-direct {v1, v0}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;)Lcom/gmail/heagoo/neweditor/ak;

    move-result-object v0

    iget-boolean v9, v0, Lcom/gmail/heagoo/neweditor/ak;->n:Z

    invoke-static/range {v3 .. v9}, Lcom/gmail/heagoo/common/p;->a(Ljava/lang/String;ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BBZ)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    const-string v2, "regexp"

    invoke-static {v2, v0}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_17
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "MARK_FOLLOWING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    if-nez v2, :cond_18

    const-string v0, "empty-tag"

    const-string v2, "MARK_FOLLOWING"

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_18
    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget v3, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v4, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-byte v5, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    iget-byte v0, v0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    invoke-static {v3, v4, v5, v0}, Lcom/gmail/heagoo/common/p;->a(ILjava/lang/String;BB)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V

    return-void

    :cond_19
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "MARK_PREVIOUS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    if-nez v2, :cond_1a

    const-string v0, "empty-tag"

    const-string v2, "MARK_PREVIOUS"

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1a
    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget v3, v0, Lcom/gmail/heagoo/neweditor/ak;->w:I

    iget-object v4, v0, Lcom/gmail/heagoo/neweditor/ak;->v:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-byte v5, v0, Lcom/gmail/heagoo/neweditor/ak;->x:B

    iget-byte v0, v0, Lcom/gmail/heagoo/neweditor/ak;->p:B

    invoke-static {v3, v4, v5, v0}, Lcom/gmail/heagoo/common/p;->b(ILjava/lang/String;BB)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/neweditor/v;->a(Lcom/gmail/heagoo/common/p;)V

    return-void

    :cond_1b
    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "END"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "BEGIN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "KEYWORDS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    const-string v4, "MODE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v0, Lcom/gmail/heagoo/neweditor/ak;->y:Ljava/lang/String;

    invoke-static {v2}, Lcom/gmail/heagoo/neweditor/Token;->stringToToken(Ljava/lang/String;)B

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1c

    return-void

    :cond_1c
    iget-object v4, v0, Lcom/gmail/heagoo/neweditor/ak;->o:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lcom/gmail/heagoo/neweditor/ak;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_0

    :cond_1d
    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ak;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/gmail/heagoo/neweditor/aj;->b:Lcom/gmail/heagoo/neweditor/s;

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcom/gmail/heagoo/neweditor/aj;->b:Lcom/gmail/heagoo/neweditor/s;

    invoke-virtual {v3, v0, v2}, Lcom/gmail/heagoo/neweditor/s;->a(Ljava/lang/String;B)V

    :cond_1e
    return-void

    :cond_1f
    :goto_0
    const-string v0, "empty-keyword"

    invoke-static {v0, v3}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_20
    return-void

    :cond_21
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5

    invoke-direct {p0, p3, p4}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/gmail/heagoo/neweditor/ak;

    move-result-object p1

    const-string p2, "WHITESPACE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "KEYWORDS"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lcom/gmail/heagoo/neweditor/s;

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {p2}, Lcom/gmail/heagoo/neweditor/v;->e()Z

    move-result p2

    invoke-direct {p1, p2}, Lcom/gmail/heagoo/neweditor/s;-><init>(Z)V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/aj;->b:Lcom/gmail/heagoo/neweditor/s;

    return-void

    :cond_0
    const-string p2, "RULES"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/gmail/heagoo/neweditor/ak;->u:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, "MAIN"

    iput-object p2, p1, Lcom/gmail/heagoo/neweditor/ak;->u:Ljava/lang/String;

    :cond_1
    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->a:Lcom/gmail/heagoo/neweditor/ah;

    iget-object p3, p1, Lcom/gmail/heagoo/neweditor/ak;->u:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/neweditor/ah;->a(Ljava/lang/String;)Lcom/gmail/heagoo/neweditor/v;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    if-nez p2, :cond_2

    new-instance p2, Lcom/gmail/heagoo/neweditor/v;

    iget-object p3, p0, Lcom/gmail/heagoo/neweditor/aj;->d:Ljava/lang/String;

    iget-object p4, p1, Lcom/gmail/heagoo/neweditor/ak;->u:Ljava/lang/String;

    invoke-direct {p2, p3, p4}, Lcom/gmail/heagoo/neweditor/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->a:Lcom/gmail/heagoo/neweditor/ah;

    iget-object p3, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/neweditor/v;)V

    :cond_2
    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-boolean p3, p1, Lcom/gmail/heagoo/neweditor/ak;->n:Z

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/neweditor/v;->a(Z)V

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-boolean p3, p1, Lcom/gmail/heagoo/neweditor/ak;->m:Z

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/neweditor/v;->b(Z)V

    iget-object p2, p1, Lcom/gmail/heagoo/neweditor/ak;->f:Ljava/lang/String;

    if-eqz p2, :cond_4

    :try_start_0
    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object p3, p1, Lcom/gmail/heagoo/neweditor/ak;->f:Ljava/lang/String;

    iget-boolean p4, p1, Lcom/gmail/heagoo/neweditor/ak;->n:Z

    if-eqz p4, :cond_3

    const/4 p4, 0x2

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    :goto_0
    invoke-static {p3, p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/neweditor/v;->a(Ljava/util/regex/Pattern;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string p3, "regexp"

    invoke-static {p3, p2}, Lcom/gmail/heagoo/neweditor/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object p2, p1, Lcom/gmail/heagoo/neweditor/ak;->j:Ljava/lang/String;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object p3, p1, Lcom/gmail/heagoo/neweditor/ak;->j:Ljava/lang/String;

    invoke-static {p3}, Lcom/gmail/heagoo/common/p;->a(Ljava/lang/String;)Lcom/gmail/heagoo/common/p;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/neweditor/v;->b(Lcom/gmail/heagoo/common/p;)V

    :cond_5
    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-byte p3, p1, Lcom/gmail/heagoo/neweditor/ak;->d:B

    invoke-virtual {p2, p3}, Lcom/gmail/heagoo/neweditor/v;->b(B)V

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/aj;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/ak;->s:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/neweditor/v;->a(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
