.class final Lcom/gmail/heagoo/apkeditor/dv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/cc;

.field private synthetic b:Landroid/widget/PopupWindow;

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/dr;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/dr;Lcom/gmail/heagoo/apkeditor/cc;Landroid/widget/PopupWindow;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/dv;->a:Lcom/gmail/heagoo/apkeditor/cc;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/dv;->b:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dv;->a:Lcom/gmail/heagoo/apkeditor/cc;

    invoke-virtual {p1, p3}, Lcom/gmail/heagoo/apkeditor/cc;->a(I)I

    move-result p1

    const/4 p2, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-instance p1, Lcom/gmail/heagoo/apkeditor/ce;

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    new-instance p4, Lcom/gmail/heagoo/apkeditor/dz;

    iget-object p5, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    const/4 v0, 0x0

    invoke-direct {p4, p5, v0}, Lcom/gmail/heagoo/apkeditor/dz;-><init>(Lcom/gmail/heagoo/apkeditor/dr;B)V

    invoke-direct {p1, p3, p4, p2}, Lcom/gmail/heagoo/apkeditor/ce;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ce;->show()V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/dr;->f(Lcom/gmail/heagoo/apkeditor/dr;)V

    goto :goto_2

    :pswitch_2
    new-instance p1, Lcom/gmail/heagoo/apkeditor/di;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {p3}, Lcom/gmail/heagoo/apkeditor/dr;->e(Lcom/gmail/heagoo/apkeditor/dr;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/gmail/heagoo/apkeditor/di;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/di;->show()V

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    const/4 p2, 0x5

    iput p2, p1, Lcom/gmail/heagoo/apkeditor/dr;->i:I

    new-instance p1, Lcom/gmail/heagoo/apkeditor/bh;

    invoke-direct {p1}, Lcom/gmail/heagoo/apkeditor/bh;-><init>()V

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    const p3, 0x7f0d00c9

    goto :goto_1

    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    const-class p3, Lcom/gmail/heagoo/apkeditor/EditorHelpActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    const-class p3, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/apkeditor/dr;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    const/4 p2, 0x2

    iput p2, p1, Lcom/gmail/heagoo/apkeditor/dr;->i:I

    new-instance p1, Lcom/gmail/heagoo/apkeditor/bh;

    invoke-direct {p1}, Lcom/gmail/heagoo/apkeditor/bh;-><init>()V

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    const p3, 0x7f0d010f

    :goto_1
    iget-object p4, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-virtual {p1, p2, p3, p4}, Lcom/gmail/heagoo/apkeditor/bh;->a(Landroid/content/Context;ILcom/gmail/heagoo/apkeditor/bk;)V

    goto :goto_2

    :pswitch_7
    new-instance p1, Lcom/a/a/f;

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    iget-object p4, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-direct {p1, p3, p2, p4}, Lcom/a/a/f;-><init>(Landroid/content/Context;ILcom/a/a/e;)V

    invoke-virtual {p1}, Lcom/a/a/f;->show()V

    goto :goto_2

    :pswitch_8
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dv;->c:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/dr;->d(Lcom/gmail/heagoo/apkeditor/dr;)V

    :goto_2
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dv;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
