.class public Lcom/gmail/heagoo/apkeditor/l;
.super Lcom/gmail/heagoo/common/f;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/gmail/heagoo/apkeditor/cp;


# instance fields
.field private A:La/a/a;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Lcom/gmail/heagoo/apkeditor/ac/a;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Lcom/gmail/heagoo/apkeditor/dq;

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:I

.field protected a:Ljava/lang/String;

.field b:Lcom/gmail/heagoo/apkeditor/ci;

.field protected c:Lcom/gmail/heagoo/apkeditor/cn;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/ImageView;

.field protected f:Z

.field protected g:Z

.field protected h:I

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/ListView;

.field private o:Ljava/util/Stack;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/HorizontalScrollView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/gmail/heagoo/common/f;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->o:Ljava/util/Stack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/l;->f:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/l;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->A:La/a/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/l;->B:I

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/l;->I:Z

    sget v0, Lcom/gmail/heagoo/apkeditor/ah;->a:I

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/l;->J:I

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/l;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\n\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "public class "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "{\n    \n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/l;)V
    .registers 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0d0079

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0d022a

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/l;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/l;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "res/values/colors.xml"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "xmlPath"

    invoke-static {p2, p3, p1}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/gmail/heagoo/apkeditor/l;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gmail/heagoo/apkeditor/fm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "syntaxFileName"

    invoke-static {p1, v0, p4}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    if-eqz p2, :cond_1

    const-string p4, "displayFileName"

    invoke-static {p1, p4, p2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_1
    const-string p2, "extraString"

    invoke-static {p1, p2, p3}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/gmail/heagoo/apkeditor/l;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Z)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/l;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".signed.apk"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/l;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".unsigned.apk"

    goto :goto_0

    :goto_1
    invoke-static {v1}, Lcom/gmail/heagoo/common/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "projectRootPath"

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const-string v3, "targetApkPath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const-string v0, "signAPK"

    invoke-static {v2, v0, p1}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Z)Landroid/os/Bundle;

    const-string p1, "fromGradle"

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/l;->I:Z

    invoke-static {v2, p1, v0}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Z)Landroid/os/Bundle;

    const-string p1, "projectFilePath"

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->i:Ljava/lang/String;

    invoke-static {v2, p1, v0}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/l;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/gmail/heagoo/apkeditor/l;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "xml.xml"

    return-object p0

    :cond_0
    const-string v0, ".smali"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "smali.xml"

    return-object p0

    :cond_1
    const-string v0, ".html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ".htm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ".css"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "css.xml"

    return-object p0

    :cond_3
    const-string v0, ".java"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "java.xml"

    return-object p0

    :cond_4
    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "json.xml"

    return-object p0

    :cond_5
    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "txt.xml"

    return-object p0

    :cond_6
    const-string v0, ".js"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "js.xml"

    return-object p0

    :cond_7
    const-string v0, ".gradle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".md"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".project"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    return-object p0

    :cond_9
    :goto_0
    const-string p0, "txt.xml"

    return-object p0

    :cond_a
    :goto_1
    const-string p0, "html.xml"

    return-object p0
.end method

