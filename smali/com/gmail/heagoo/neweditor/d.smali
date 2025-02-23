.class public final Lcom/gmail/heagoo/neweditor/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:I = 0x40


# instance fields
.field private transient b:Ljava/util/ArrayList;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:Ljava/io/File;

.field private h:Ljava/util/Vector;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Vector;

.field private transient m:Lcom/gmail/heagoo/neweditor/ah;

.field private n:Lcom/gmail/heagoo/common/j;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/d;->c:Z

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/gmail/heagoo/neweditor/d;->h:Ljava/util/Vector;

    iput v0, p0, Lcom/gmail/heagoo/neweditor/d;->i:I

    iput v0, p0, Lcom/gmail/heagoo/neweditor/d;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->l:Ljava/util/Vector;

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/d;->g:Ljava/io/File;

    new-instance v0, Lcom/gmail/heagoo/common/j;

    invoke-direct {v0}, Lcom/gmail/heagoo/common/j;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->n:Lcom/gmail/heagoo/common/j;

    if-nez p3, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "htm"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "html"

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".xml"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "txt.xml"

    :goto_0
    move-object p3, p2

    :cond_2
    new-instance p2, Lcom/gmail/heagoo/neweditor/aj;

    invoke-direct {p2}, Lcom/gmail/heagoo/neweditor/aj;-><init>()V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syntax/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {p2}, Lcom/gmail/heagoo/neweditor/aj;->a()Lcom/gmail/heagoo/neweditor/ah;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/d;->m:Lcom/gmail/heagoo/neweditor/ah;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :catch_2
    return-void

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    return-void
.end method

.method private a(I)Lcom/gmail/heagoo/neweditor/ai;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/neweditor/ai;

    return-object p1
.end method

.method private a(ILcom/gmail/heagoo/neweditor/ai;)V
    .registers 5

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->b:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private static a(Landroid/text/Spannable;II)V
    .registers 5

    const-class v0, Lcom/gmail/heagoo/neweditor/ae;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroid/text/Spannable;Landroid/text/style/CharacterStyle;III)V
    .registers 5

    const/16 p4, 0x21

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->g:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "untitled"

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .registers 2

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/d;->g:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/neweditor/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    long-to-int p1, v0

    new-array p1, p1, [B

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->k:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gmail/heagoo/neweditor/d;->c:Z

    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Landroid/widget/EditText;)V
    .registers 14

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->m:Lcom/gmail/heagoo/neweditor/ah;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/gmail/heagoo/neweditor/d;->d:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/gmail/heagoo/neweditor/ab;

    invoke-direct {v2}, Lcom/gmail/heagoo/neweditor/ab;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_3

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {p1, v5, v6}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v6, Lcom/gmail/heagoo/neweditor/c;

    invoke-direct {v6}, Lcom/gmail/heagoo/neweditor/c;-><init>()V

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iput-object v7, v2, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iput v1, v2, Lcom/gmail/heagoo/neweditor/ab;->c:I

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, v2, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget-object v7, p0, Lcom/gmail/heagoo/neweditor/d;->m:Lcom/gmail/heagoo/neweditor/ah;

    invoke-virtual {v7, v4, v6, v2}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/neweditor/ai;Lcom/gmail/heagoo/neweditor/ag;Lcom/gmail/heagoo/neweditor/ab;)Lcom/gmail/heagoo/neweditor/ai;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v6}, Lcom/gmail/heagoo/neweditor/c;->a()Lcom/gmail/heagoo/neweditor/Token;

    move-result-object v6

    invoke-static {v6}, La/a/a;->a(Lcom/gmail/heagoo/neweditor/Token;)Lcom/gmail/heagoo/neweditor/Token;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_2

    iget v8, v6, Lcom/gmail/heagoo/neweditor/Token;->length:I

    if-lez v8, :cond_1

    iget-byte v8, v6, Lcom/gmail/heagoo/neweditor/Token;->id:B

    if-eqz v8, :cond_1

    iget v8, v6, Lcom/gmail/heagoo/neweditor/Token;->offset:I

    add-int/2addr v8, v5

    iget v9, v6, Lcom/gmail/heagoo/neweditor/Token;->length:I

    iget v10, v6, Lcom/gmail/heagoo/neweditor/Token;->offset:I

    add-int/2addr v10, v5

    add-int/2addr v9, v10

    new-instance v10, Lcom/gmail/heagoo/neweditor/ae;

    iget-object v11, p0, Lcom/gmail/heagoo/neweditor/d;->n:Lcom/gmail/heagoo/common/j;

    invoke-virtual {v11, v6}, Lcom/gmail/heagoo/common/j;->a(Lcom/gmail/heagoo/neweditor/Token;)I

    move-result v11

    invoke-direct {v10, v11}, Lcom/gmail/heagoo/neweditor/ae;-><init>(I)V

    const/16 v11, 0x21

    invoke-static {p1, v10, v8, v9, v11}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/text/Spannable;Landroid/text/style/CharacterStyle;III)V

    :cond_1
    iget-object v6, v6, Lcom/gmail/heagoo/neweditor/Token;->next:Lcom/gmail/heagoo/neweditor/Token;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    move-object v7, v4

    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/gmail/heagoo/neweditor/d;->a(ILcom/gmail/heagoo/neweditor/ai;)V

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    move-object v4, v7

    goto :goto_0

    :cond_3
    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    return-void
