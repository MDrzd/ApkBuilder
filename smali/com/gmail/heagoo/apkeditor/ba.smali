.class public final Lcom/gmail/heagoo/apkeditor/ba;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/gmail/heagoo/apkeditor/ba;


# instance fields
.field private b:I

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AppTheme"

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iput v1, p0, Lcom/gmail/heagoo/apkeditor/ba;->b:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/gmail/heagoo/apkeditor/ba;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput v0, p0, Lcom/gmail/heagoo/apkeditor/ba;->b:I

    :goto_0
    const-string v1, "FullScreen"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ba;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;
    .registers 2

    sget-object v0, Lcom/gmail/heagoo/apkeditor/ba;->a:Lcom/gmail/heagoo/apkeditor/ba;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ba;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/ba;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gmail/heagoo/apkeditor/ba;->a:Lcom/gmail/heagoo/apkeditor/ba;

    :cond_0
    sget-object p0, Lcom/gmail/heagoo/apkeditor/ba;->a:Lcom/gmail/heagoo/apkeditor/ba;

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/ba;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/ba;->b:I

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ba;->c:Z

    return v0
.end method
