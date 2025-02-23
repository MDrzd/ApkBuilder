.class public Ljackpal/androidterm/y;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Ljackpal/androidterm/a/ac;


# instance fields
.field private a:Ljackpal/androidterm/c/a;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/c/a;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p0, p1}, Ljackpal/androidterm/y;->a(Ljackpal/androidterm/c/a;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/y;->a:Ljackpal/androidterm/c/a;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/c/a;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljackpal/androidterm/a/q;

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljackpal/androidterm/b;

    if-eqz v0, :cond_0

    check-cast p1, Ljackpal/androidterm/b;

    invoke-virtual {p1, p2}, Ljackpal/androidterm/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public a()V
    .registers 1

    invoke-virtual {p0}, Ljackpal/androidterm/y;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljackpal/androidterm/c/a;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/y;->a:Ljackpal/androidterm/c/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljackpal/androidterm/c/a;->a(Ljackpal/androidterm/a/ac;)V

    invoke-virtual {p1, p0}, Ljackpal/androidterm/c/a;->c(Ljackpal/androidterm/a/ac;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljackpal/androidterm/y;->a()V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/y;->a:Ljackpal/androidterm/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/y;->a:Ljackpal/androidterm/c/a;

    invoke-virtual {v0}, Ljackpal/androidterm/c/a;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/y;->a:Ljackpal/androidterm/c/a;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/c/a;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ljackpal/androidterm/y;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0a00df

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f080216

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080217

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const v1, 0x7f0d0326

    invoke-virtual {p2, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Ljackpal/androidterm/y;->a:Ljackpal/androidterm/c/a;

    new-instance v1, Ljackpal/androidterm/z;

    invoke-direct {v1, p0, p2, p1}, Ljackpal/androidterm/z;-><init>(Ljackpal/androidterm/y;Ljackpal/androidterm/c/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
