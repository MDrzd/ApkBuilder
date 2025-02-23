.class public Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;
.super Lcom/gmail/heagoo/common/f;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;

.field private c:Lcom/a/a/h;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gmail/heagoo/common/f;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/a/a/g;
    .registers 5

    const-string v0, "<color name=\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xd

    const-string v2, "\">"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x2

    const-string v3, "</color>"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/a/a/g;

    invoke-direct {v1, v0, p0}, Lcom/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private a()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->a(Ljava/lang/String;)Lcom/a/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    throw v1

    :catch_2
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :goto_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/g;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0, v2}, Lcom/a/a/g;->a(Landroid/content/Context;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    return-void
.end method

.method private b()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "xmlPath"

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extraString"

    const-string v2, "res/values/colors.xml"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final a(II)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/a/a/g;

    iput p2, p1, Lcom/a/a/g;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/a/a/g;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->d:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->c:Lcom/a/a/h;

    invoke-virtual {p1}, Lcom/a/a/h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->a()V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->c:Lcom/a/a/h;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/a/a/h;->a(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08004a

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f080066

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    :try_start_0
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "<resources>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/g;

    invoke-virtual {v1}, Lcom/a/a/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "</resources>"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, p1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    const p1, 0x7f0d0179

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->finish()V

    return-void

    :goto_3
    if-eqz p1, :cond_3

    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    throw v0

    :cond_4
    const v0, 0x7f08005c

    if-ne p1, v0, :cond_5

    const-string p1, "xml.xml"

    const-string v0, "colors.xml"

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->a:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/gmail/heagoo/apkeditor/fm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "syntaxFileName"

    invoke-static {v1, v3, p1}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const-string p1, "displayFileName"

    invoke-static {v1, p1, v0}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    const-string p1, "extraString"

    const-string v0, "res/values/colors.xml"

    invoke-static {v1, p1, v0}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/gmail/heagoo/common/f;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result p1

    const v1, 0x7f0e0006

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0a002a

    :goto_0
    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->setContentView(I)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->setTheme(I)V

    const p1, 0x7f0a002c

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->setTheme(I)V

    const p1, 0x7f0a002b

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "xmlPath"

    invoke-static {p1, v1}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->a()V

    const p1, 0x7f0800d8

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->a:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->a:Ljava/lang/String;

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/a/a/h;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/a/a/h;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->c:Lcom/a/a/h;

    const p1, 0x7f080095

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->c:Lcom/a/a/h;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f080066

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->d:Landroid/widget/Button;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->d:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08004a

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08005c

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/a/a/g;

    iget p1, p1, Lcom/a/a/g;->c:I

    new-instance p2, Lcom/a/a/f;

    new-instance p4, Lcom/gmail/heagoo/apkeditor/ap;

    invoke-direct {p4, p0, p3}, Lcom/gmail/heagoo/apkeditor/ap;-><init>(Lcom/gmail/heagoo/apkeditor/ColorXmlActivity;I)V

    invoke-direct {p2, p0, p1, p4}, Lcom/a/a/f;-><init>(Landroid/content/Context;ILcom/a/a/e;)V

    invoke-virtual {p2}, Lcom/a/a/f;->show()V

    return-void
.end method
