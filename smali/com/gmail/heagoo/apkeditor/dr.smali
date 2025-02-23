.class public abstract Lcom/gmail/heagoo/apkeditor/dr;
.super Lcom/gmail/heagoo/common/f;

# interfaces
.implements Lcom/a/a/e;
.implements Lcom/gmail/heagoo/apkeditor/bk;
.implements Lcom/gmail/heagoo/apkeditor/do;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/List;

.field protected c:Ljava/util/List;

.field protected d:Ljava/util/List;

.field protected e:I

.field protected f:Z

.field protected g:Z

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:Lcom/gmail/heagoo/neweditor/d;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/util/List;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/ArrayList;

.field private s:Z

.field private t:Lcom/gmail/heagoo/apkeditor/dm;

.field private u:[Ljava/lang/String;

.field private v:I

.field private w:Landroid/view/View;

.field private x:Landroid/widget/LinearLayout;

.field private y:Lcom/gmail/heagoo/apkeditor/c/a;


# direct methods
.method public constructor <init>(ZZ)V
    .registers 7

    invoke-direct {p0}, Lcom/gmail/heagoo/common/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->e:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->f:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->g:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->r:Ljava/util/ArrayList;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/dm;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/dm;-><init>(Lcom/gmail/heagoo/apkeditor/do;)V

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->t:Lcom/gmail/heagoo/apkeditor/dm;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ",.?!:;~-_=\"\'/@*+()<>{}[]%&$|\\#^"

    aput-object v3, v2, v0

    const-string v0, "<>\":=/@+.-?#_()[]{}\\;!$%^&*|~\',"

    aput-object v0, v2, v1

    const-string v0, "(){};.=\"\'|&![]@<>+-*/?:,_\\^%#~$"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->u:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->v:I

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->k:Z

    iput-boolean p2, p0, Lcom/gmail/heagoo/apkeditor/dr;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/dr;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/dr;->x:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/dr;Ljava/util/List;Ljava/util/Map;I)V
    .registers 10

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/gmail/heagoo/builder/d;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/dy;

    invoke-direct {v1, p0, p2, p3}, Lcom/gmail/heagoo/apkeditor/dy;-><init>(Lcom/gmail/heagoo/apkeditor/dr;Ljava/util/Map;I)V

    invoke-direct {v0, p0, p1, v1}, Lcom/gmail/heagoo/builder/d;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/gmail/heagoo/common/m;)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/builder/d;->show()V

    return-void

    :cond_3
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/gmail/heagoo/apkeditor/dr;->a(Ljava/util/Map;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/dr;Ljava/util/Map;Ljava/util/List;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gmail/heagoo/apkeditor/dr;->a(Ljava/util/Map;Ljava/util/List;I)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/List;I)V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "import "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0, p1, p3}, Lcom/gmail/heagoo/apkeditor/dr;->a(Ljava/lang/String;I)V

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/dr;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->s:Z

    return p1
.end method

