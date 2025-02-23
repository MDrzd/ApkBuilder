.class public final Lcom/gmail/heagoo/neweditor/v;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcom/gmail/heagoo/neweditor/v;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:B

.field private e:Ljava/util/regex/Pattern;

.field private f:Lcom/gmail/heagoo/common/p;

.field private g:Z

.field private h:Z

.field private final i:Ljava/util/List;

.field private j:Lcom/gmail/heagoo/neweditor/s;

.field private final k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Hashtable;

.field private n:I

.field private final o:Ljava/util/Map;

.field private final p:Ljava/lang/String;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x13

    new-array v1, v0, [Lcom/gmail/heagoo/neweditor/v;

    sput-object v1, Lcom/gmail/heagoo/neweditor/v;->a:[Lcom/gmail/heagoo/neweditor/v;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/gmail/heagoo/neweditor/v;->a:[Lcom/gmail/heagoo/neweditor/v;

    new-instance v3, Lcom/gmail/heagoo/neweditor/v;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lcom/gmail/heagoo/neweditor/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    sget-object v2, Lcom/gmail/heagoo/neweditor/v;->a:[Lcom/gmail/heagoo/neweditor/v;

    aget-object v2, v2, v1

    iput-byte v1, v2, Lcom/gmail/heagoo/neweditor/v;->d:B

    sget-object v2, Lcom/gmail/heagoo/neweditor/v;->a:[Lcom/gmail/heagoo/neweditor/v;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/gmail/heagoo/neweditor/v;->c:Z

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/neweditor/v;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/gmail/heagoo/neweditor/v;->q:I

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/v;->p:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->o:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->i:Ljava/util/List;

    return-void
.end method

.method public static a(B)Lcom/gmail/heagoo/neweditor/v;
    .registers 2

    sget-object v0, Lcom/gmail/heagoo/neweditor/v;->a:[Lcom/gmail/heagoo/neweditor/v;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/Character;)Ljava/util/List;
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->o:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez p1, :cond_2

    move-object p1, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/v;->o:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    :cond_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz v2, :cond_7

    return-object v0

    :cond_7
    if-eqz v4, :cond_8

    return-object v1

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final a(I)V
    .registers 2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Lcom/gmail/heagoo/neweditor/v;->q:I

    return-void
.end method

.method public final a(Lcom/gmail/heagoo/common/p;)V
    .registers 10

    iget v0, p0, Lcom/gmail/heagoo/neweditor/v;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gmail/heagoo/neweditor/v;->n:I

    iget-object v0, p1, Lcom/gmail/heagoo/common/p;->l:[C

    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Character;

    iget-object v1, p1, Lcom/gmail/heagoo/common/p;->k:[C

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/gmail/heagoo/common/p;->k:[C

    array-length v1, v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/gmail/heagoo/common/p;->k:[C

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    aput-object v1, v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/gmail/heagoo/common/p;->l:[C

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Character;

    iget-object v1, p1, Lcom/gmail/heagoo/common/p;->l:[C

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    add-int/lit8 v6, v5, 0x1

    aget-char v7, v1, v4

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v0, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_1

    :cond_3
    :goto_2
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/gmail/heagoo/neweditor/v;->o:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/v;->o:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/s;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->j:Lcom/gmail/heagoo/neweditor/s;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/v;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->l:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Hashtable;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->m:Ljava/util/Hashtable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/regex/Pattern;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/v;->h:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final b(B)V
    .registers 2

    iput-byte p1, p0, Lcom/gmail/heagoo/neweditor/v;->d:B

    return-void
.end method

.method public final b(Lcom/gmail/heagoo/common/p;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/v;->f:Lcom/gmail/heagoo/common/p;

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/v;->g:Z

    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/v;->n:I

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/v;->q:I

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/v;->h:Z

    return v0
.end method

.method public final f()Lcom/gmail/heagoo/neweditor/s;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->j:Lcom/gmail/heagoo/neweditor/s;

    return-object v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/v;->g:Z

    return v0
.end method

.method public final h()Ljava/util/regex/Pattern;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public final i()Lcom/gmail/heagoo/common/p;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->f:Lcom/gmail/heagoo/common/p;

    return-object v0
.end method

.method public final j()B
    .registers 2

    iget-byte v0, p0, Lcom/gmail/heagoo/neweditor/v;->d:B

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->j:Lcom/gmail/heagoo/neweditor/s;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/v;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/v;->j:Lcom/gmail/heagoo/neweditor/s;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->l:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/v;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/v;->c:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/v;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/v;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
