.class public final Lcom/gmail/heagoo/apkeditor/ac/a;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public a:Ljava/util/List;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Lcom/gmail/heagoo/apkeditor/ac/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->c:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .registers 6

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ac/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gmail/heagoo/apkeditor/ac/b;-><init>(Lcom/gmail/heagoo/apkeditor/ac/a;B)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->e:Lcom/gmail/heagoo/apkeditor/ac/b;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->d:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->d:[Ljava/lang/String;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ac/a;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->d:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ac/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->d:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x20

    if-ge v6, v7, :cond_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->d:[Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ac/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->e:Lcom/gmail/heagoo/apkeditor/ac/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ac/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->e:Lcom/gmail/heagoo/apkeditor/ac/b;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ac/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gmail/heagoo/apkeditor/ba;->a()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0090

    :goto_0
    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ac/a;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a008f

    goto :goto_0

    :goto_1
    new-instance p3, Lcom/gmail/heagoo/apkeditor/ac/c;

    invoke-direct {p3}, Lcom/gmail/heagoo/apkeditor/ac/c;-><init>()V

    const v0, 0x7f0800d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/gmail/heagoo/apkeditor/ac/c;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmail/heagoo/apkeditor/ac/c;

    :goto_2
    iget-object p3, p3, Lcom/gmail/heagoo/apkeditor/ac/c;->a:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