.method protected static a([Ljava/lang/String;IILjava/lang/String;)Z
    .registers 5

    :goto_0
    if-gt p1, p2, :cond_1

    add-int/lit8 v0, p1, -0x1

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/dr;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/dr;->w:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/dr;Z)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->w:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/dr;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/dr;->w:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/dr;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gmail/heagoo/apkeditor/dr;->s:Z

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_0

    const-string v0, ".smali"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d()V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->m:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "Internal error: cannot find apk path to decode java code, please contact the author."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "tmp"

    invoke-static {p0, v2}, Lcom/gmail/heagoo/common/ae;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/dr;->e()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    aget-object v4, v3, v1

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    aget-object v0, v3, v0

    aget-object v1, v3, v1

    new-instance v3, Lcom/gmail/heagoo/apkeditor/ce;

    new-instance v4, Lcom/gmail/heagoo/apkeditor/dx;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/gmail/heagoo/apkeditor/dx;-><init>(Lcom/gmail/heagoo/apkeditor/dr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {v3, p0, v4, v0}, Lcom/gmail/heagoo/apkeditor/ce;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    invoke-virtual {v3}, Lcom/gmail/heagoo/apkeditor/ce;->show()V

    return-void

    :cond_2
    :goto_0
    const-string v0, "Internal error: Cannot get class name, please contact the author."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :catch_0
    const-string v1, "Cannot make working directory."

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic d(Lcom/gmail/heagoo/apkeditor/dr;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->y:Lcom/gmail/heagoo/apkeditor/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gmail/heagoo/apkeditor/c/a;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/c/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->y:Lcom/gmail/heagoo/apkeditor/c/a;

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->y:Lcom/gmail/heagoo/apkeditor/c/a;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/dr;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/gmail/heagoo/apkeditor/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_0

    const-string v0, ".java"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic e(Lcom/gmail/heagoo/apkeditor/dr;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private e()[Ljava/lang/String;
    .registers 10

    const-string v0, "classes.dex"

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    const/4 v5, 0x6

    if-ge v3, v4, :cond_1

    const-string v4, "smali"

    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v1, v3

    const-string v6, "smali_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".dex"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x4c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    add-int/2addr v3, v6

    :goto_2
    array-length v7, v1

    if-ge v3, v7, :cond_4

    aget-object v7, v1, v3

    array-length v8, v1

    sub-int/2addr v8, v6

    if-ne v3, v8, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v5, :cond_3

    const-string v8, ".smali"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    return-object v1
.end method

.method static synthetic f(Lcom/gmail/heagoo/apkeditor/dr;)V
    .registers 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "java_edit_tip_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d022a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d019f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/gmail/heagoo/apkeditor/dw;

    invoke-direct {v3, p0}, Lcom/gmail/heagoo/apkeditor/dw;-><init>(Lcom/gmail/heagoo/apkeditor/dr;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "java_edit_tip_shown"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/dr;->d()V

    return-void
.end method

.method static synthetic g(Lcom/gmail/heagoo/apkeditor/dr;)V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/dr;->d()V

    return-void
.end method

.method static synthetic h(Lcom/gmail/heagoo/apkeditor/dr;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/dr;->m:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .registers 6

    const-string v0, "#%08x"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gmail/heagoo/common/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f0d00f8

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/dr;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a(II)V
    .registers 3

    const-string p1, "Not implemented."

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .registers 9

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/cc;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/dr;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/gmail/heagoo/apkeditor/cc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/cc;->a()I

    move-result v3

    mul-int/lit8 v4, v3, 0x32

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    add-int/2addr v4, v3

    int-to-float v3, v4

    invoke-static {p0, v3}, Lcom/gmail/heagoo/common/g;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0}, Lcom/gmail/heagoo/common/g;->a(Landroid/app/Activity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, v0, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    new-instance v0, Lcom/gmail/heagoo/apkeditor/dv;

    invoke-direct {v0, p0, v2, v6}, Lcom/gmail/heagoo/apkeditor/dv;-><init>(Lcom/gmail/heagoo/apkeditor/dr;Lcom/gmail/heagoo/apkeditor/cc;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/dr;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v6, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method protected final a(Lcom/gmail/heagoo/neweditor/r;)V
    .registers 5

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/gmail/heagoo/apkeditor/du;

    invoke-direct {v2, p0, v0, p1}, Lcom/gmail/heagoo/apkeditor/du;-><init>(Lcom/gmail/heagoo/apkeditor/dr;Landroid/view/View;Lcom/gmail/heagoo/neweditor/r;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 10

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->v:I

    goto :goto_0

    :cond_0
    const-string v2, ".xml"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ".java"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->v:I

    if-eq p1, v2, :cond_3

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->v:I

    const p1, 0x7f0801aa

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {p0}, Lcom/gmail/heagoo/common/g;->a(Landroid/app/Activity;)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v2, v2, 0xb

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->u:[Ljava/lang/String;

    iget v5, p0, Lcom/gmail/heagoo/apkeditor/dr;->v:I

    aget-object v2, v2, v5

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const v6, 0x7f07013c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    new-instance v6, Lcom/gmail/heagoo/apkeditor/dt;

    invoke-direct {v6, p0}, Lcom/gmail/heagoo/apkeditor/dt;-><init>(Lcom/gmail/heagoo/apkeditor/dr;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->v:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->u:[Ljava/lang/String;

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->v:I

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected final b()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->n:Z

    if-nez v1, :cond_0

    const-string v1, "xmlPath"

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extraString"

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->p:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->r:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->r:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "modifiedFiles"

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/gmail/heagoo/apkeditor/dr;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected final b(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->t:Lcom/gmail/heagoo/apkeditor/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->t:Lcom/gmail/heagoo/apkeditor/dm;

    invoke-virtual {v1}, Lcom/gmail/heagoo/apkeditor/dm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->t:Lcom/gmail/heagoo/apkeditor/dm;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/dm;->a(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->t:Lcom/gmail/heagoo/apkeditor/dm;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/gmail/heagoo/apkeditor/dm;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method protected abstract c(I)V
.end method

.method protected final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->s:Z

    return v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->o:Ljava/lang/String;

    return-object p1

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/gmail/heagoo/common/f;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/dr;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/dr;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/dr;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result v2

    if-eqz v2, :cond_1

    const v4, 0x7f0e0006

    invoke-virtual {p0, v4}, Lcom/gmail/heagoo/apkeditor/dr;->setTheme(I)V

    :cond_1
    iget-boolean v4, p0, Lcom/gmail/heagoo/apkeditor/dr;->k:Z

    if-eqz v4, :cond_2

    const v2, 0x7f0a0032

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->a(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/gmail/heagoo/apkeditor/dr;->f:Z

    iget-boolean v4, p0, Lcom/gmail/heagoo/apkeditor/dr;->f:Z

    if-eqz v4, :cond_4

    if-eq v2, v3, :cond_3

    const v2, 0x7f0a0034

    goto :goto_0

    :cond_3
    const v2, 0x7f0a0035

    goto :goto_0

    :cond_4
    if-eq v2, v3, :cond_5

    const v2, 0x7f0a0031

    goto :goto_0

    :cond_5
    const v2, 0x7f0a0033

    :goto_0
    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/dr;->setContentView(I)V

    iget-boolean v2, p0, Lcom/gmail/heagoo/apkeditor/dr;->l:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/util/a;->a(Landroid/app/Activity;)V

    :cond_6
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/dr;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "xmlPath"

    invoke-static {v0, v2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "apkPath"

    invoke-static {v0, v3}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gmail/heagoo/apkeditor/dr;->m:Ljava/lang/String;

    const-string v3, "searchString"

    invoke-static {v0, v3}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gmail/heagoo/apkeditor/dr;->a:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    :try_start_0
    iput-boolean v4, p0, Lcom/gmail/heagoo/apkeditor/dr;->n:Z

    const-string v5, "startLine"

    invoke-static {v0, v5}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_7
    const-string v5, "syntaxFileName"

    invoke-static {v0, v5}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "extraString"

    invoke-static {v0, v6}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "displayFileName"

    invoke-static {v0, v7}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->o:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->p:Ljava/util/List;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->p:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_8
    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->n:Z

    const-string v1, "fileList"

    invoke-static {v0, v1}, La/a/a;->c(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->b:Ljava/util/List;

    const-string v1, "curFileIndex"

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :goto_1
    iput v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->e:I

    const-string v1, "startLineList"

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    :cond_a
    move-object v1, v5

    :goto_2
    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->c:Ljava/util/List;

    const-string v1, "syntaxFileList"

    invoke-static {v0, v1}, La/a/a;->c(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->d:Ljava/util/List;

    const-string v1, "extraStringList"

    invoke-static {v0, v1}, La/a/a;->c(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->p:Ljava/util/List;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->c:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->c:Ljava/util/List;

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->d:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->d:Ljava/util/List;

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->d:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->p:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->p:Ljava/util/List;

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dr;->p:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    :goto_6
    if-eqz p1, :cond_f

    const-string v0, "curFileIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->e:I

    const-string v0, "modifySaved"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->g:Z

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/dr;->g:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/dr;->b()V

    :cond_e
    const-string v0, "docChanged"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "unsavedFilePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->h:Ljava/lang/String;

    :cond_f
    const p1, 0x7f0801ab

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->w:Landroid/view/View;

    const p1, 0x7f080138

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dr;->x:Landroid/widget/LinearLayout;

    const p1, 0x7f0801bb

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ds;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/ds;-><init>(Lcom/gmail/heagoo/apkeditor/dr;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    const p1, 0x7f0d0150

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/dr;->finish()V

    return-void
.end method
