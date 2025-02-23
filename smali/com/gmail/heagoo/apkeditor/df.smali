.class final Lcom/gmail/heagoo/apkeditor/df;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/dq;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/cx;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/cx;I)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/df;->b:Lcom/gmail/heagoo/apkeditor/cx;

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/df;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/df;->b:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/cx;->e(Lcom/gmail/heagoo/apkeditor/cx;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/df;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/df;->b:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/cx;->d(Lcom/gmail/heagoo/apkeditor/cx;)Lcom/gmail/heagoo/apkeditor/bv;

    move-result-object v0

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/df;->a:I

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/bv;->b(I)V

    return-void
.end method
