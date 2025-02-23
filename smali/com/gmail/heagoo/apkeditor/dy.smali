.class final Lcom/gmail/heagoo/apkeditor/dy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/common/m;


# instance fields
.field private synthetic a:Ljava/util/Map;

.field private synthetic b:I

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/dr;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/dr;Ljava/util/Map;I)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dy;->c:Lcom/gmail/heagoo/apkeditor/dr;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/dy;->a:Ljava/util/Map;

    iput p3, p0, Lcom/gmail/heagoo/apkeditor/dy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dy;->c:Lcom/gmail/heagoo/apkeditor/dr;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dy;->a:Ljava/util/Map;

    check-cast p1, Ljava/util/List;

    iget v2, p0, Lcom/gmail/heagoo/apkeditor/dy;->b:I

    invoke-static {v0, v1, p1, v2}, Lcom/gmail/heagoo/apkeditor/dr;->a(Lcom/gmail/heagoo/apkeditor/dr;Ljava/util/Map;Ljava/util/List;I)V

    return-void
.end method
