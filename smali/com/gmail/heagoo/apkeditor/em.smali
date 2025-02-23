.class final Lcom/gmail/heagoo/apkeditor/em;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private synthetic e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;


# direct methods
.method private constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/em;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 8

    new-instance v0, Lcom/gmail/heagoo/neweditor/d;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/em;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/em;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/gmail/heagoo/neweditor/d;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v4, v4, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->h:Ljava/lang/String;

    const v5, 0x7f0d0148

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v6, v6, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v4, v6, v5}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/gmail/heagoo/neweditor/d;->a(Z)V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v5, v5, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->h:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iput-object v1, v4, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/em;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v6, v5}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iput-object v0, v4, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    iput-boolean v3, p0, Lcom/gmail/heagoo/apkeditor/em;->b:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-boolean v2, p0, Lcom/gmail/heagoo/apkeditor/em;->b:Z

    :goto_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/dr;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/dr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/gmail/heagoo/apkeditor/em;->c:Z

    return-object v1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/em;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    iget-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/em;->b:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;Z)Z

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Lcom/gmail/heagoo/apkeditor/er;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/er;->a(Lcom/gmail/heagoo/neweditor/d;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/d;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Lcom/gmail/heagoo/apkeditor/er;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/er;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->f(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to open "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/em;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/common/g;->a(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->c(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->b(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method protected final onPreExecute()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget v1, v1, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget v2, v2, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;I)I

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget v1, v1, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/em;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->b(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/dr;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/dr;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e:I

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->c(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->c(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/em;->e:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
