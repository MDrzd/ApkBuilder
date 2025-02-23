.class public final Lcom/gmail/heagoo/apkeditor/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/gmail/heagoo/common/o;

.field private synthetic f:Lcom/gmail/heagoo/apkeditor/ApkComposeService;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/ApkComposeService;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/h;->f:Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/h;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/h;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/h;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/h;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/h;->e:Lcom/gmail/heagoo/common/o;

    return-void
.end method
