.class public final Lcom/gmail/heagoo/apkeditor/ca;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private e:Ljava/lang/ref/WeakReference;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/gmail/heagoo/apkeditor/ca;->a:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/gmail/heagoo/apkeditor/ca;->b:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/gmail/heagoo/apkeditor/ca;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/gmail/heagoo/apkeditor/ca;->d:[I

    return-void

    :array_0
    .array-data 4
        0x7f0d0294
        0x7f0d017a
        0x7f0d030a
        0x7f0d0181
    .end array-data

    :array_1
    .array-data 4
        0x7f0700fa
        0x7f0700b6
        0x7f07008d
        0x7f0700bb
    .end array-data

    :array_2
    .array-data 4
        0x7f0700fb
        0x7f0700b6
        0x7f07008d
        0x7f0700bc
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x4
        0x5
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ca;->e:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/gmail/heagoo/apkeditor/ca;->f:Z

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lcom/gmail/heagoo/apkeditor/ca;->a:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    sget-object v0, Lcom/gmail/heagoo/apkeditor/ca;->d:[I

    aget p1, v0, p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/gmail/heagoo/apkeditor/ca;->f:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0a00a6

    goto :goto_0

    :cond_0
    const p2, 0x7f0a00a5

    :goto_0
    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/ca;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/gmail/heagoo/apkeditor/cb;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/gmail/heagoo/apkeditor/cb;-><init>(Lcom/gmail/heagoo/apkeditor/ca;B)V

    const v0, 0x7f080137

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/gmail/heagoo/apkeditor/cb;->a:Landroid/widget/ImageView;

    const v0, 0x7f080148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/gmail/heagoo/apkeditor/cb;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmail/heagoo/apkeditor/cb;

    :goto_1
    iget-object v0, p3, Lcom/gmail/heagoo/apkeditor/cb;->a:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/ca;->f:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/gmail/heagoo/apkeditor/ca;->c:[I

    aget v1, v1, p1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/gmail/heagoo/apkeditor/ca;->b:[I

    aget v1, v1, p1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p3, p3, Lcom/gmail/heagoo/apkeditor/cb;->b:Landroid/widget/TextView;

    sget-object v0, Lcom/gmail/heagoo/apkeditor/ca;->a:[I

    aget p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method
