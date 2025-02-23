.class public final Lcom/gmail/heagoo/builder/p;
.super Ljava/lang/Object;


# static fields
.field private static final h:Ljava/util/Set;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/Set;

.field private f:Ljava/util/List;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "return"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "boolean"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "byte"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "char"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "class"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "double"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "else"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "enum"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "final"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "float"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "goto"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "if"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "import"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "int"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "instanceof"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "long"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "new"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string v2, "short"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string v2, "static"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string v2, "throw"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string v2, "void"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/gmail/heagoo/builder/p;->h:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gmail/heagoo/builder/p;->g:I

    iput-object p1, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/builder/p;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/builder/p;->d:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/builder/p;->e:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/builder/p;->f:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private a(II)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/builder/p;->f:Ljava/util/List;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/b/i;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/gmail/heagoo/apkeditor/b/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)Z
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/builder/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/b/i;

    iget-object v2, v1, Lcom/gmail/heagoo/apkeditor/b/i;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_0

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/b/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/builder/p;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/builder/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/builder/p;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v1

    :cond_2
    sget-object v0, Lcom/gmail/heagoo/builder/p;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()V
    .registers 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    iget-object v5, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_3

    if-eq v3, v0, :cond_3

    const/16 v5, 0x2a

    if-eq v2, v0, :cond_0

    if-le v3, v6, :cond_0

    iget-object v7, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/gmail/heagoo/builder/p;->a(II)V

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_2

    move v2, v3

    :cond_1
    move v1, v8

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    iget-object v4, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    const/16 v5, 0xa

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-direct {p0, v3, v1}, Lcom/gmail/heagoo/builder/p;->a(II)V

    add-int/2addr v1, v6

    goto :goto_1

    :cond_3
    const-string v0, "package\\s+(.+);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/builder/p;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gmail/heagoo/builder/p;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/builder/p;->g:I

    :cond_5
    const-string v0, "([a-zA-Z_$][a-zA-Z\\d_$]*\\.)*[a-zA-Z_$][a-zA-Z\\d_$]*"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "import\\s+("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/builder/p;->a(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gmail/heagoo/builder/p;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Lcom/gmail/heagoo/builder/p;->g:I

    goto :goto_2

    :cond_7
    const-string v1, "[a-zA-Z_$][a-zA-Z\\d_$]*"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\s*[,;=\\)]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/builder/p;->a(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gmail/heagoo/builder/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gmail/heagoo/builder/p;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/builder/p;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/gmail/heagoo/builder/p;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new\\s+("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\\(\\["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/builder/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/builder/p;->a(I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gmail/heagoo/builder/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gmail/heagoo/builder/p;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0, v1}, Lcom/gmail/heagoo/builder/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/gmail/heagoo/builder/p;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    return-void
.end method

.method public final b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/builder/p;->d:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/builder/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/builder/p;->g:I

    return v0
.end method
