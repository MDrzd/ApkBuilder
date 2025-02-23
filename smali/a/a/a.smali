.class public La/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a;->a:Z

    sget v0, La/a/c;->a:I

    iput v0, p0, La/a/a;->b:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, La/a/a;->c:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    iput-boolean p1, p0, La/a/a;->a:Z

    return-void
.end method

.method public static a(II)I
    .registers 6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lb/a/a/a;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p0}, Lb/a/a/a;->a()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v2, 0x7f

    mul-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_0

    :cond_1
    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    new-instance p0, Lb/a/s;

    const-string v0, "invalid LEB128 sequence"

    invoke-direct {p0, v0}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lb/a/a/a;I)I
    .registers 5

    const/4 v0, 0x0

    move v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    ushr-int/lit8 v1, v1, 0x8

    invoke-interface {p0}, Lb/a/a/a;->a()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 p0, p1, 0x3

    shl-int/lit8 p0, p0, 0x3

    shr-int p0, v1, p0

    return p0
.end method

.method public static a(Lb/a/a/a;IZ)I
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move p2, p1

    :goto_0
    if-ltz p2, :cond_0

    ushr-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, Lb/a/a/a;->a()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 p0, p1, 0x3

    shl-int/lit8 p0, p0, 0x3

    ushr-int p0, v0, p0

    goto :goto_2

    :cond_1
    :goto_1
    if-ltz p1, :cond_2

    ushr-int/lit8 p2, v0, 0x8

    invoke-interface {p0}, Lb/a/a/a;->a()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_2
    return p0
.end method

