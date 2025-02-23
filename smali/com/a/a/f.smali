.class public final Lcom/a/a/f;
.super Landroid/app/AlertDialog;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Lcom/a/a/a;

.field private b:I

.field private c:Lcom/a/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/a/a/e;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/f;->a:Lcom/a/a/a;

    iput-object v0, p0, Lcom/a/a/f;->c:Lcom/a/a/e;

    iput p2, p0, Lcom/a/a/f;->b:I

    iput-object p3, p0, Lcom/a/a/f;->c:Lcom/a/a/e;

    new-instance p3, Lcom/a/a/a;

    invoke-direct {p3, p1}, Lcom/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/a/a/f;->a:Lcom/a/a/a;

    iget-object p3, p0, Lcom/a/a/f;->a:Lcom/a/a/a;

    invoke-virtual {p3, p2}, Lcom/a/a/a;->a(I)V

    iget-object p2, p0, Lcom/a/a/f;->a:Lcom/a/a/a;

    invoke-virtual {p0, p2}, Lcom/a/a/f;->setView(Landroid/view/View;)V

    const p2, 0x7f0d00c1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2, p0}, Lcom/a/a/f;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p2, 0x7f0d00be

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/a/a/f;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget p1, p0, Lcom/a/a/f;->b:I

    iget-object p2, p0, Lcom/a/a/f;->a:Lcom/a/a/a;

    invoke-virtual {p2}, Lcom/a/a/a;->a()I

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/a/a/f;->c:Lcom/a/a/e;

    iget-object p2, p0, Lcom/a/a/f;->a:Lcom/a/a/a;

    invoke-virtual {p2}, Lcom/a/a/a;->a()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/a/a/e;->a(I)V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/a/a/f;->a:Lcom/a/a/a;

    const-string v1, "c"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/a/a/a;->a(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "c"

    iget-object v2, p0, Lcom/a/a/f;->a:Lcom/a/a/a;

    invoke-virtual {v2}, Lcom/a/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
