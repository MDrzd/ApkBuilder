.class public Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;
.super Lcom/gmail/heagoo/common/f;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/gmail/heagoo/common/n;


# instance fields
.field private A:Lcom/gmail/heagoo/apkeditor/util/c;

.field private B:Z

.field private C:Landroid/content/ServiceConnection;

.field private D:Ljava/lang/String;

.field protected a:Ljava/lang/String;

.field public b:Z

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Z

.field private q:Lcom/gmail/heagoo/apkeditor/e;

.field private r:Lcom/gmail/heagoo/common/o;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:J

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Lcom/gmail/heagoo/apkeditor/i;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/gmail/heagoo/common/f;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->p:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b:Z

    new-instance v0, Lcom/gmail/heagoo/apkeditor/b;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/b;-><init>(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->C:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Lcom/gmail/heagoo/apkeditor/i;)Lcom/gmail/heagoo/apkeditor/i;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    return-object p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Lcom/gmail/heagoo/apkeditor/util/c;)Lcom/gmail/heagoo/apkeditor/util/c;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->A:Lcom/gmail/heagoo/apkeditor/util/c;

    return-object p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->y:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Lcom/gmail/heagoo/apkeditor/i;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    return-object p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "[1-9][0-9]*\\. WARNING"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v2, p0, v3

    const-string v4, "warning:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->o:Landroid/widget/Button;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/gmail/heagoo/common/a;

    invoke-direct {v1}, Lcom/gmail/heagoo/common/a;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->v:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/gmail/heagoo/common/b;

    invoke-direct {v4}, Lcom/gmail/heagoo/common/b;-><init>()V

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/gmail/heagoo/common/b;->a:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, v4, Lcom/gmail/heagoo/common/b;->b:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v4, Lcom/gmail/heagoo/common/b;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_1

    iget-object v1, v4, Lcom/gmail/heagoo/common/b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_1
    return-object v0
.end method

