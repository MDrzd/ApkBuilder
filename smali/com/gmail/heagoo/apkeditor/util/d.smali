.class final Lcom/gmail/heagoo/apkeditor/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/common/y;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/util/c;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/util/c;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/d;->b:Lcom/gmail/heagoo/apkeditor/util/c;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/util/d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/d;->b:Lcom/gmail/heagoo/apkeditor/util/c;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/util/c;->a(Lcom/gmail/heagoo/apkeditor/util/c;)Lcom/gmail/heagoo/apkeditor/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/util/e;->b()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/d;->b:Lcom/gmail/heagoo/apkeditor/util/c;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/util/d;->b:Lcom/gmail/heagoo/apkeditor/util/c;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/util/c;->a(Lcom/gmail/heagoo/apkeditor/util/c;)Lcom/gmail/heagoo/apkeditor/util/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gmail/heagoo/apkeditor/util/e;->d()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/gmail/heagoo/apkeditor/util/c;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/gmail/heagoo/apkeditor/util/c;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/d;->b:Lcom/gmail/heagoo/apkeditor/util/c;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/util/c;->a(Lcom/gmail/heagoo/apkeditor/util/c;)Lcom/gmail/heagoo/apkeditor/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/util/e;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/d;->b:Lcom/gmail/heagoo/apkeditor/util/c;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/util/c;->a(Lcom/gmail/heagoo/apkeditor/util/c;)Lcom/gmail/heagoo/apkeditor/util/e;

    move-result-object v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/util/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/gmail/heagoo/apkeditor/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/util/d;->a:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/d;->a:Landroid/app/Activity;

    check-cast v0, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/d;->a:Landroid/app/Activity;

    const v2, 0x7f0d02b1

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
