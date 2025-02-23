.class final Lcom/gmail/heagoo/pngeditor/h;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->i(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a(Lcom/gmail/heagoo/pngeditor/PngEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->b(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    new-instance v1, Lcom/b/a/e;

    iget-object v2, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    iget-object v3, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {v3}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->b(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/b/a/e;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a(Lcom/gmail/heagoo/pngeditor/PngEditActivity;Lcom/b/a/e;)Lcom/b/a/e;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Lcom/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-virtual {v0, v1}, Lcom/b/a/e;->a(Lcom/b/a/h;)V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Lcom/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Lcom/b/a/e;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/b/a/e;->b(F)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    const v0, 0x7f080101

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Lcom/b/a/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Lcom/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/e;->e()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->a(F)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    const v0, 0x7f0d0083

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {v3}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->i(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/h;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->finish()V

    return-void
.end method
