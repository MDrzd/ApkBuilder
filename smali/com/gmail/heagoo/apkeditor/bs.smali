.class public final Lcom/gmail/heagoo/apkeditor/bs;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/Set;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/l;Lcom/gmail/heagoo/apkeditor/cp;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/bs;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/bs;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/bs;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/bs;->d:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    const p2, 0x7f0a009b

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/bs;->f:I

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0a009d

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/bs;->f:I

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0a009c

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/bs;->f:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/util/List;I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 7

    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2, v2}, Lcom/gmail/heagoo/apkeditor/bs;->a(Ljava/util/List;I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bs;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/bs;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bs;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/bs;->notifyDataSetChanged()V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/bs;->notifyDataSetChanged()V

    return-void
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bs;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/bs;->d:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bs;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/bs;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v4, p0, Lcom/gmail/heagoo/apkeditor/bs;->f:I

    invoke-virtual {p2, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v4, Lcom/gmail/heagoo/apkeditor/bt;

    invoke-direct {v4, v3}, Lcom/gmail/heagoo/apkeditor/bt;-><init>(B)V

    const v5, 0x7f0800d6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/gmail/heagoo/apkeditor/bt;->a:Landroid/widget/ImageView;

    const v5, 0x7f0800d8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/gmail/heagoo/apkeditor/bt;->b:Landroid/widget/TextView;

    const v5, 0x7f0800a7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/gmail/heagoo/apkeditor/bt;->c:Landroid/widget/TextView;

    const v5, 0x7f080084

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v4, Lcom/gmail/heagoo/apkeditor/bt;->d:Landroid/widget/CheckBox;

    iget-object v5, v4, Lcom/gmail/heagoo/apkeditor/bt;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v4, Lcom/gmail/heagoo/apkeditor/bt;->b:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmail/heagoo/apkeditor/bt;

    :goto_0
    iget-object v5, v4, Lcom/gmail/heagoo/apkeditor/bt;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0700b1

    const/16 v5, 0x2f

    invoke-virtual {p3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v0, 0x7f07015e

    goto :goto_1

    :cond_1
    const-string v6, "png"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "jpg"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bs;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/apkeditor/l;

    iget-object v2, v2, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v2, p3}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/fm;

    move-result-object p3

    iget-object v2, p3, Lcom/gmail/heagoo/apkeditor/fm;->a:Landroid/graphics/Bitmap;

    iget-object p3, p3, Lcom/gmail/heagoo/apkeditor/fm;->b:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    move-object p3, v2

    :goto_2
    if-eqz v2, :cond_4

    iget-object v0, v4, Lcom/gmail/heagoo/apkeditor/bt;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_4
    iget-object v2, v4, Lcom/gmail/heagoo/apkeditor/bt;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    if-eqz p3, :cond_5

    iget-object v0, v4, Lcom/gmail/heagoo/apkeditor/bt;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lcom/gmail/heagoo/apkeditor/bt;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    iget-object p3, v4, Lcom/gmail/heagoo/apkeditor/bt;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object p3, v4, Lcom/gmail/heagoo/apkeditor/bt;->d:Landroid/widget/CheckBox;

    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setId(I)V

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v4, Lcom/gmail/heagoo/apkeditor/bt;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    :cond_6
    iget-object p1, v4, Lcom/gmail/heagoo/apkeditor/bt;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_5
    iget-object p1, v4, Lcom/gmail/heagoo/apkeditor/bt;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bs;->b:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bs;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/cp;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/bs;->e:Ljava/util/Set;

    invoke-interface {p1, p2}, Lcom/gmail/heagoo/apkeditor/cp;->a(Ljava/util/Set;)V

    :cond_1
    return-void
.end method
