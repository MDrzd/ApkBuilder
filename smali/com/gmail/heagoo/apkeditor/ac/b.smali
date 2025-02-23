.class final Lcom/gmail/heagoo/apkeditor/ac/b;
.super Landroid/widget/Filter;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ac/a;


# direct methods
.method private constructor <init>(Lcom/gmail/heagoo/apkeditor/ac/a;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ac/b;->a:Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gmail/heagoo/apkeditor/ac/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/ac/b;-><init>(Lcom/gmail/heagoo/apkeditor/ac/a;)V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ac/b;->a:Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ac/a;->a(Lcom/gmail/heagoo/apkeditor/ac/a;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ac/b;->a:Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ac/a;->a(Lcom/gmail/heagoo/apkeditor/ac/a;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v1, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ac/b;->a:Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/ac/a;->a(Lcom/gmail/heagoo/apkeditor/ac/a;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ac/b;->a:Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-static {v4}, Lcom/gmail/heagoo/apkeditor/ac/a;->a(Lcom/gmail/heagoo/apkeditor/ac/a;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    return-object v1
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ac/b;->a:Lcom/gmail/heagoo/apkeditor/ac/a;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/gmail/heagoo/apkeditor/ac/a;->a:Ljava/util/List;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ac/b;->a:Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ac/a;->notifyDataSetChanged()V

    return-void
.end method