.method public static a([B)I
    .registers 4

    array-length v0, p0

    const/4 v1, -0x1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_6

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_6

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_6

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    aget-byte p0, p0, v2

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "035"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0xd

    return p0

    :cond_2
    const-string v0, "037"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x18

    return p0

    :cond_3
    const-string v0, "038"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x1a

    return p0

    :cond_4
    const-string v0, "039"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x1c

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const-string v0, "039"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public static a(Landroid/app/Activity;)La/a/a;
    .registers 2

    new-instance v0, La/a/a;

    invoke-direct {v0, p0}, La/a/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Lb/b/a/b/o;Lb/b/a/b/o;)Lb/b/a/b/o;
    .registers 8

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lb/b/a/b/o;->g()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lb/b/a/b/o;->g()I

    move-result v2

    if-ne v2, v0, :cond_6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lb/b/a/b/o;->a(I)Lb/b/f/d/d;

    move-result-object v3

    invoke-virtual {p1, v2}, Lb/b/a/b/o;->a(I)Lb/b/f/d/d;

    move-result-object v4

    invoke-static {v3, v4}, La/a/a;->a(Lb/b/f/d/d;Lb/b/f/d/d;)Lb/b/f/d/d;

    move-result-object v5

    if-eq v5, v3, :cond_3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lb/b/a/b/o;->f()Lb/b/a/b/o;

    move-result-object v1

    :cond_1
    if-eqz v5, :cond_2

    :try_start_0
    invoke-virtual {v1, v2, v5}, Lb/b/a/b/o;->a(ILb/b/f/d/d;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lb/b/a/b/aj;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "incompatible: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lb/b/a/b/aj; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "...while merging stack["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lb/b/a/b/o;->b_()V

    return-object v1

    :cond_6
    new-instance p0, Lb/b/a/b/aj;

    const-string p1, "mismatched stack depths"

    invoke-direct {p0, p1}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lb/b/f/d/c;)Lb/b/f/c/a;
    .registers 4

    invoke-virtual {p0}, Lb/b/f/d/c;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no zero for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/b/f/d/c;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lb/b/f/c/s;->a:Lb/b/f/c/s;

    return-object p0

    :pswitch_1
    sget-object p0, Lb/b/f/c/ac;->a:Lb/b/f/c/ac;

    return-object p0

    :pswitch_2
    sget-object p0, Lb/b/f/c/w;->a:Lb/b/f/c/w;

    return-object p0

    :pswitch_3
    sget-object p0, Lb/b/f/c/p;->b:Lb/b/f/c/p;

    return-object p0

    :pswitch_4
    sget-object p0, Lb/b/f/c/o;->a:Lb/b/f/c/o;

    return-object p0

    :pswitch_5
    sget-object p0, Lb/b/f/c/l;->a:Lb/b/f/c/l;

    return-object p0

    :pswitch_6
    sget-object p0, Lb/b/f/c/k;->a:Lb/b/f/c/k;

    return-object p0

    :pswitch_7
    sget-object p0, Lb/b/f/c/h;->a:Lb/b/f/c/h;

    return-object p0

    :pswitch_8
    sget-object p0, Lb/b/f/c/g;->a:Lb/b/f/c/g;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lb/b/f/d/d;Lb/b/f/d/d;)Lb/b/f/d/d;
    .registers 4

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p0

    invoke-interface {p1}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lb/b/f/d/c;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lb/b/f/d/c;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    if-ne p0, v0, :cond_3

    return-object p1

    :cond_3
    sget-object v0, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lb/b/f/d/c;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lb/b/f/d/c;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lb/b/f/d/c;->s()Lb/b/f/d/c;

    move-result-object p0

    invoke-virtual {p1}, Lb/b/f/d/c;->s()Lb/b/f/d/c;

    move-result-object p1

    invoke-static {p0, p1}, La/a/a;->a(Lb/b/f/d/d;Lb/b/f/d/d;)Lb/b/f/d/d;

    move-result-object p0

    if-nez p0, :cond_5

    sget-object p0, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    return-object p0

    :cond_5
    check-cast p0, Lb/b/f/d/c;

    invoke-virtual {p0}, Lb/b/f/d/c;->r()Lb/b/f/d/c;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lb/b/f/d/c;->l()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lb/b/f/d/c;->l()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    return-object p0

    :cond_8
    return-object v0

    :cond_9
    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Ljava/io/File;)Lcom/gmail/heagoo/apkeditor/b/g;
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Lcom/gmail/heagoo/apkeditor/b/g;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Lcom/gmail/heagoo/apkeditor/b/g;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "\'(.+):(.+):(.+)\'"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v5, "\"(.+):(.+):(.+)\""

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v6, "fileTree\\s*\\(\\s*dir\\s*:\\s*\'(.+)\'\\s*,\\s*include\\s*:\\s*\\[\'(.+)\'\\]\\)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v7, "files\\s*\\(\\s*\'(.+)\'\\s*\\)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, "project\\s*\\(\\s*\'(.+)\'\\s*\\)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    move-object/from16 v13, p3

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_17

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "//"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "minSdkVersion"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/16 v14, 0xe

    if-eqz v13, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v14, :cond_1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, La/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/gmail/heagoo/apkeditor/b/g;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v13, "targetSdkVersion"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v15, 0x11

    if-le v13, v15, :cond_2

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, La/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/gmail/heagoo/apkeditor/b/g;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v13, "java.srcDirs"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "java.srcDirs"

    invoke-static {v12, v13}, La/a/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/gmail/heagoo/apkeditor/b/g;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const-string v13, "res.srcDirs"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "res.srcDirs"

    invoke-static {v12, v13}, La/a/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/gmail/heagoo/apkeditor/b/g;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    const-string v13, "assets.srcDirs"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "assets.srcDirs"

    invoke-static {v12, v13}, La/a/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/gmail/heagoo/apkeditor/b/g;->d(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    const-string v13, "manifest.srcFile"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v15, 0x2

    const/4 v10, 0x1

    if-eqz v13, :cond_8

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v15, :cond_7

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    :goto_1
    sub-int/2addr v13, v10

    invoke-virtual {v12, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_6
    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {v2, v12}, Lcom/gmail/heagoo/apkeditor/b/g;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v13, "apply\\s+plugin\\s*:.+"

    invoke-virtual {v12, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v10, "com.android.application"

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "application"

    invoke-virtual {v2, v10}, Lcom/gmail/heagoo/apkeditor/b/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v13, "useLibrary"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v9, -0x1

    if-eqz v13, :cond_c

    const/16 v10, 0x27

    invoke-virtual {v12, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v9, :cond_a

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v10, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    if-eq v10, v9, :cond_b

    :goto_3
    invoke-virtual {v12, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_a
    const/16 v10, 0x22

    invoke-virtual {v12, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v9, :cond_b

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v10, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    if-eq v10, v9, :cond_b

    goto :goto_3

    :cond_b
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_0

    invoke-virtual {v2, v10}, Lcom/gmail/heagoo/apkeditor/b/g;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v13, "implementation"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/16 v9, 0x9

    const/16 v15, 0xf

    const/16 v10, 0x8

    if-eqz v13, :cond_d

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v15, :cond_d

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_5

    :cond_d
    const-string v13, "compile"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v10, :cond_e

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v15, 0x8

    goto :goto_5

    :cond_e
    const-string v13, "provided"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v9, :cond_f

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_f

    const/16 v15, 0x9

    goto :goto_5

    :cond_f
    const/4 v15, -0x1

    :goto_5
    if-lez v15, :cond_0

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    const/4 v14, 0x3

    if-eqz v13, :cond_10

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, La/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lcom/gmail/heagoo/apkeditor/b/f;

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v13, v10, v9}, Lcom/gmail/heagoo/apkeditor/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, La/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lcom/gmail/heagoo/apkeditor/b/f;

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v13, v10, v9}, Lcom/gmail/heagoo/apkeditor/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v9, v10}, La/a/a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v12, Lcom/gmail/heagoo/apkeditor/b/f;

    invoke-direct {v12, v10}, Lcom/gmail/heagoo/apkeditor/b/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_15

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {v0, v9}, La/a/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v12, Lcom/gmail/heagoo/apkeditor/b/f;

    invoke-direct {v12, v10}, Lcom/gmail/heagoo/apkeditor/b/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    new-instance v10, Lcom/gmail/heagoo/apkeditor/b/f;

    invoke-direct {v10, v9}, Lcom/gmail/heagoo/apkeditor/b/f;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    new-instance v10, Lcom/gmail/heagoo/apkeditor/b/f;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/gmail/heagoo/apkeditor/b/f;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/gmail/heagoo/apkeditor/b/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cannot parse: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v9, v12}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_17
    invoke-static {v11}, La/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v10, v11

    goto :goto_a

    :catchall_1
    move-exception v0

    const/4 v11, 0x0

    goto :goto_c

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    :goto_a
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v10}, La/a/a;->a(Ljava/io/Closeable;)V

    :goto_b
    invoke-virtual {v2, v3}, Lcom/gmail/heagoo/apkeditor/b/g;->a(Ljava/util/List;)V

    return-object v2

    :catchall_2
    move-exception v0

    move-object v11, v10

    :goto_c
    invoke-static {v11}, La/a/a;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/b/h;
    .registers 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v4, "settings.gradle"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v1, Ljava/io/File;

    const-string v4, "app"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "Cannot find include modules"

    goto :goto_0

    :cond_1
    const-string v1, "app"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, La/a/a;->c(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-static {v0}, La/a/a;->b(Ljava/io/File;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/gmail/heagoo/apkeditor/b/h;

    invoke-direct {v2}, Lcom/gmail/heagoo/apkeditor/b/h;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Parse "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/io/File;

    const-string v6, "build.gradle"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4, v1, v5}, La/a/a;->a(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Ljava/io/File;)Lcom/gmail/heagoo/apkeditor/b/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gmail/heagoo/apkeditor/b/h;->a(Lcom/gmail/heagoo/apkeditor/b/g;)V

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method public static a(Lcom/gmail/heagoo/neweditor/Token;)Lcom/gmail/heagoo/neweditor/Token;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/Token;->next:Lcom/gmail/heagoo/neweditor/Token;

    move-object v2, p0

    :goto_0
    if-eqz v1, :cond_2

    iget-byte v3, v1, Lcom/gmail/heagoo/neweditor/Token;->id:B

    iget-byte v4, v2, Lcom/gmail/heagoo/neweditor/Token;->id:B

    if-ne v3, v4, :cond_1

    iget v3, v1, Lcom/gmail/heagoo/neweditor/Token;->offset:I

    iget v4, v2, Lcom/gmail/heagoo/neweditor/Token;->offset:I

    iget v5, v2, Lcom/gmail/heagoo/neweditor/Token;->length:I

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/gmail/heagoo/neweditor/Token;->length:I

    iget v4, v1, Lcom/gmail/heagoo/neweditor/Token;->length:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/gmail/heagoo/neweditor/Token;->length:I

    goto :goto_1

    :cond_1
    iput-object v1, v2, Lcom/gmail/heagoo/neweditor/Token;->next:Lcom/gmail/heagoo/neweditor/Token;

    move-object v2, v1

    :goto_1
    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/Token;->next:Lcom/gmail/heagoo/neweditor/Token;

    goto :goto_0

    :cond_2
    iput-object v0, v2, Lcom/gmail/heagoo/neweditor/Token;->next:Lcom/gmail/heagoo/neweditor/Token;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljackpal/androidterm/a/a/c;
    .registers 3

    sget v0, Ljackpal/androidterm/a/a/b;->a:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    new-instance v0, Ljackpal/androidterm/d;

    invoke-direct {v0, p0}, Ljackpal/androidterm/d;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Ljackpal/androidterm/a/a/d;

    invoke-direct {v0, p0}, Ljackpal/androidterm/a/a/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/io/File;
    .registers 8

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    :goto_0
    const-string p0, "039"

    goto :goto_1

    :cond_0
    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1a

    if-lt p0, v0, :cond_2

    const-string p0, "038"

    goto :goto_1

    :cond_2
    const/16 v0, 0x18

    if-lt p0, v0, :cond_3

    const-string p0, "037"

    goto :goto_1

    :cond_3
    const-string p0, "035"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dex\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u0000"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(III)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p0

    and-int/2addr p0, p1

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "|public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_1

    const-string p1, "|private"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_2

    const-string p1, "|protected"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_3

    const-string p1, "|static"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_4

    const-string p1, "|final"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 p1, p0, 0x20

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-ne p2, v2, :cond_5

    const-string p1, "|super"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string p1, "|synchronized"

    goto :goto_0

    :cond_6
    :goto_1
    and-int/lit8 p1, p0, 0x40

    const/4 v3, 0x3

    if-eqz p1, :cond_8

    if-ne p2, v3, :cond_7

    const-string p1, "|bridge"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string p1, "|volatile"

    goto :goto_2

    :cond_8
    :goto_3
    and-int/lit16 p1, p0, 0x80

    if-eqz p1, :cond_a

    if-ne p2, v3, :cond_9

    const-string p1, "|varargs"

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    const-string p1, "|transient"

    goto :goto_4

    :cond_a
    :goto_5
    and-int/lit16 p1, p0, 0x100

    if-eqz p1, :cond_b

    const-string p1, "|native"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit16 p1, p0, 0x200

    if-eqz p1, :cond_c

    const-string p1, "|interface"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit16 p1, p0, 0x400

    if-eqz p1, :cond_d

    const-string p1, "|abstract"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    and-int/lit16 p1, p0, 0x800

    if-eqz p1, :cond_e

    const-string p1, "|strictfp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit16 p1, p0, 0x1000

    if-eqz p1, :cond_f

    const-string p1, "|synthetic"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    and-int/lit16 p1, p0, 0x2000

    if-eqz p1, :cond_10

    const-string p1, "|annotation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    and-int/lit16 p1, p0, 0x4000

    if-eqz p1, :cond_11

    const-string p1, "|enum"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const/high16 p1, 0x10000

    and-int/2addr p1, p0

    if-eqz p1, :cond_12

    const-string p1, "|constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const/high16 p1, 0x20000

    and-int/2addr p0, p1

    if-eqz p0, :cond_13

    const-string p0, "|declared_synchronized"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_15

    :cond_14
    const/16 p0, 0x7c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x10

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0xf

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    const/4 v3, 0x4

    shr-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 6

    const-string v0, "rootProject."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    return-object p1

    :cond_1
    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v0, "rootProject."

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object p0
.end method

.method public static a([BIIIII)Ljava/lang/String;
    .registers 12

    add-int v0, p1, p2

    or-int v1, p1, p2

    or-int/2addr v1, v0

    if-ltz v1, :cond_a

    array-length v1, p0

    if-gt v0, v1, :cond_a

    if-ltz p3, :cond_9

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v1, p2, 0x2

    const/4 v2, 0x6

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v3, p1

    const/4 p1, 0x0

    :goto_0
    const/16 v4, 0xa

    if-lez p2, :cond_7

    if-nez p1, :cond_4

    const/4 v5, 0x2

    if-eq p5, v5, :cond_3

    const/4 v5, 0x4

    if-eq p5, v5, :cond_2

    if-eq p5, v2, :cond_1

    invoke-static {p3}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-static {p3}, La/a/a;->w(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-static {p3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-static {p3}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    and-int/lit8 v5, p1, 0x1

    if-nez v5, :cond_5

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    aget-byte v5, p0, v3

    invoke-static {v5}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ne p1, p4, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "arr.length "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "..!"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v1, "*"

    const-string v3, ".*"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v1, p0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string p0, "*"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p0, "*"

    const-string v1, ".*"

    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    const/4 p3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0, p1}, Lcom/a/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    move-object p3, p0

    move-object p0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, p3

    move-object p3, p0

    move-object p0, p1

    move-object p1, v2

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object p1, p3

    :goto_0
    invoke-static {p3}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Lb/a/a/b;I)V
    .registers 4

    :goto_0
    ushr-int/lit8 v0, p1, 0x7

    move v1, v0

    move v0, p1

    move p1, v1

    if-eqz p1, :cond_0

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lb/a/a/b;->d(I)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, 0x7f

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lb/a/a/b;->d(I)V

    return-void
.end method

.method public static a(Lb/a/a/b;IJ)V
    .registers 6

    const/16 v0, 0x3f

    shr-long v0, p2, v0

    xor-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x41

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr p1, v1

    invoke-interface {p0, p1}, Lb/a/a/b;->d(I)V

    :goto_0
    if-lez v0, :cond_0

    long-to-int p1, p2

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lb/a/a/b;->d(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/BufferedWriter;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "&lt;/<span class=\"end-tag\">"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</span>&gt;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

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

.method private static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/InputStream;)V
    .registers 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/OutputStream;)V
    .registers 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DEBUG"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)V
    .registers 16

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "<html><head>"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<title>1.xml</title>"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<link rel=\"stylesheet\" type=\"text/css\" href=\"viewsource.css\">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "</head>"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<body id=\"viewsource\" class=\"wrap\" style=\"-moz-tab-size: 4\">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<pre id=\"line1\">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "<"

    const-string v3, "&lt;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ">"

    const-string v3, "&gt;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_10

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\n<span id=\"line"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\"></span>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v1, :cond_d

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_d

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-lt v7, v8, :cond_2

    const/16 v8, 0x7a

    if-le v7, v8, :cond_4

    :cond_2
    const/16 v8, 0x41

    if-lt v7, v8, :cond_3

    const/16 v8, 0x5a

    if-le v7, v8, :cond_4

    :cond_3
    const/16 v8, 0x5f

    if-ne v7, v8, :cond_b

    :cond_4
    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "/>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    :goto_2
    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v10, v9, v0

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v5, v10}, La/a/a;->b(Ljava/io/BufferedWriter;ILjava/lang/String;)V

    const/4 v10, 0x1

    :goto_3
    array-length v11, v9

    if-ge v10, v11, :cond_8

    aget-object v11, v9, v10

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    aget-object v12, v9, v10

    invoke-virtual {v12, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v9, v10

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v13, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v13, v5, 0x1

    invoke-static {p1, v13, v12, v11}, La/a/a;->a(Ljava/io/BufferedWriter;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    aget-object v11, v9, v10

    invoke-static {p1, v11}, La/a/a;->a(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    if-eqz v8, :cond_9

    const-string v7, "/>"

    :goto_5
    invoke-static {p1, v7}, La/a/a;->a(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    if-eqz v7, :cond_a

    const-string v7, ">"

    goto :goto_5

    :cond_a
    :goto_6
    if-nez v8, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    const/16 v8, 0x2f

    if-ne v7, v8, :cond_d

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v5, v7}, La/a/a;->a(Ljava/io/BufferedWriter;ILjava/lang/String;)V

    :cond_c
    :goto_7
    move-object v7, v6

    move v6, v5

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    move-object v7, v6

    move v6, v5

    const/4 v5, 0x0

    :goto_8
    if-nez v5, :cond_f

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v6, :cond_e

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_e
    const-string v5, "<"

    const-string v8, "&lt;"

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ">"

    const-string v8, "&gt;"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_f
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method

.method private static a([BILjava/lang/String;)V
    .registers 8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    :goto_1
    move p1, v3

    goto :goto_2

    :cond_0
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 p1, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p0, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 p1, v3, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, p1, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a([IIZ)V
    .registers 4

    shr-int/lit8 p2, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v0, 0x1

    shl-int p1, v0, p1

    aget v0, p0, p2

    or-int/2addr p1, v0

    aput p1, p0, p2

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    array-length v4, p0

    if-ge v1, v4, :cond_9

    aget-object v4, p0, v1

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lb/b/b/a; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v5, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_1
    const-string v5, "--dex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0, v1}, La/a/a;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/b/b/b/c;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v5, "--dump"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0, v1}, La/a/a;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/b/b/c/f;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "--annotool"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0, v1}, La/a/a;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/b/b/a/c;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v5, "--find-usages"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0, v1}, La/a/a;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    aget-object v1, p0, v0

    aget-object v4, p0, v3

    aget-object p0, p0, v2

    new-instance v5, Lb/a/i;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lb/a/i;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v6, Lb/b/b/d/a;

    invoke-direct {v6, v5, v4, p0, v1}, Lb/b/b/d/a;-><init>(Lb/a/i;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v6}, Lb/b/b/d/a;->a()V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_1

    :cond_4
    const-string v5, "--version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "dx version 1.16"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_1
    const/4 p0, 0x0

    :goto_2
    const/4 v0, 0x1

    goto :goto_7

    :cond_5
    const-string v5, "--help"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Lb/b/b/a; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_6

    const/4 p0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    const/4 v1, 0x1

    goto :goto_3

    :catch_1
    move-exception p0

    const/4 v1, 0x1

    goto :goto_4

    :catch_2
    const/4 v0, 0x1

    goto :goto_6

    :catch_3
    move-exception p0

    const/4 v1, 0x0

    :goto_3
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "\nUNEXPECTED TOP-LEVEL ERROR:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    instance-of v2, p0, Ljava/lang/NoClassDefFoundError;

    if-nez v2, :cond_7

    instance-of p0, p0, Ljava/lang/NoSuchMethodError;

    if-eqz p0, :cond_8

    :cond_7
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Note: You may be using an incompatible virtual machine or class library.\n(This program is known to be incompatible with recent releases of GCJ.)"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto :goto_5

    :catch_4
    move-exception p0

    const/4 v1, 0x0

    :goto_4
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "\nUNEXPECTED TOP-LEVEL EXCEPTION:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :goto_5
    move v0, v1

    :cond_9
    const/4 p0, 0x0

    goto :goto_7

    :catch_5
    :cond_a
    :goto_6
    const/4 p0, 0x1

    :goto_7
    if-nez v0, :cond_b

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "error: no command specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    :cond_b
    if-eqz p0, :cond_c

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "usage:\n  dx --dex [--debug] [--verbose] [--positions=<style>] [--no-locals]\n  [--no-optimize] [--statistics] [--[no-]optimize-list=<file>] [--no-strict]\n  [--keep-classes] [--output=<file>] [--dump-to=<file>] [--dump-width=<n>]\n  [--dump-method=<name>[*]] [--verbose-dump] [--no-files] [--core-library]\n  [--num-threads=<n>] [--incremental] [--force-jumbo] [--no-warning]\n  [--multi-dex [--main-dex-list=<file> [--minimal-main-dex]]\n  [--input-list=<file>] [--min-sdk-version=<n>]\n  [--allow-all-interface-method-invokes]\n  [<file>.class | <file>.{zip,jar,apk} | <directory>] ...\n    Convert a set of classfiles into a dex file, optionally embedded in a\n    jar/zip. Output name must end with one of: .dex .jar .zip .apk or be a\n    directory.\n    Positions options: none, important, lines.\n    --multi-dex: allows to generate several dex files if needed. This option is\n    exclusive with --incremental, causes --num-threads to be ignored and only\n    supports folder or archive output.\n    --main-dex-list=<file>: <file> is a list of class file names, classes\n    defined by those class files are put in classes.dex.\n    --minimal-main-dex: only classes selected by --main-dex-list are to be put\n    in the main dex.\n    --input-list: <file> is a list of inputs.\n    Each line in <file> must end with one of: .class .jar .zip .apk or be a\n    directory.\n    --min-sdk-version=<n>: Enable dex file features that require at least sdk\n    version <n>.\n  dx --annotool --annotation=<class> [--element=<element types>]\n  [--print=<print types>]\n  dx --dump [--debug] [--strict] [--bytes] [--optimize]\n  [--basic-blocks | --rop-blocks | --ssa-blocks | --dot] [--ssa-step=<step>]\n  [--width=<n>] [<file>.class | <file>.txt] ...\n    Dump classfiles, or transformations thereof, in a human-oriented format.\n  dx --find-usages <file.dex> <declaring type> <member>\n    Find references and declarations to a field or method.\n    <declaring type> is a class name in internal form, like Ljava/lang/Object;\n    <member> is a field or method name, like hashCode.\n  dx -J<option> ... <arguments, in one of the above forms>\n    Pass VM-specific options to the virtual machine that runs dx.\n  dx --version\n    Print the version of this tool (1.16).\n  dx --help\n    Print this message."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_c
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p0

    array-length v3, p1

    if-ge v0, v3, :cond_4

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public static a(ZLcom/gmail/heagoo/neweditor/ab;I[C)Z
    .registers 9

    array-length v0, p3

    add-int/2addr v0, p2

    iget v1, p1, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget v2, p1, Lcom/gmail/heagoo/neweditor/ab;->b:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    const/4 v1, 0x0

    :goto_0
    if-ge p2, v0, :cond_3

    aget-char v3, p1, p2

    aget-char v4, p3, v1

    if-eqz p0, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    :cond_1
    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static a([II)Z
    .registers 4

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    aget p0, p0, v0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/io/File;)[B
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-nez v5, :cond_2

    new-array v0, v2, [B

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    :goto_0
    if-lez v2, :cond_1

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    add-int/2addr v3, v4

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": unexpected EOF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": trouble reading"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": file too long"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": file not readable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": not a file"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": file not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static b(I)I
    .registers 2

    shr-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static b(II)I
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    xor-int/2addr p1, v0

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static b(J)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x11

    new-array v0, v0, [C

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const/4 v1, 0x0

    if-gez v3, :cond_0

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    neg-long p0, p0

    goto :goto_0

    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    rsub-int/lit8 v3, v1, 0x10

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    aput-char v2, v0, v3

    const/4 v2, 0x4

    shr-long/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_2

    array-length p0, p0

    aget-object p0, p1, p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/io/File;)Ljava/util/Map;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "build.gradle"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_3

    const-string v4, "\'"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\'"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    sub-int/2addr v4, v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string v4, "\""

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\""

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, p0

    move-object p0, v1

    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    invoke-static {v2}, La/a/a;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    :goto_4
    invoke-static {v2}, La/a/a;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b(Lb/a/a/b;I)V
    .registers 9

    shr-int/lit8 v0, p1, 0x7

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v3, 0x1

    move v4, p1

    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    if-ne v0, v1, :cond_2

    and-int/lit8 p1, v0, 0x1

    shr-int/lit8 v5, v4, 0x6

    and-int/2addr v5, v3

    if-eq p1, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 p1, 0x1

    :goto_3
    and-int/lit8 v4, v4, 0x7f

    if-eqz p1, :cond_3

    const/16 v5, 0x80

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-interface {p0, v4}, Lb/a/a/b;->d(I)V

    shr-int/lit8 v4, v0, 0x7

    move v6, v4

    move v4, v0

    move v0, v6

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static b(Lb/a/a/b;IJ)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr p1, v1

    invoke-interface {p0, p1}, Lb/a/a/b;->d(I)V

    :goto_0
    if-lez v0, :cond_1

    long-to-int p1, p2

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lb/a/a/b;->d(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Ljava/io/BufferedWriter;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "&lt;<span class=\"start-tag\">"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</span>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static b([II)V
    .registers 4

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    aget v1, p0, v0

    or-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method public static b(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static b(Lb/b/f/d/d;Lb/b/f/d/d;)Z
    .registers 7

    :cond_0
    :goto_0
    invoke-interface {p0}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p0

    invoke-interface {p1}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/f/d/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lb/b/f/d/c;->c()I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/d/c;->c()I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    if-ne v0, v3, :cond_2

    sget-object p0, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    const/16 v0, 0x9

    :cond_2
    if-ne v2, v3, :cond_3

    sget-object p1, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    const/16 v2, 0x9

    :cond_3
    const/4 v3, 0x0

    if-ne v0, v4, :cond_c

    if-eq v2, v4, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    if-ne p0, v0, :cond_5

    return v3

    :cond_5
    sget-object v0, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    if-ne p0, v0, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Lb/b/f/d/c;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lb/b/f/d/c;->o()Z

    move-result v0

    if-nez v0, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lb/b/f/d/c;->s()Lb/b/f/d/c;

    move-result-object p0

    invoke-virtual {p1}, Lb/b/f/d/c;->s()Lb/b/f/d/c;

    move-result-object p1

    invoke-virtual {p0}, Lb/b/f/d/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/b/f/d/c;->o()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lb/b/f/d/c;->o()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lb/b/f/d/c;->r:Lb/b/f/d/c;

    if-eq p0, p1, :cond_b

    sget-object p1, Lb/b/f/d/c;->m:Lb/b/f/d/c;

    if-ne p0, p1, :cond_a

    goto :goto_1

    :cond_a
    return v3

    :cond_b
    :goto_1
    return v1

    :cond_c
    :goto_2
    invoke-virtual {p0}, Lb/b/f/d/c;->l()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {p1}, Lb/b/f/d/c;->l()Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v3
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static c(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/io/File;)Ljava/util/List;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "include"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_3

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v3}, La/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, La/a/a;->a(Ljava/io/Closeable;)V

    :goto_2
    return-object v0

    :goto_3
    invoke-static {v3}, La/a/a;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static c(Lb/a/a/b;IJ)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v1, v0, 0x3

    rsub-int/lit8 v1, v1, 0x40

    shr-long/2addr p2, v1

    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr p1, v1

    invoke-interface {p0, p1}, Lb/a/a/b;->d(I)V

    :goto_0
    if-lez v0, :cond_1

    long-to-int p1, p2

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lb/a/a/b;->d(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c([II)V
    .registers 4

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    aget v1, p0, v0

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method public static c(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    and-int/lit16 v1, p0, 0xff

    if-eqz v1, :cond_4

    const/16 v3, 0xff

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0xff00

    and-int/2addr p0, v1

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public static d([II)I
    .registers 5

    array-length v0, p0

    and-int/lit8 v1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    :goto_0
    if-ge p1, v0, :cond_1

    aget v2, p0, p1

    if-eqz v2, :cond_0

    invoke-static {v2, v1}, La/a/a;->b(II)I

    move-result v1

    if-ltz v1, :cond_0

    shl-int/lit8 p0, p1, 0x5

    add-int/2addr p0, v1

    return p0

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static d(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x7631

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, La/a/a;->a(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static e(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x761f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, La/a/a;->a(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    const/16 v2, 0x1000

    new-array v3, v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v4, v0

    :goto_0
    :try_start_2
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, p1

    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, La/a/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v4, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    invoke-virtual {v6, v3, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_2
    invoke-static {v4}, La/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v6}, La/a/a;->a(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v4

    move-object v4, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_3
    move-object v4, v6

    goto :goto_4

    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v0}, La/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v4}, La/a/a;->a(Ljava/io/OutputStream;)V

    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    return-void

    :catchall_2
    move-exception p0

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v4, v0

    goto :goto_4

    :catchall_4
    move-exception p0

    move-object v1, v0

    move-object v4, v1

    :goto_4
    invoke-static {v0}, La/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v4}, La/a/a;->a(Ljava/io/OutputStream;)V

    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :cond_4
    throw p0
.end method

.method public static e(Ljava/lang/String;)[B
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v5, :cond_0

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_0

    const-wide/16 v5, 0x1

    :goto_1
    add-long/2addr v3, v5

    goto :goto_2

    :cond_0
    const/16 v6, 0x7ff

    if-gt v5, v6, :cond_1

    const-wide/16 v5, 0x2

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x3

    goto :goto_1

    :goto_2
    const-wide/32 v5, 0xffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string v0, "String more than 65535 UTF bytes long"

    invoke-direct {p0, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    long-to-int v0, v3

    new-array v0, v0, [B

    invoke-static {v0, v1, p0}, La/a/a;->a([BILjava/lang/String;)V

    return-object v0
.end method

.method public static f(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x50df

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, La/a/a;->a(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    const/16 v2, 0x1000

    new-array v3, v2, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v0

    :goto_0
    :try_start_2
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, p1

    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, La/a/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v4, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    invoke-virtual {v6, v3, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_2
    invoke-static {v4}, La/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v6}, La/a/a;->a(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v4

    move-object v4, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v4

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_3
    move-object v4, v6

    goto :goto_6

    :catch_1
    move-exception p0

    :goto_4
    move-object v4, v6

    goto :goto_5

    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {v0}, La/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v4}, La/a/a;->a(Ljava/io/OutputStream;)V

    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-void

    :catch_3
    move-exception p0

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v4, v0

    goto :goto_6

    :catch_4
    move-exception p0

    move-object v4, v0

    goto :goto_5

    :catchall_3
    move-exception p0

    move-object v1, v0

    move-object v4, v1

    goto :goto_6

    :catch_5
    move-exception p0

    move-object v1, v0

    move-object v4, v1

    :goto_5
    :try_start_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-static {v0}, La/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v4}, La/a/a;->a(Ljava/io/OutputStream;)V

    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    nop

    :catch_6
    :cond_4
    return-void

    :catchall_4
    move-exception p0

    :goto_6
    invoke-static {v0}, La/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v4}, La/a/a;->a(Ljava/io/OutputStream;)V

    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_5
    throw p0
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static g(I)Ljava/lang/String;
    .registers 3

    const v0, 0x31dff

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, La/a/a;->a(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_1

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_0
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)[B
    .registers 16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_f

    const/16 v5, 0xa

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_0

    move v5, v0

    :cond_0
    const/16 v6, 0x23

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ltz v6, :cond_1

    if-ge v6, v5, :cond_1

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v7, 0x10

    const/16 v8, 0x22

    const/4 v9, -0x1

    if-eq v6, v9, :cond_4

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v9, :cond_2

    if-lt v10, v6, :cond_4

    :cond_2
    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus offset marker: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    move v12, v4

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_3
    if-ge v4, v6, :cond_c

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eqz v10, :cond_6

    if-ne v13, v8, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    int-to-byte v13, v13

    aput-byte v13, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    const/16 v14, 0x20

    if-le v13, v14, :cond_b

    if-ne v13, v8, :cond_8

    if-ne v11, v9, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spare digit around offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {v13, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v14

    if-eq v14, v9, :cond_a

    if-ne v11, v9, :cond_9

    move v11, v14

    goto :goto_4

    :cond_9
    shl-int/lit8 v11, v11, 0x4

    or-int/2addr v11, v14

    int-to-byte v11, v11

    aput-byte v11, v1, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v11, -0x1

    goto :goto_4

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus digit character: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    if-ne v11, v9, :cond_e

    if-nez v10, :cond_d

    move v3, v5

    move v4, v12

    goto/16 :goto_0

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unterminated quote around offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spare digit around offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    array-length p0, v1

    if-ge v4, p0, :cond_10

    new-array p0, v4, [B

    invoke-static {v1, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_10
    move-object p0, v1

    :goto_5
    return-object p0
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    array-length p0, p1

    const/4 v1, 0x1

    if-le p0, v1, :cond_2

    const/4 p0, 0x0

    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v1

    if-ge p0, v2, :cond_1

    new-instance v2, Ljava/io/File;

    aget-object v3, p1, p0

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance p0, Ljava/io/File;

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object p1, p1, v2

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private h(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, La/a/b;->a:[I

    iget v3, p0, La/a/a;->b:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    move-object v2, v3

    goto :goto_0

    :pswitch_0
    const-string v2, "com.gmail.heagoo.apkeditor.inmobi.ADHelper"

    goto :goto_0

    :pswitch_1
    const-string v2, "com.gmail.heagoo.apkeditor.free.FacebookHelper"

    goto :goto_0

    :pswitch_2
    const-string v2, "com.gmail.heagoo.apkeditor.appstart.ADHelper"

    goto :goto_0

    :pswitch_3
    const-string v2, "com.gmail.heagoo.apkeditor.amazon.ADHelper"

    goto :goto_0

    :pswitch_4
    const-string v2, "com.gmail.heagoo.apkeditor.admob.BigAdHelper"

    goto :goto_0

    :pswitch_5
    const-string v2, "com.gmail.heagoo.apkeditor.admob.ADHelper"

    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, La/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "invoke-custom"

    return-object p0

    :pswitch_2
    const-string p0, "invoke-polymorphic"

    return-object p0

    :pswitch_3
    const-string p0, "fill-array-data"

    return-object p0

    :pswitch_4
    const-string p0, "move-result-pseudo"

    return-object p0

    :pswitch_5
    const-string p0, "move-result"

    return-object p0

    :pswitch_6
    const-string p0, "invoke-interface"

    return-object p0

    :pswitch_7
    const-string p0, "invoke-direct"

    return-object p0

    :pswitch_8
    const-string p0, "invoke-super"

    return-object p0

    :pswitch_9
    const-string p0, "invoke-virtual"

    return-object p0

    :pswitch_a
    const-string p0, "invoke-static"

    return-object p0

    :pswitch_b
    const-string p0, "put-static"

    return-object p0

    :pswitch_c
    const-string p0, "put-field"

    return-object p0

    :pswitch_d
    const-string p0, "get-static"

    return-object p0

    :pswitch_e
    const-string p0, "get-field"

    return-object p0

    :pswitch_f
    const-string p0, "instance-of"

    return-object p0

    :pswitch_10
    const-string p0, "check-cast"

    return-object p0

    :pswitch_11
    const-string p0, "filled-new-array"

    return-object p0

    :pswitch_12
    const-string p0, "new-array"

    return-object p0

    :pswitch_13
    const-string p0, "new-instance"

    return-object p0

    :pswitch_14
    const-string p0, "aput"

    return-object p0

    :pswitch_15
    const-string p0, "aget"

    return-object p0

    :pswitch_16
    const-string p0, "monitor-exit"

    return-object p0

    :pswitch_17
    const-string p0, "monitor-enter"

    return-object p0

    :pswitch_18
    const-string p0, "throw"

    return-object p0

    :pswitch_19
    const-string p0, "array-length"

    return-object p0

    :pswitch_1a
    const-string p0, "return"

    return-object p0

    :pswitch_1b
    const-string p0, "to-short"

    return-object p0

    :pswitch_1c
    const-string p0, "to-char"

    return-object p0

    :pswitch_1d
    const-string p0, "to-byte"

    return-object p0

    :pswitch_1e
    const-string p0, "conv"

    return-object p0

    :pswitch_1f
    const-string p0, "cmpg"

    return-object p0

    :pswitch_20
    const-string p0, "cmpl"

    return-object p0

    :pswitch_21
    const-string p0, "not"

    return-object p0

    :pswitch_22
    const-string p0, "ushr"

    return-object p0

    :pswitch_23
    const-string p0, "shr"

    return-object p0

    :pswitch_24
    const-string p0, "shl"

    return-object p0

    :pswitch_25
    const-string p0, "xor"

    return-object p0

    :pswitch_26
    const-string p0, "or"

    return-object p0

    :pswitch_27
    const-string p0, "and"

    return-object p0

    :pswitch_28
    const-string p0, "neg"

    return-object p0

    :pswitch_29
    const-string p0, "rem"

    return-object p0

    :pswitch_2a
    const-string p0, "div"

    return-object p0

    :pswitch_2b
    const-string p0, "mul"

    return-object p0

    :pswitch_2c
    const-string p0, "sub"

    return-object p0

    :pswitch_2d
    const-string p0, "add"

    return-object p0

    :pswitch_2e
    const-string p0, "switch"

    return-object p0

    :pswitch_2f
    const-string p0, "if-gt"

    return-object p0

    :pswitch_30
    const-string p0, "if-le"

    return-object p0

    :pswitch_31
    const-string p0, "if-ge"

    return-object p0

    :pswitch_32
    const-string p0, "if-lt"

    return-object p0

    :pswitch_33
    const-string p0, "if-ne"

    return-object p0

    :pswitch_34
    const-string p0, "if-eq"

    return-object p0

    :pswitch_35
    const-string p0, "goto"

    return-object p0

    :pswitch_36
    const-string p0, "const"

    return-object p0

    :pswitch_37
    const-string p0, "move-exception"

    return-object p0

    :pswitch_38
    const-string p0, "move-param"

    return-object p0

    :pswitch_39
    const-string p0, "move"

    return-object p0

    :pswitch_3a
    const-string p0, "nop"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static n(I)[I
    .registers 1

    add-int/lit8 p0, p0, 0x1f

    shr-int/lit8 p0, p0, 0x5

    new-array p0, p0, [I

    return-object p0
.end method

.method public static o(I)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x8

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x7

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static p(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x4

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x3

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/2addr p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static q(I)Ljava/lang/String;
    .registers 2

    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static s(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    and-int/lit8 p0, p0, 0xf

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    const/4 v1, 0x0

    aput-char p0, v0, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static t(I)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x9

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-gez p0, :cond_0

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    neg-int p0, p0

    goto :goto_0

    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    sub-int/2addr v2, v1

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static u(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x5

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-gez p0, :cond_0

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    neg-int p0, p0

    goto :goto_0

    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    rsub-int/lit8 v3, v1, 0x4

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static v(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-gez p0, :cond_0

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    neg-int p0, p0

    goto :goto_0

    :cond_0
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    sub-int/2addr v2, v1

    and-int/lit8 v3, p0, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static w(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x6

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x5

    and-int/lit8 v4, p0, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v1, v3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-boolean v0, p0, La/a/a;->a:Z

    if-nez v0, :cond_0

    const-string v0, "pause"

    invoke-direct {p0, v0}, La/a/a;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .registers 2

    iget-boolean v0, p0, La/a/a;->a:Z

    if-nez v0, :cond_0

    const-string v0, "resume"

    invoke-direct {p0, v0}, La/a/a;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .registers 2

    iget-boolean v0, p0, La/a/a;->a:Z

    if-nez v0, :cond_0

    const-string v0, "destroy"

    invoke-direct {p0, v0}, La/a/a;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
