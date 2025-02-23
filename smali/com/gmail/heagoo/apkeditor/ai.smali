.class final Lcom/gmail/heagoo/apkeditor/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

.field private b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ai;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ai;->b:Ljava/util/List;

    return-object p0
.end method

.method private a()V
    .registers 8

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ai;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ci;->b()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v2, v2, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v2, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ai;->b:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmail/heagoo/common/c;

    iget-object v3, v3, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ai;Ljava/lang/String;Lcom/gmail/heagoo/common/c;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object p2, p2, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p2, p2, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    const p1, 0x7f0d015d

    :goto_0
    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    const p1, 0x7f0d02b9

    goto :goto_0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ai;Ljava/lang/String;ZZ)V
    .registers 13

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ci;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v2, v2, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v2, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/common/c;

    iget-object v2, v2, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    xor-int/lit8 v8, p3, 0x1

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZ)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ai;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080136

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->c:Lcom/gmail/heagoo/apkeditor/cn;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/cn;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x7f080132

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Z)V

    return-void

    :cond_1
    const v0, 0x7f080145

    const/4 v2, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ci;->b()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ci;->getCount()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v4, v4, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v4, v3}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    const-string v4, ".."

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmail/heagoo/common/c;

    iget-object v3, v3, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1, v2}, Lcom/gmail/heagoo/apkeditor/ci;->a(Z)V

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Z)V

    return-void

    :cond_4
    const v0, 0x7f080129

    const/4 v3, 0x0

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1, v3}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/src"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/src/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b()V

    return-void

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const v0, 0x7f08012a

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->c()V

    return-void

    :cond_8
    const v0, 0x7f080144

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->d()V

    return-void

    :cond_9
    const v0, 0x7f08012d

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->e()V

    return-void

    :cond_a
    const v0, 0x7f0700e7

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;)V

    return-void

    :cond_b
    const v0, 0x7f0700e3

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ai;->a()V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    sget v0, Lcom/gmail/heagoo/apkeditor/ah;->c:I

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;I)V

    return-void

    :cond_c
    const v0, 0x7f0700f4

    const v4, 0x104000a

    const/4 v5, -0x1

    if-ne p1, v0, :cond_d

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0278

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d022d

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ac/a;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-virtual {v3}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "res_keywords"

    invoke-direct {v0, v3, v6}, Lcom/gmail/heagoo/apkeditor/ac/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

    iget-object v7, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-direct {v2, v7}, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-direct {v0, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d0088

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setText(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x8

    invoke-virtual {v7, v1, v8, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-direct {v7, v9}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0d027a

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setText(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x20

    invoke-virtual {v9, v1, v8, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/al;

    invoke-direct {v1, p0, v2, v7, v0}, Lcom/gmail/heagoo/apkeditor/al;-><init>(Lcom/gmail/heagoo/apkeditor/ai;Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/gmail/heagoo/apkeditor/am;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/am;-><init>(Lcom/gmail/heagoo/apkeditor/ai;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_d
    const v0, 0x7f0700c9

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ci;->b()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/util/List;)V

    :cond_e
    return-void

    :cond_f
    const v0, 0x7f0700cb

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ci;->b()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v1, v0}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/common/c;

    iget-object v0, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-static {v5}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b(Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;)Z

    move-result v5

    if-eqz v5, :cond_10

    const v5, 0x7f0a006d

    goto :goto_1

    :cond_10
    const v5, 0x7f0a006c

    :goto_1
    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0800d8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800d9

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800dd

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/gmail/heagoo/common/ag;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080062

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/an;

    invoke-direct {v2, p0, v6, p1, v1}, Lcom/gmail/heagoo/apkeditor/an;-><init>(Lcom/gmail/heagoo/apkeditor/ai;Landroid/widget/EditText;Lcom/gmail/heagoo/common/c;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0112

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_11
    return-void

    :cond_12
    const v0, 0x7f0700e4

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p1, v3}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ak;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/aj;

    invoke-direct {v2, p0, p1}, Lcom/gmail/heagoo/apkeditor/aj;-><init>(Lcom/gmail/heagoo/apkeditor/ai;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, v2, v5}, Lcom/gmail/heagoo/apkeditor/ak;-><init>(Lcom/gmail/heagoo/apkeditor/ai;Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ak;->show()V

    return-void

    :cond_13
    const v0, 0x7f0700c7

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    sget v0, Lcom/gmail/heagoo/apkeditor/ah;->a:I

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(I)V

    :cond_14
    :goto_2
    return-void
.end method
