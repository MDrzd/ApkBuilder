.class public final Lcom/gmail/heagoo/apkeditor/util/g;
.super Lcom/gmail/heagoo/apkeditor/util/e;


# instance fields
.field private e:I

.field private f:Ljava/util/List;

.field private g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gmail/heagoo/apkeditor/util/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/util/g;->e:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/g;->f:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/g;->g:Ljava/util/Map;

    :try_start_0
    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/util/g;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/util/j;
    .registers 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/util/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/util/g;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/util/j;

    iget-object v2, v1, Lcom/gmail/heagoo/apkeditor/util/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private e()V
    .registers 15

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "^(.+):([0-9]+): Tag (.+) attribute (.+) has invalid character \'"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/StringReader;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/util/g;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :catch_0
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v9}, Lcom/gmail/heagoo/apkeditor/util/g;->a(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/util/j;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/gmail/heagoo/apkeditor/util/j;

    iget-object v8, p0, Lcom/gmail/heagoo/apkeditor/util/g;->a:Ljava/lang/String;

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/gmail/heagoo/apkeditor/util/j;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;B)V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/util/g;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-lez v10, :cond_2

    add-int/lit8 v4, v10, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Lcom/gmail/heagoo/apkeditor/util/i;

    invoke-direct {v5, v4, v11, v12, v3}, Lcom/gmail/heagoo/apkeditor/util/i;-><init>(ILjava/lang/String;Ljava/lang/String;B)V

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/util/j;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/g;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/util/j;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/util/j;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const v0, 0x7f0d02b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/util/g;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .registers 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v0, v1, Lcom/gmail/heagoo/apkeditor/util/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    iget-object v0, v1, Lcom/gmail/heagoo/apkeditor/util/g;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/util/j;

    :try_start_0
    new-instance v5, Lcom/gmail/heagoo/apkeditor/d/a;

    iget-object v6, v0, Lcom/gmail/heagoo/apkeditor/util/j;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/gmail/heagoo/apkeditor/d/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/gmail/heagoo/apkeditor/d/a;->a()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    invoke-static {v0, v6}, Lcom/gmail/heagoo/apkeditor/util/j;->a(Lcom/gmail/heagoo/apkeditor/util/j;I)Lcom/gmail/heagoo/apkeditor/util/h;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v9, v0, Lcom/gmail/heagoo/apkeditor/util/j;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v7, v7, Lcom/gmail/heagoo/apkeditor/util/h;->b:Ljava/util/List;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :goto_2
    array-length v12, v10

    if-ge v11, v12, :cond_8

    aget-object v12, v10, v11

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    aget-object v13, v12, v2

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v16, :cond_2

    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    :goto_4
    const/4 v8, 0x1

    goto :goto_5

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_2
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_7

    :try_start_2
    new-array v2, v14, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    :try_start_3
    aget-object v13, v12, v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v12, v12, v8

    const-string v8, ""

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v13, :cond_3

    :try_start_5
    const-string v8, "\""
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v13, v8

    const/4 v8, 0x1

    goto :goto_6

    :cond_3
    move-object v13, v8

    const/4 v8, 0x0

    :goto_6
    :try_start_6
    const-string v14, "\""

    invoke-virtual {v12, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    goto :goto_7

    :cond_4
    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    if-gt v14, v8, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v12, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gmail/heagoo/apkeditor/util/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v8, v2, v14

    const/4 v8, 0x1

    aput-object v12, v2, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_7
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v11

    const/4 v4, 0x1

    aget-object v8, v2, v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    :try_start_7
    aget-object v12, v2, v8

    aget-object v2, v2, v4

    iget-object v4, v1, Lcom/gmail/heagoo/apkeditor/util/g;->g:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v13, v1, Lcom/gmail/heagoo/apkeditor/util/g;->g:Ljava/util/Map;

    invoke-interface {v13, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v4, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_7
    const/4 v8, 0x0

    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v8, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v10

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v4, :cond_9

    aget-object v9, v10, v7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_a
    const/4 v8, 0x0

    :goto_a
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x0

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/util/j;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_b

    :cond_c
    iget v0, v1, Lcom/gmail/heagoo/apkeditor/util/g;->e:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/gmail/heagoo/apkeditor/util/g;->e:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :catchall_0
    move-exception v0

    const/16 v17, 0x0

    goto :goto_f

    :catch_3
    move-exception v0

    const/4 v8, 0x0

    :goto_c
    const/4 v4, 0x0

    :goto_d
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_e
    invoke-static {v4}, Lcom/gmail/heagoo/apkeditor/util/c;->a(Ljava/io/BufferedWriter;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    :goto_f
    invoke-static/range {v17 .. v17}, Lcom/gmail/heagoo/apkeditor/util/c;->a(Ljava/io/BufferedWriter;)V

    throw v0

    :cond_d
    return-void
.end method

.method public final c()Z
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/util/g;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/g;->g:Ljava/util/Map;

    return-object v0
.end method
