.class public final Lcom/gmail/heagoo/apkeditor/dm;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/widget/PopupWindow;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/do;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dm;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/dm;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/dm;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/dm;Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/dm;->c:Ljava/lang/String;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0a00d8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f080126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/dk;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/gmail/heagoo/apkeditor/dk;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p1}, Lcom/gmail/heagoo/common/g;->b(Landroid/app/Activity;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x5

    invoke-static {p1}, Lcom/gmail/heagoo/common/g;->a(Landroid/app/Activity;)I

    move-result p1

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p2, p1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/dm;->b:Landroid/widget/PopupWindow;

    new-instance p1, Lcom/gmail/heagoo/apkeditor/dn;

    invoke-direct {p1, p0, p3}, Lcom/gmail/heagoo/apkeditor/dn;-><init>(Lcom/gmail/heagoo/apkeditor/dm;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/dm;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/dm;->b:Landroid/widget/PopupWindow;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .registers 12

    new-instance v6, Lcom/gmail/heagoo/apkeditor/dp;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gmail/heagoo/apkeditor/dp;-><init>(Lcom/gmail/heagoo/apkeditor/dm;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p1}, Lcom/gmail/heagoo/apkeditor/dp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dm;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dm;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dm;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dm;->b:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dm;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_0
    return-void
.end method
