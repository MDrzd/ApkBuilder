.class final Lcom/gmail/heagoo/apkeditor/dx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Lcom/gmail/heagoo/apkeditor/dr;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/dr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dx;->f:Lcom/gmail/heagoo/apkeditor/dr;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/dx;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/dx;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/dx;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/dx;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    const-string v0, "com.gmail.heagoo.apkeditor.pro.JavaExtractor"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/dx;->f:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/dr;->h(Lcom/gmail/heagoo/apkeditor/dr;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/dx;->c:Ljava/lang/String;

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/dx;->d:Ljava/lang/String;

    aput-object v3, v1, v6

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/dx;->e:Ljava/lang/String;

    aput-object v3, v1, v7

    invoke-static {v0, v2, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/a/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/gmail/heagoo/apkeditor/a/a;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/dx;->a:Z

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/dx;->a:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/gmail/heagoo/apkeditor/a/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/dx;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b()V
    .registers 5

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/dx;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dx;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/dx;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/dx;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/dx;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "defpackage/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".java"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    :cond_1
    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dx;->f:Lcom/gmail/heagoo/apkeditor/dr;

    const v2, 0x7f0d007f

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dx;->f:Lcom/gmail/heagoo/apkeditor/dr;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/gmail/heagoo/apkeditor/fm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dx;->f:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-virtual {v1, v0}, Lcom/gmail/heagoo/apkeditor/dr;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dx;->f:Lcom/gmail/heagoo/apkeditor/dr;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dx;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
