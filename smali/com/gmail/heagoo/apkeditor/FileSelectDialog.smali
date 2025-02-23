.class public Lcom/gmail/heagoo/apkeditor/FileSelectDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:Lcom/gmail/heagoo/apkeditor/ci;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/CheckBox;

.field private i:Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .registers 21

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;-><init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V
    .registers 26
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p3

    move/from16 v2, p6

    move-object/from16 v3, p9

    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-super {p0, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iput-object v7, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->j:Landroid/content/Context;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->i:Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;

    move-object/from16 v9, p4

    iput-object v9, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->b:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->c:Z

    move/from16 v4, p7

    iput-boolean v4, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->d:Z

    iput-object v3, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->e:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const v4, 0x7f0a005e

    goto :goto_0

    :pswitch_0
    const v4, 0x7f0a0060

    goto :goto_0

    :pswitch_1
    const v4, 0x7f0a005f

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    const v4, 0x7f080099

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const/16 v12, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v12}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "lastDirectory"

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_lastDirectory"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v3, ""

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v4, v2

    const v2, 0x7f080201

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->f:Landroid/widget/TextView;

    const v2, 0x7f0801fc

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->g:Landroid/widget/TextView;

    if-nez p5, :cond_4

    const v2, 0x7f0d0281

    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object/from16 v1, p5

    :goto_2
    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0800d7

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/ListView;

    new-instance v14, Lcom/gmail/heagoo/apkeditor/ci;

    const/4 v3, 0x0

    const-string v5, "/"

    new-instance v6, Lcom/gmail/heagoo/apkeditor/ay;

    invoke-direct {v6, p0}, Lcom/gmail/heagoo/apkeditor/ay;-><init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)V

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/gmail/heagoo/apkeditor/ci;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;)V

    iput-object v14, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a:Lcom/gmail/heagoo/apkeditor/ci;

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v13, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v13, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v13, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v1, 0x7f080078

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->h:Landroid/widget/CheckBox;

    if-eqz p8, :cond_6

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->h:Landroid/widget/CheckBox;

    const v2, 0x7f0d012e

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, La/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->h:Landroid/widget/CheckBox;

    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->j:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "editBeforeReplace"

    iget-object v4, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->e:Ljava/lang/String;

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-interface {v2, v3, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_3
    const v1, 0x7f08008d

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v11}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->setContentView(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)V
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a:Lcom/gmail/heagoo/apkeditor/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d01de

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d022c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->j:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/gmail/heagoo/common/r;->a()Landroid/text/InputFilter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/gmail/heagoo/apkeditor/aw;

    invoke-direct {v3, p0, v2, v0}, Lcom/gmail/heagoo/apkeditor/aw;-><init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;Landroid/widget/EditText;Ljava/lang/String;)V

    const v0, 0x104000a

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/ax;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/ax;-><init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)V

    const/high16 p0, 0x1040000

    invoke-virtual {v1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->i:Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;->isInterestedFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)V
    .registers 7

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a:Lcom/gmail/heagoo/apkeditor/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d01dd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d022b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->j:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/gmail/heagoo/common/r;->a()Landroid/text/InputFilter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/gmail/heagoo/apkeditor/au;

    invoke-direct {v3, p0, v2, v0}, Lcom/gmail/heagoo/apkeditor/au;-><init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;Landroid/widget/EditText;Ljava/lang/String;)V

    const v0, 0x104000a

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/av;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/av;-><init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)V

    const/high16 p0, 0x1040000

    invoke-virtual {v1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastDirectory"

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_lastDirectory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic c(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Lcom/gmail/heagoo/apkeditor/ci;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a:Lcom/gmail/heagoo/apkeditor/ci;

    return-object p0
.end method

.method static synthetic e(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Z
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->h:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->i:Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08008d

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->dismiss()V

    return-void

    :cond_0
    const v0, 0x7f080099

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a:Lcom/gmail/heagoo/apkeditor/ci;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00ef

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->i:Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->b:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;->getConfirmMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0328

    new-instance v3, Lcom/gmail/heagoo/apkeditor/az;

    invoke-direct {v3, p0, p1}, Lcom/gmail/heagoo/apkeditor/az;-><init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->i:Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->h:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;->fileSelectedInDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/common/c;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p1, Lcom/gmail/heagoo/common/c;->b:Z

    if-eqz p3, :cond_2

    iget-object p3, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    const-string p4, ".."

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a:Lcom/gmail/heagoo/apkeditor/ci;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-boolean p3, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->c:Z

    if-nez p3, :cond_4

    iget-object p3, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->h:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p3

    iget-object p4, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->i:Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;

    iget-object p5, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->b:Ljava/lang/String;

    invoke-interface {p4, p1, p5, p3}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;->fileSelectedInDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p2}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->j:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "editBeforeReplace"

    iget-object p4, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->e:Ljava/lang/String;

    if-eqz p4, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->e:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "_"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->dismiss()V

    :cond_4
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6

    new-instance p2, Lcom/gmail/heagoo/apkeditor/ar;

    invoke-direct {p2, p0}, Lcom/gmail/heagoo/apkeditor/ar;-><init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const/4 p1, 0x0

    return p1
.end method
