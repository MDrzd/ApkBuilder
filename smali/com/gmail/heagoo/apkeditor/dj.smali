.class final Lcom/gmail/heagoo/apkeditor/dj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/di;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/di;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dj;->a:Lcom/gmail/heagoo/apkeditor/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dj;->a:Lcom/gmail/heagoo/apkeditor/di;

    invoke-virtual {p1, p3}, Lcom/gmail/heagoo/apkeditor/di;->a(I)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