.end method

.method public final a(Landroid/widget/EditText;IIIIZ)V
    .registers 24

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    :try_start_0
    iget-object v0, v1, Lcom/gmail/heagoo/neweditor/d;->m:Lcom/gmail/heagoo/neweditor/ah;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    iput-boolean v5, v1, Lcom/gmail/heagoo/neweditor/d;->d:Z

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "\\n"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gmail/heagoo/neweditor/ab;

    invoke-direct {v8}, Lcom/gmail/heagoo/neweditor/ab;-><init>()V

    const/4 v0, 0x0

    move-object v10, v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    array-length v0, v7

    if-ge v9, v0, :cond_a

    iget v0, v1, Lcom/gmail/heagoo/neweditor/d;->f:I

    if-lt v9, v0, :cond_2

    iget v0, v1, Lcom/gmail/heagoo/neweditor/d;->e:I

    if-gt v9, v0, :cond_2

    if-lt v9, v2, :cond_1

    if-le v9, v3, :cond_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    aget-object v12, v7, v9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v0, v11, v12}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/text/Spannable;II)V

    :cond_2
    if-eqz p6, :cond_3

    aget-object v0, v7, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v11

    move/from16 v12, p2

    if-gt v12, v0, :cond_4

    move/from16 v13, p3

    if-ge v13, v11, :cond_6

    goto :goto_1

    :cond_3
    move/from16 v12, p2

    :cond_4
    move/from16 v13, p3

    :goto_1
    if-nez p6, :cond_5

    if-lt v9, v2, :cond_5

    if-le v9, v3, :cond_6

    :cond_5
    invoke-direct {v1, v9}, Lcom/gmail/heagoo/neweditor/d;->a(I)Lcom/gmail/heagoo/neweditor/ai;

    move-result-object v0

    if-eq v0, v10, :cond_9

    if-lt v9, v2, :cond_9

    if-le v9, v3, :cond_6

    goto/16 :goto_6

    :cond_6
    aget-object v0, v7, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v6, v11, v0}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v0, Lcom/gmail/heagoo/neweditor/c;

    invoke-direct {v0}, Lcom/gmail/heagoo/neweditor/c;-><init>()V

    aget-object v14, v7, v9

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    iput-object v14, v8, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iput v5, v8, Lcom/gmail/heagoo/neweditor/ab;->c:I

    aget-object v14, v7, v9

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    iput v14, v8, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iget-object v14, v1, Lcom/gmail/heagoo/neweditor/d;->m:Lcom/gmail/heagoo/neweditor/ah;

    invoke-virtual {v14, v10, v0, v8}, Lcom/gmail/heagoo/neweditor/ah;->a(Lcom/gmail/heagoo/neweditor/ai;Lcom/gmail/heagoo/neweditor/ag;Lcom/gmail/heagoo/neweditor/ab;)Lcom/gmail/heagoo/neweditor/ai;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/c;->a()Lcom/gmail/heagoo/neweditor/Token;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Lcom/gmail/heagoo/neweditor/Token;)Lcom/gmail/heagoo/neweditor/Token;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_8

    if-lt v9, v2, :cond_7

    if-gt v9, v3, :cond_7

    iget v15, v0, Lcom/gmail/heagoo/neweditor/Token;->length:I

    if-lez v15, :cond_7

    iget-byte v15, v0, Lcom/gmail/heagoo/neweditor/Token;->id:B

    if-eqz v15, :cond_7

    iget v15, v0, Lcom/gmail/heagoo/neweditor/Token;->offset:I

    add-int/2addr v15, v11

    iget v5, v0, Lcom/gmail/heagoo/neweditor/Token;->length:I

    iget v4, v0, Lcom/gmail/heagoo/neweditor/Token;->offset:I

    add-int/2addr v4, v11

    add-int/2addr v5, v4

    new-instance v4, Lcom/gmail/heagoo/neweditor/ae;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v16, v8

    :try_start_3
    iget-object v8, v1, Lcom/gmail/heagoo/neweditor/d;->n:Lcom/gmail/heagoo/common/j;

    invoke-virtual {v8, v0}, Lcom/gmail/heagoo/common/j;->a(Lcom/gmail/heagoo/neweditor/Token;)I

    move-result v8

    invoke-direct {v4, v8}, Lcom/gmail/heagoo/neweditor/ae;-><init>(I)V

    const/16 v8, 0x21

    invoke-static {v6, v4, v15, v5, v8}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/text/Spannable;Landroid/text/style/CharacterStyle;III)V

    goto :goto_3

    :cond_7
    move-object/from16 v16, v8

    :goto_3
    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/Token;->next:Lcom/gmail/heagoo/neweditor/Token;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v8, v16

    const/4 v5, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_8
    move-object/from16 v16, v8

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v16, v8

    move-object v14, v10

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    invoke-direct {v1, v9, v10}, Lcom/gmail/heagoo/neweditor/d;->a(ILcom/gmail/heagoo/neweditor/ai;)V

    move-object v10, v14

    goto :goto_7

    :cond_9
    :goto_6
    move-object/from16 v16, v8

    add-int/lit8 v0, v9, 0x1

    invoke-direct {v1, v0}, Lcom/gmail/heagoo/neweditor/d;->a(I)Lcom/gmail/heagoo/neweditor/ai;

    move-result-object v0

    move-object v10, v0

    :goto_7
    aget-object v0, v7, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v11, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, v16

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    iput v2, v1, Lcom/gmail/heagoo/neweditor/d;->f:I

    iput v3, v1, Lcom/gmail/heagoo/neweditor/d;->e:I
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;III)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->k:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/d;->k:Ljava/lang/String;

    new-instance p1, Lcom/gmail/heagoo/neweditor/a;

    add-int/2addr p3, p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/d;->k:Ljava/lang/String;

    add-int/2addr p4, p2

    invoke-virtual {v0, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lcom/gmail/heagoo/neweditor/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/d;->l:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/d;->l:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gmail/heagoo/neweditor/a;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/neweditor/a;->a(Lcom/gmail/heagoo/neweditor/a;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/d;->l:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gmail/heagoo/neweditor/a;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/neweditor/a;->b(Lcom/gmail/heagoo/neweditor/a;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/gmail/heagoo/neweditor/d;->l:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    sget p1, Lcom/gmail/heagoo/neweditor/d;->a:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/d;->l:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    sget p2, Lcom/gmail/heagoo/neweditor/d;->a:I

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/d;->l:Ljava/util/Vector;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/d;->h:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/d;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/d;->c:Z

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/d;->c:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/d;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/gmail/heagoo/neweditor/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " *"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/gmail/heagoo/neweditor/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
