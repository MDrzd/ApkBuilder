.class final Lcom/gmail/heagoo/apkeditor/dz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/util/Map;

.field private d:I

.field private synthetic e:Lcom/gmail/heagoo/apkeditor/dr;


# direct methods
.method private constructor <init>(Lcom/gmail/heagoo/apkeditor/dr;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dz;->e:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gmail/heagoo/apkeditor/dr;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/dz;-><init>(Lcom/gmail/heagoo/apkeditor/dr;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dz;->e:Lcom/gmail/heagoo/apkeditor/dr;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/dr;->j:Lcom/gmail/heagoo/neweditor/d;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gmail/heagoo/builder/p;

    invoke-direct {v1, v0}, Lcom/gmail/heagoo/builder/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gmail/heagoo/builder/p;->a()V

    invoke-virtual {v1}, Lcom/gmail/heagoo/builder/p;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/dz;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/gmail/heagoo/builder/p;->b()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/dz;->b:Ljava/util/List;

    invoke-virtual {v1}, Lcom/gmail/heagoo/builder/p;->d()I

    move-result v1

    iput v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->d:I

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->d:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    :goto_0
    iget v0, p0, Lcom/gmail/heagoo/apkeditor/dz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/dz;->d:I

    goto :goto_1

    :cond_0
    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->d:I

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->d:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dz;->e:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/dr;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bin/android.classes.jar"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/gmail/heagoo/builder/l;->a:I

    invoke-static {v1, v0}, Lcom/gmail/heagoo/builder/j;->a(ILjava/lang/String;)Lcom/gmail/heagoo/builder/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/builder/j;->a()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->a:Ljava/lang/String;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dz;->e:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/dr;->e(Lcom/gmail/heagoo/apkeditor/dr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dz;->e:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/dr;->e(Lcom/gmail/heagoo/apkeditor/dr;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/gmail/heagoo/builder/l;->b:I

    invoke-static {v2, v1}, Lcom/gmail/heagoo/builder/j;->a(ILjava/lang/String;)Lcom/gmail/heagoo/builder/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gmail/heagoo/builder/j;->a()V

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/gmail/heagoo/apkeditor/dz;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/dz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/gmail/heagoo/builder/j;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Lcom/gmail/heagoo/builder/j;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v3

    :goto_4
    if-eqz v6, :cond_5

    const-string v8, "java.lang"

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/gmail/heagoo/apkeditor/dz;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v6, :cond_8

    if-eqz v7, :cond_7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget-object v7, p0, Lcom/gmail/heagoo/apkeditor/dz;->c:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    if-eqz v7, :cond_3

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/dz;->c:Ljava/util/Map;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dz;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dz;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    return-void
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dz;->e:Lcom/gmail/heagoo/apkeditor/dr;

    const v1, 0x7f0d030c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dz;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dz;->e:Lcom/gmail/heagoo/apkeditor/dr;

    const v1, 0x7f0d0156

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/dr;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->e:Lcom/gmail/heagoo/apkeditor/dr;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dz;->e:Lcom/gmail/heagoo/apkeditor/dr;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dz;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dz;->c:Ljava/util/Map;

    iget v3, p0, Lcom/gmail/heagoo/apkeditor/dz;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/gmail/heagoo/apkeditor/dr;->a(Lcom/gmail/heagoo/apkeditor/dr;Ljava/util/List;Ljava/util/Map;I)V

    return-void
.end method