.method private d()V
    .registers 3

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/l;->f()V

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/l;->h()V

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/l;->e()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->w:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->z:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private e()V
    .registers 4

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ba;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/l;->f:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070138

    goto :goto_0

    :cond_0
    const v0, 0x7f07013a

    :goto_0
    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/l;->g:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0700c4

    goto :goto_2

    :cond_1
    const v1, 0x7f0700c2

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/l;->f:Z

    if-eqz v0, :cond_3

    const v0, 0x7f070137

    goto :goto_1

    :cond_3
    const v0, 0x7f070139

    :goto_1
    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/l;->g:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0700c3

    goto :goto_2

    :cond_4
    const v1, 0x7f0700c1

    :goto_2
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/l;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private f()V
    .registers 3

    const v0, 0x7f08018a

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->z:Landroid/widget/Button;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->z:Landroid/widget/Button;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/s;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/s;-><init>(Lcom/gmail/heagoo/apkeditor/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->w:Landroid/view/View;

    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->w:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->x:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->y:Landroid/view/View;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->y:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g()V
    .registers 4

    sget-object v0, Lcom/gmail/heagoo/apkeditor/r;->a:[I

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/l;->J:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h()V
    .registers 8

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->C:Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->C:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    :goto_0
    move-object v3, v0

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ci;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/gmail/heagoo/apkeditor/ci;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;Lcom/gmail/heagoo/apkeditor/cp;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->c:Lcom/gmail/heagoo/apkeditor/cn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->C:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->c:Lcom/gmail/heagoo/apkeditor/cn;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/l;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/cn;->a(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/l;->g()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/l;->I:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0d0080

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-class v0, Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {p0, v0}, Lcom/gmail/heagoo/common/af;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ag;

    invoke-direct {v2, p0, v1}, Lcom/gmail/heagoo/apkeditor/ag;-><init>(Lcom/gmail/heagoo/apkeditor/l;Z)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/gmail/heagoo/apkeditor/l;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/gmail/heagoo/apkeditor/l;->a(Z)V

    return-void
.end method

.method protected final a(I)V
    .registers 4

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/l;->J:I

    sget-object v0, Lcom/gmail/heagoo/apkeditor/r;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/ci;->b(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/ci;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/apkeditor/ci;->b(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ci;->a()V

    :goto_0
    :pswitch_2
    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/l;->g()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 8

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/src/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d01df

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0229

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/gmail/heagoo/common/r;->a()Landroid/text/InputFilter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/gmail/heagoo/apkeditor/n;

    invoke-direct {v4, p0, v2, p1, v0}, Lcom/gmail/heagoo/apkeditor/n;-><init>(Lcom/gmail/heagoo/apkeditor/l;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    new-instance v0, Lcom/gmail/heagoo/apkeditor/o;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/o;-><init>(Lcom/gmail/heagoo/apkeditor/l;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V

    if-lez p2, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->o:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    iget-object v0, p1, La/a/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, La/a/d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/gmail/heagoo/apkeditor/dq;)V
    .registers 14

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    new-instance v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    new-instance v3, Lcom/gmail/heagoo/apkeditor/aa;

    invoke-direct {v3, p0, p2, v4}, Lcom/gmail/heagoo/apkeditor/aa;-><init>(Lcom/gmail/heagoo/apkeditor/l;Lcom/gmail/heagoo/apkeditor/dq;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "replace_file"

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v10}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;-><init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->show()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/gmail/heagoo/apkeditor/dq;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->E:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/l;->F:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/l;->G:Lcom/gmail/heagoo/apkeditor/dq;

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZ)V
    .registers 13

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->D:Lcom/gmail/heagoo/apkeditor/ac/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->D:Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/ac/a;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    new-instance p4, Lcom/gmail/heagoo/apkeditor/cq;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/gmail/heagoo/apkeditor/cq;-><init>(Lcom/gmail/heagoo/apkeditor/l;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    invoke-virtual {p4}, Lcom/gmail/heagoo/apkeditor/cq;->show()V

    return-void

    :cond_1
    new-instance p4, Lcom/gmail/heagoo/apkeditor/cx;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/gmail/heagoo/apkeditor/cx;-><init>(Lcom/gmail/heagoo/apkeditor/l;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    invoke-virtual {p4}, Lcom/gmail/heagoo/apkeditor/cx;->show()V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gmail/heagoo/apkeditor/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p3, ".png"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "filePath"

    invoke-static {p2, p3, p1}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const/16 p1, 0x3ed

    invoke-virtual {p0, p2, p1}, Lcom/gmail/heagoo/apkeditor/l;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p0, p1, p2}, Lcom/gmail/heagoo/b/a/a;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 5

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/l;->J:I

    sget v1, Lcom/gmail/heagoo/apkeditor/ah;->c:I

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/gmail/heagoo/apkeditor/ah;->a:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/gmail/heagoo/apkeditor/ah;->b:I

    :goto_0
    iput v0, p0, Lcom/gmail/heagoo/apkeditor/l;->J:I

    :cond_1
    const v0, 0x7f0d01f0

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/l;->g()V

    return-void
.end method

.method protected final b()V
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d002f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0101

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/gmail/heagoo/common/r;->a()Landroid/text/InputFilter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/gmail/heagoo/apkeditor/ad;

    invoke-direct {v3, p0, v2, v0}, Lcom/gmail/heagoo/apkeditor/ad;-><init>(Lcom/gmail/heagoo/apkeditor/l;Landroid/widget/EditText;Ljava/lang/String;)V

    const v0, 0x104000a

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ae;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/ae;-><init>(Lcom/gmail/heagoo/apkeditor/l;)V

    const v2, 0x7f0d02b2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/af;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/af;-><init>(Lcom/gmail/heagoo/apkeditor/l;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected final b(I)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v1, v0}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/common/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/gmail/heagoo/apkeditor/l;->a(Ljava/lang/String;Lcom/gmail/heagoo/apkeditor/dq;)V

    return-void
.end method

.method protected final c()V
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d01de

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d022c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/gmail/heagoo/common/r;->a()Landroid/text/InputFilter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/gmail/heagoo/apkeditor/p;

    invoke-direct {v3, p0, v2, v0}, Lcom/gmail/heagoo/apkeditor/p;-><init>(Lcom/gmail/heagoo/apkeditor/l;Landroid/widget/EditText;Ljava/lang/String;)V

    const v0, 0x104000a

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/q;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/q;-><init>(Lcom/gmail/heagoo/apkeditor/l;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ci;->a()V

    goto :goto_0

    :sswitch_1
    return-void

    :sswitch_2
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/l;->F:Ljava/lang/String;

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/l;->E:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/gmail/heagoo/apkeditor/ci;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->G:Lcom/gmail/heagoo/apkeditor/dq;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->G:Lcom/gmail/heagoo/apkeditor/dq;

    invoke-interface {p1}, Lcom/gmail/heagoo/apkeditor/dq;->a()V

    :cond_0
    :goto_0
    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x3 -> :sswitch_3
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_1
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ci;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v0, v3}, Lcom/gmail/heagoo/apkeditor/ci;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ci;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v3, v0}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/l;->c:Lcom/gmail/heagoo/apkeditor/cn;

    invoke-virtual {v3, v0}, Lcom/gmail/heagoo/apkeditor/cn;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/d;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    iget-object v4, v0, La/a/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v0, La/a/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    if-eqz v2, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d02d6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0328

    new-instance v3, Lcom/gmail/heagoo/apkeditor/m;

    invoke-direct {v3, p0}, Lcom/gmail/heagoo/apkeditor/m;-><init>(Lcom/gmail/heagoo/apkeditor/l;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d01e6

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f080143

    if-ne p1, v1, :cond_4

    const p1, 0x7f0800cb

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0d0137

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    if-eqz p1, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v3, p1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ".."

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gmail/heagoo/common/c;

    iget-object v6, v6, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/common/c;

    iget-object v1, v1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gmail/heagoo/common/c;

    iget-object v5, v5, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/l;->f:Z

    xor-int/lit8 v5, p1, 0x1

    iget-boolean v6, p0, Lcom/gmail/heagoo/apkeditor/l;->g:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/gmail/heagoo/apkeditor/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZ)V

    :cond_3
    return-void

    :cond_4
    const v1, 0x7f080141

    if-ne p1, v1, :cond_6

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/l;->B:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/l;->B:I

    iget p1, p0, Lcom/gmail/heagoo/apkeditor/l;->B:I

    rem-int/lit8 p1, p1, 0x2

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/l;->setRequestedOrientation(I)V

    return-void

    :cond_5
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/l;->setRequestedOrientation(I)V

    return-void

    :cond_6
    const v0, 0x7f08014c

    if-ne p1, v0, :cond_7

    invoke-static {}, Lcom/gmail/heagoo/httpserver/e;->a()Lcom/gmail/heagoo/httpserver/e;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/gmail/heagoo/httpserver/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_7
    const v0, 0x7f080133

    if-ne p1, v0, :cond_8

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Directory"

    invoke-static {p1, v1, v0}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const/16 v0, 0x3ec

    invoke-virtual {p0, p1, v0}, Lcom/gmail/heagoo/apkeditor/l;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/gmail/heagoo/common/f;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/l;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/l;->h:I

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/l;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "themeId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/l;->h:I

    :cond_0
    iget v0, p0, Lcom/gmail/heagoo/apkeditor/l;->h:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/l;->h:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/l;->h:I

    :cond_2
    iget v0, p0, Lcom/gmail/heagoo/apkeditor/l;->h:I

    const v2, 0x1030009

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0a001f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->setContentView(I)V

    goto :goto_1

    :pswitch_0
    invoke-super {p0, v2}, Lcom/gmail/heagoo/common/f;->setTheme(I)V

    const v0, 0x7f0a0021

    goto :goto_0

    :pswitch_1
    invoke-super {p0, v2}, Lcom/gmail/heagoo/common/f;->setTheme(I)V

    const v0, 0x7f0a0020

    goto :goto_0

    :goto_1
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/l;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/util/a;->a(Landroid/app/Activity;)V

    :cond_3
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/l;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "projectFilePath"

    invoke-static {v0, v2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->i:Ljava/lang/String;

    invoke-static {v0}, La/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/gmail/heagoo/apkeditor/d/a;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/l;->i:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/gmail/heagoo/apkeditor/d/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/d/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NAME="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/gmail/heagoo/apkeditor/l;->H:Ljava/lang/String;

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const-string v5, "FROM_GRADLE="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRUE"

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/l;->I:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    const/4 v3, 0x0

    :catch_1
    :cond_6
    if-nez v3, :cond_7

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/l;->i:Ljava/lang/String;

    invoke-static {v2}, La/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/l;->H:Ljava/lang/String;

    const v2, 0x7f0d02e6

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/l;->i:Ljava/lang/String;

    invoke-static {v4}, La/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_7
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->j:Landroid/widget/ImageView;

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->k:Landroid/widget/TextView;

    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->l:Landroid/widget/TextView;

    const v0, 0x7f080180

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f080181

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->p:Landroid/view/View;

    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->q:Landroid/view/View;

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->r:Landroid/view/View;

    const v0, 0x7f08017d

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->s:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->u:Landroid/view/View;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/cn;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/l;->t:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/l;->s:Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/gmail/heagoo/apkeditor/cn;-><init>(Lcom/gmail/heagoo/apkeditor/l;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/widget/HorizontalScrollView;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->c:Lcom/gmail/heagoo/apkeditor/cn;

    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->j:Landroid/widget/ImageView;

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/l;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->d:Landroid/widget/ImageView;

    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->e:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/l;->e()V

    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/l;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "res_keywords"

    invoke-direct {v1, v2, v3}, Lcom/gmail/heagoo/apkeditor/ac/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/l;->D:Lcom/gmail/heagoo/apkeditor/ac/a;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/l;->D:Lcom/gmail/heagoo/apkeditor/ac/a;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p1, :cond_8

    const-string v0, "searchTextContent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/l;->f:Z

    const-string v0, "searchResSensitive"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/l;->g:Z

    const-string v0, "rotateClickedTimes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/l;->B:I

    const-string v0, "res_current_dir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->C:Ljava/lang/String;

    const-string v0, "savedParam_extraStr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->F:Ljava/lang/String;

    const-string v0, "savedParam_filePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->E:Ljava/lang/String;

    :cond_8
    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/l;->d()V

    invoke-static {p0}, La/a/a;->a(Landroid/app/Activity;)La/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->A:La/a/a;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->A:La/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->A:La/a/a;

    invoke-virtual {v0}, La/a/a;->c()V

    :cond_0
    invoke-super {p0}, Lcom/gmail/heagoo/common/f;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/common/c;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p4}, Lcom/gmail/heagoo/apkeditor/ci;->b()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1, p3}, Lcom/gmail/heagoo/apkeditor/ci;->a(I)V

    return-void

    :cond_1
    iget-boolean p3, p1, Lcom/gmail/heagoo/common/c;->b:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_5

    iget-object p3, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    const-string p5, ".."

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p3

    iget-object p5, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    invoke-virtual {p5, p4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_3

    const/4 p5, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, v0

    :goto_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->o:Ljava/util/Stack;

    new-instance v1, La/a/d;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {v1, p3, p5}, La/a/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p1, 0x0

    :goto_1
    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p3, p2}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/l;->c:Lcom/gmail/heagoo/apkeditor/cn;

    invoke-virtual {p3, p2}, Lcom/gmail/heagoo/apkeditor/cn;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->o:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/d;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    iget-object p3, p1, La/a/d;->a:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p1, p1, La/a/d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/l;->n:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    return-void

    :cond_5
    iget-object p1, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, p4}, Lcom/gmail/heagoo/apkeditor/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :catch_0
    :goto_2
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6

    const/4 p2, 0x0

    if-nez p3, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    new-instance p5, Lcom/gmail/heagoo/apkeditor/t;

    invoke-direct {p5, p0, p3, p4}, Lcom/gmail/heagoo/apkeditor/t;-><init>(Lcom/gmail/heagoo/apkeditor/l;IZ)V

    invoke-virtual {p1, p5}, Landroid/widget/AdapterView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return p2
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->A:La/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->A:La/a/a;

    invoke-virtual {v0}, La/a/a;->a()V

    :cond_0
    invoke-super {p0}, Lcom/gmail/heagoo/common/f;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/gmail/heagoo/common/f;->onResume()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->A:La/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/l;->A:La/a/a;

    invoke-virtual {v0}, La/a/a;->b()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Lcom/gmail/heagoo/common/f;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/gmail/heagoo/common/f;->onStop()V

    return-void
.end method
