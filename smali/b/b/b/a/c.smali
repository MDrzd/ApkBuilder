.class public Lb/b/b/a/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/Writer;

.field private final b:I

.field private final c:Ljava/lang/StringBuffer;

.field private final d:Ljava/lang/StringBuffer;

.field private final e:Lb/b/h/i;

.field private final f:Lb/b/h/i;


# direct methods
.method public constructor <init>(Ljava/io/Writer;IILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-lez p2, :cond_2

    if-lez p3, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2, v1}, Ljava/io/StringWriter;-><init>(I)V

    iput-object p1, p0, Lb/b/b/a/c;->a:Ljava/io/Writer;

    iput p2, p0, Lb/b/b/a/c;->b:I

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/a/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/a/c;->d:Ljava/lang/StringBuffer;

    new-instance p1, Lb/b/h/i;

    invoke-direct {p1, v0, p2}, Lb/b/h/i;-><init>(Ljava/io/Writer;I)V

    iput-object p1, p0, Lb/b/b/a/c;->e:Lb/b/h/i;

    new-instance p1, Lb/b/h/i;

    invoke-direct {p1, v2, p3, p4}, Lb/b/h/i;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    iput-object p1, p0, Lb/b/b/a/c;->f:Lb/b/h/i;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spacer == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rightWidth < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "leftWidth < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/io/StringWriter;

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v0}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v0, Lb/b/b/a/c;

    invoke-direct {v0, v2, p1, p4, p2}, Lb/b/b/a/c;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lb/b/b/a/c;->a()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/b/b/a/c;->b()Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lb/b/b/a/c;->c()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Ljava/io/Writer;I)V
    .registers 3

    :goto_0
    if-lez p1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_0
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .registers 10

    new-instance v0, Lb/b/b/a/d;

    invoke-direct {v0}, Lb/b/b/a/d;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    aget-object v3, p0, v2

    const-string v4, "--annotation="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lb/b/b/a/d;->a:Ljava/lang/String;

    if-nez v4, :cond_0

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lb/b/b/a/d;->a:Ljava/lang/String;

    goto :goto_3

    :cond_0
    new-instance p0, Lb/b/b/a/e;

    const-string v0, "--annotation can only be specified once."

    invoke-direct {p0, v0}, Lb/b/b/a/e;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v4, "--element="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lb/b/b/a/e; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    iget-object v7, v0, Lb/b/b/a/d;->b:Ljava/util/EnumSet;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/annotation/ElementType;->valueOf(Ljava/lang/String;)Ljava/lang/annotation/ElementType;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lb/b/b/a/e; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance p0, Lb/b/b/a/e;

    const-string v0, "invalid --element"

    invoke-direct {p0, v0}, Lb/b/b/a/e;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v4, "--print="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lb/b/b/a/e; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    iget-object v7, v0, Lb/b/b/a/d;->c:Ljava/util/EnumSet;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lb/b/b/a/f;->a(Ljava/lang/String;)Lb/b/b/a/f;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lb/b/b/a/e; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_1
    :try_start_4
    new-instance p0, Lb/b/b/a/e;

    const-string v0, "invalid --print"

    invoke-direct {p0, v0}, Lb/b/b/a/e;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    array-length v3, p0

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lb/b/b/a/d;->d:[Ljava/lang/String;

    iget-object v3, v0, Lb/b/b/a/d;->d:[Ljava/lang/String;

    iget-object v4, v0, Lb/b/b/a/d;->d:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {p0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object p0, v0, Lb/b/b/a/d;->a:Ljava/lang/String;

    if-eqz p0, :cond_9

    iget-object p0, v0, Lb/b/b/a/d;->c:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Lb/b/b/a/d;->c:Ljava/util/EnumSet;

    sget-object v1, Lb/b/b/a/f;->a:Lb/b/b/a/f;

    invoke-virtual {p0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object p0, v0, Lb/b/b/a/d;->b:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v0, Lb/b/b/a/d;->b:Ljava/util/EnumSet;

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {p0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object p0, v0, Lb/b/b/a/d;->b:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object p0

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {p0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-virtual {p0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p0
    :try_end_4
    .catch Lb/b/b/a/e; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz p0, :cond_8

    new-instance p0, Lb/b/b/a/a;

    invoke-direct {p0, v0}, Lb/b/b/a/a;-><init>(Lb/b/b/a/d;)V

    invoke-virtual {p0}, Lb/b/b/a/a;->a()V

    return-void

    :cond_8
    :try_start_5
    new-instance p0, Lb/b/b/a/e;

    const-string v0, "only --element parameters \'type\' and \'package\' supported"

    invoke-direct {p0, v0}, Lb/b/b/a/e;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lb/b/b/a/e;

    const-string v0, "--annotation must be specified"

    invoke-direct {p0, v0}, Lb/b/b/a/e;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Lb/b/b/a/e; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lb/b/b/a/e;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "usage"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private d()V
    .registers 6

    :goto_0
    iget-object v0, p0, Lb/b/b/a/c;->c:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lb/b/b/a/c;->d:Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lb/b/b/a/c;->a:Ljava/io/Writer;

    iget-object v4, p0, Lb/b/b/a/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lb/b/b/a/c;->a:Ljava/io/Writer;

    iget v4, p0, Lb/b/b/a/c;->b:I

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Lb/b/b/a/c;->a(Ljava/io/Writer;I)V

    iget-object v3, p0, Lb/b/b/a/c;->a:Ljava/io/Writer;

    iget-object v4, p0, Lb/b/b/a/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lb/b/b/a/c;->a:Ljava/io/Writer;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    iget-object v3, p0, Lb/b/b/a/c;->c:Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lb/b/b/a/c;->d:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Lb/b/b/a/c;->e:Lb/b/h/i;

    return-object v0
.end method

.method public b()Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Lb/b/b/a/c;->f:Lb/b/h/i;

    return-object v0
.end method

.method public c()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lb/b/b/a/c;->c:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lb/b/b/a/c;->e:Lb/b/h/i;

    invoke-static {v0, v1}, Lb/b/b/a/c;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    iget-object v0, p0, Lb/b/b/a/c;->d:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lb/b/b/a/c;->f:Lb/b/h/i;

    invoke-static {v0, v1}, Lb/b/b/a/c;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    invoke-direct {p0}, Lb/b/b/a/c;->d()V

    iget-object v0, p0, Lb/b/b/a/c;->c:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lb/b/b/a/c;->e:Lb/b/h/i;

    invoke-static {v0, v1}, Lb/b/b/a/c;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_0
    iget-object v0, p0, Lb/b/b/a/c;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/b/a/c;->f:Lb/b/h/i;

    invoke-virtual {v0, v1}, Lb/b/h/i;->write(I)V

    invoke-direct {p0}, Lb/b/b/a/c;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/b/a/c;->d:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lb/b/b/a/c;->f:Lb/b/h/i;

    invoke-static {v0, v2}, Lb/b/b/a/c;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_1
    iget-object v0, p0, Lb/b/b/a/c;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/b/a/c;->e:Lb/b/h/i;

    invoke-virtual {v0, v1}, Lb/b/h/i;->write(I)V

    invoke-direct {p0}, Lb/b/b/a/c;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
