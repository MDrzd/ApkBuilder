.class public Lcom/gmail/heagoo/neweditor/ObScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:Lcom/gmail/heagoo/neweditor/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObScrollView;->a:Lcom/gmail/heagoo/neweditor/aa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObScrollView;->a:Lcom/gmail/heagoo/neweditor/aa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObScrollView;->a:Lcom/gmail/heagoo/neweditor/aa;

    return-void
.end method


# virtual methods
.method public final a(Lcom/gmail/heagoo/neweditor/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ObScrollView;->a:Lcom/gmail/heagoo/neweditor/aa;

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ObScrollView;->a:Lcom/gmail/heagoo/neweditor/aa;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ObScrollView;->a:Lcom/gmail/heagoo/neweditor/aa;

    invoke-interface {p1}, Lcom/gmail/heagoo/neweditor/aa;->a()V

    :cond_0
    return-void
.end method