.method static synthetic d(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Lcom/gmail/heagoo/apkeditor/a/a;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic f(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->u:J

    return-wide v0
.end method

.method static synthetic g(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->w:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Landroid/widget/TextView;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic j(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Landroid/widget/Button;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->q:Lcom/gmail/heagoo/apkeditor/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/e;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Lcom/gmail/heagoo/common/o;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->r:Lcom/gmail/heagoo/common/o;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->q:Lcom/gmail/heagoo/apkeditor/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/e;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->t:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->q:Lcom/gmail/heagoo/apkeditor/e;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/apkeditor/e;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Z)V
    .registers 10

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/i;->a()V

    :cond_0
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0800d5

    const v3, 0x7f0801b8

    const/16 v4, 0x8

    if-eqz p1, :cond_3

    const/16 p1, 0x2715

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->setResult(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->h:Landroid/widget/ImageView;

    const v2, 0x7f070146

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0d0045

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->v:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->y:Z

    const/16 v3, 0x16

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->w:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d025a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v6, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v5, v6, p1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->n:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d01ed

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x12

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/16 v5, 0xff

    const/16 v6, 0x1e

    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, p1, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->n:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void

    :cond_3
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->setResult(I)V

    invoke-virtual {p0, v3}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->g:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->t:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->x:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v3, Lcom/gmail/heagoo/apkeditor/f;

    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->s:Ljava/lang/String;

    invoke-direct {v3, p0, v2, v5}, Lcom/gmail/heagoo/apkeditor/f;-><init>(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->h:Landroid/widget/ImageView;

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->s:Ljava/lang/String;

    const-string v3, " WARNING "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->s:Ljava/lang/String;

    const-string v3, "warning:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->i:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->i:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->A:Lcom/gmail/heagoo/apkeditor/util/c;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gmail/heagoo/apkeditor/util/c;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->A:Lcom/gmail/heagoo/apkeditor/util/c;

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/util/c;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->A:Lcom/gmail/heagoo/apkeditor/util/c;

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/util/c;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const p1, 0x7f0d0167

    goto :goto_5

    :pswitch_1
    const p1, 0x7f0d016a

    goto :goto_5

    :pswitch_2
    const p1, 0x7f0d0168

    goto :goto_5

    :pswitch_3
    const p1, 0x7f0d016b

    goto :goto_5

    :pswitch_4
    const p1, 0x7f0d0169

    :goto_5
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->n:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " %d/%d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->r:Lcom/gmail/heagoo/common/o;

    iget v2, v2, Lcom/gmail/heagoo/common/o;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->r:Lcom/gmail/heagoo/common/o;

    iget v2, v2, Lcom/gmail/heagoo/common/o;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->r:Lcom/gmail/heagoo/common/o;

    iget-object v1, v1, Lcom/gmail/heagoo/common/o;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x29

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    if-eq v1, v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    add-int/2addr v1, v0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x16

    invoke-direct {v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v6, 0x12

    invoke-virtual {v0, v3, v5, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/16 v7, 0xff

    const/16 v8, 0x1e

    invoke-static {v7, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v3, v5, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->A:Lcom/gmail/heagoo/apkeditor/util/c;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/util/c;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/util/AxmlStringModifier;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->x:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/gmail/heagoo/apkeditor/util/AxmlStringModifier;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v1, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v0, v2}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->a(Lcom/gmail/heagoo/apkeditor/ApkComposeService;Landroidx/versionedparcelable/d;)Landroidx/versionedparcelable/d;

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->e(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->m(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/i;->a:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeService;->f(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "donot_show_compose_tip"

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0801ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d007c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d02e5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/gmail/heagoo/apkeditor/d;

    invoke-direct {v4, p0, v1}, Lcom/gmail/heagoo/apkeditor/d;-><init>(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08004a

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f080059

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->v:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "apk"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "gen.apk"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v4, p1}, Lcom/a/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v2

    :goto_0
    move-object v2, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v2

    :goto_1
    move-object v2, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p1, v2

    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Internal error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v2}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_4
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    const v0, 0x7f08005f

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->w:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_4
    const v0, 0x7f08004d

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->s:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gmail/heagoo/common/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f0d0141

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    const v0, 0x7f080055

    const/16 v1, 0x8

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->A:Lcom/gmail/heagoo/apkeditor/util/c;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->A:Lcom/gmail/heagoo/apkeditor/util/c;

    invoke-virtual {p1, p0}, Lcom/gmail/heagoo/apkeditor/util/c;->a(Landroid/app/Activity;)V

    return-void

    :cond_6
    const v0, 0x7f08005d

    if-ne p1, v0, :cond_8

    iget-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->p:Z

    if-nez p1, :cond_7

    new-instance p1, Lcom/gmail/heagoo/apkeditor/ce;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/c;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/c;-><init>(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)V

    const/4 v1, -0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/gmail/heagoo/apkeditor/ce;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ce;->show()V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_4
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    return-void

    :cond_8
    const v0, 0x7f080058

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/f;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/f;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->i:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_9
    const v0, 0x7f080047

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->finish()V

    :cond_a
    :goto_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/gmail/heagoo/common/f;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "default"

    const-string v3, "default"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v3, v0, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->D:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result p1

    const v1, 0x1030009

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0a001c

    :goto_0
    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->setContentView(I)V

    goto :goto_1

    :pswitch_0
    invoke-super {p0, v1}, Lcom/gmail/heagoo/common/f;->setTheme(I)V

    const p1, 0x7f0a001e

    goto :goto_0

    :pswitch_1
    invoke-super {p0, v1}, Lcom/gmail/heagoo/common/f;->setTheme(I)V

    const p1, 0x7f0a001d

    goto :goto_0

    :goto_1
    new-instance p1, Lcom/gmail/heagoo/apkeditor/e;

    invoke-direct {p1, p0}, Lcom/gmail/heagoo/apkeditor/e;-><init>(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->q:Lcom/gmail/heagoo/apkeditor/e;

    const p1, 0x7f080114

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->c:Landroid/widget/LinearLayout;

    const p1, 0x7f080113

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->d:Landroid/widget/LinearLayout;

    const p1, 0x7f08016d

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->e:Landroid/widget/TextView;

    const p1, 0x7f080182

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->f:Landroid/widget/TextView;

    const p1, 0x7f0800d5

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->g:Landroid/widget/ListView;

    const p1, 0x7f080183

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->h:Landroid/widget/ImageView;

    const p1, 0x7f0800e3

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->k:Landroid/widget/LinearLayout;

    const p1, 0x7f0801e2

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->l:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f08004a

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08005f

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->j:Landroid/widget/Button;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080055

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->m:Landroid/widget/Button;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->m:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08004d

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->n:Landroid/widget/Button;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->n:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080058

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->i:Landroid/widget/Button;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->i:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080047

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->o:Landroid/widget/Button;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->o:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->C:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v1, v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->u:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->C:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->C:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->C:Landroid/content/ServiceConnection;

    :cond_0
    invoke-super {p0}, Lcom/gmail/heagoo/common/f;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->D:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->D:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "com.gmail.heagoo.action.apkcompose"

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/i;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->z:Lcom/gmail/heagoo/apkeditor/i;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/i;->a()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->B:Z

    invoke-super {p0}, Lcom/gmail/heagoo/common/f;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/gmail/heagoo/common/f;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->B:Z

    return-void
.end method
