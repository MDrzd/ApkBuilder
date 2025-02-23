.class public Lcom/gmail/heagoo/apkeditor/b/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/BufferedWriter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<span class=\"attribute-name\">"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</span>=<a class=\"attribute-value\">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</a>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/BufferedWriter;ILjava/lang/String;Z)V
    .registers 5

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "&lt;/<span class=\"end-tag\">"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</span>&gt;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V
    .registers 9

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    iget v2, p0, Lcom/gmail/heagoo/apkeditor/b/e;->a:I

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v2, :cond_0

    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "&lt;<span class=\"start-tag\">"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</span>"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 p3, 0x1

    const/4 v1, 0x1

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget-object v2, p2, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    aget-object v3, p2, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/gmail/heagoo/apkeditor/b/e;->a:I

    add-int/2addr v4, p3

    invoke-static {p1, v4, v3, v2}, Lcom/gmail/heagoo/apkeditor/b/e;->a(Ljava/io/BufferedWriter;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Lcom/gmail/heagoo/apkeditor/b/e;->a(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private b(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V
    .registers 12

    const/16 v0, 0x3c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/gmail/heagoo/apkeditor/b/e;->a(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/b/e;->a(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    const/16 v6, 0x2f

    const/4 v7, 0x1

    if-eq v4, v6, :cond_5

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lcom/gmail/heagoo/apkeditor/b/e;->a(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    if-nez v4, :cond_3

    iget p3, p0, Lcom/gmail/heagoo/apkeditor/b/e;->a:I

    add-int/2addr p3, v7

    iput p3, p0, Lcom/gmail/heagoo/apkeditor/b/e;->a:I

    const-string p3, ">"

    :goto_2
    invoke-static {p1, p3}, Lcom/gmail/heagoo/apkeditor/b/e;->a(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p3, "/>"

    goto :goto_2

    :goto_3
    add-int/2addr v0, v7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-ge v0, p3, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v2}, Lcom/gmail/heagoo/apkeditor/b/e;->b(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_4
    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/b/e;->a(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    return-void

    :cond_5
    iget v3, p0, Lcom/gmail/heagoo/apkeditor/b/e;->a:I

    sub-int/2addr v3, v7

    iput v3, p0, Lcom/gmail/heagoo/apkeditor/b/e;->a:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v1, :cond_6

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/b/e;->a:I

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0, p3}, Lcom/gmail/heagoo/apkeditor/b/e;->a(Ljava/io/BufferedWriter;ILjava/lang/String;Z)V

    add-int/2addr v3, v7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-ge v3, p3, :cond_7

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v2}, Lcom/gmail/heagoo/apkeditor/b/e;->b(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    return-void

    :cond_6
    iget v1, p0, Lcom/gmail/heagoo/apkeditor/b/e;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2, p3}, Lcom/gmail/heagoo/apkeditor/b/e;->a(Ljava/io/BufferedWriter;ILjava/lang/String;Z)V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "<html><head>"

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<title>1.xml</title>"

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<link rel=\"stylesheet\" type=\"text/css\" href=\"viewsource.css\">"

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "</head>"

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<body id=\"viewsource\" class=\"wrap\" style=\"-moz-tab-size: 4\">"

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<pre id=\"line1\">"

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x1

    const/4 v2, 0x2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\n<span id=\"line"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\"></span>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-direct {p0, p2, v3, v1}, Lcom/gmail/heagoo/apkeditor/b/e;->b(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method
