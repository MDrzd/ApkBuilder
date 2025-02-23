.class final Lcom/gmail/heagoo/apkeditor/util/p;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private synthetic e:Lcom/gmail/heagoo/apkeditor/util/o;


# direct methods
.method private constructor <init>(Lcom/gmail/heagoo/apkeditor/util/o;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/p;->e:Lcom/gmail/heagoo/apkeditor/util/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/util/p;->a:I

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/util/p;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/gmail/heagoo/apkeditor/util/o;ILjava/lang/String;B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/gmail/heagoo/apkeditor/util/p;-><init>(Lcom/gmail/heagoo/apkeditor/util/o;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/util/p;)Z
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/util/p;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/p;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/util/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/gmail/heagoo/common/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/p;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/p;->d:Ljava/lang/String;

    return-object v0
.end method
