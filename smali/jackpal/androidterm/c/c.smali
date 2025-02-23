.class public final Ljackpal/androidterm/c/c;
.super Ljava/lang/Object;


# static fields
.field private static B:[[I

.field private static C:[I

.field private static D:[I


# instance fields
.field private A:Z

.field private a:Landroid/content/SharedPreferences;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Ljackpal/androidterm/c/c;->B:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    sput-object v0, Ljackpal/androidterm/c/c;->C:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    sput-object v0, Ljackpal/androidterm/c/c;->D:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1000000
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1000000
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0xcbb143
    .end array-data

    :array_3
    .array-data 4
        -0xff0100
        -0x1000000
    .end array-data

    :array_4
    .array-data 4
        -0x49af
        -0x1000000
    .end array-data

    :array_5
    .array-data 4
        -0xfeed
        -0x1000000
    .end array-data

    :array_6
    .array-data 4
        -0xcc4a1b
        -0x1000000
    .end array-data

    :array_7
    .array-data 4
        -0x9a847d
        -0x2091d
    .end array-data

    :array_8
    .array-data 4
        -0x7c6b6a
        -0xffd4ca
    .end array-data

    :array_9
    .array-data 4
        -0x555556
        -0x1000000
    .end array-data

    :array_a
    .array-data 4
        0x17
        0x4d
        0x39
        0x3a
        0x18
        0x19
        0x1b
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x17
        0x4d
        0x39
        0x3a
        0x18
        0x19
        0x1b
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/c/c;->w:Ljava/lang/String;

    iput-object v0, p0, Ljackpal/androidterm/c/c;->x:Ljava/lang/String;

    const v0, 0x7f0d0239

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->b:I

    const v0, 0x7f090004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->c:I

    const v0, 0x7f090005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->d:I

    const v0, 0x7f0d0233

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->e:I

    const v0, 0x7f0d0232

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->f:I

    const v0, 0x7f0d0235

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->g:I

    const v0, 0x7f0d0230

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->h:I

    const v0, 0x7f040009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/c/c;->i:Z

    const v0, 0x7f0d022f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->j:I

    const v0, 0x7f0d0231

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->k:I

    const v0, 0x7f0d0234

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->l:I

    const v0, 0x7f0d0236

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/c/c;->m:I

    const v0, 0x7f0d0238

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/c/c;->o:Ljava/lang/String;

    iget-object v0, p0, Ljackpal/androidterm/c/c;->o:Ljava/lang/String;

    iput-object v0, p0, Ljackpal/androidterm/c/c;->n:Ljava/lang/String;

    const v0, 0x7f0d0237

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/c/c;->p:Ljava/lang/String;

    const v0, 0x7f0d023a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/c/c;->q:Ljava/lang/String;

    const v0, 0x7f040005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/c/c;->r:Z

    const v0, 0x7f04000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/c/c;->s:Z

    const v0, 0x7f040006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/c/c;->t:Z

    const v0, 0x7f040003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/c/c;->u:Z

    const v0, 0x7f040004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/c/c;->y:Z

    const v0, 0x7f040007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/c/c;->z:Z

    const v0, 0x7f040008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Ljackpal/androidterm/c/c;->A:Z

    invoke-virtual {p0, p2}, Ljackpal/androidterm/c/c;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private a(Ljava/lang/String;II)I
    .registers 6

    :try_start_0
    iget-object v0, p0, Ljackpal/androidterm/c/c;->a:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, p2

    :goto_0
    const/4 p2, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/c/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/c/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/c/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/SharedPreferences;)V
    .registers 5

    iput-object p1, p0, Ljackpal/androidterm/c/c;->a:Landroid/content/SharedPreferences;

    const-string p1, "statusbar"

    iget v0, p0, Ljackpal/androidterm/c/c;->b:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/c/c;->b:I

    const-string p1, "actionbar"

    iget v0, p0, Ljackpal/androidterm/c/c;->c:I

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v2}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/c/c;->c:I

    const-string p1, "orientation"

    iget v0, p0, Ljackpal/androidterm/c/c;->d:I

    invoke-direct {p0, p1, v0, v2}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/c/c;->d:I

    const-string p1, "fontsize"

    iget v0, p0, Ljackpal/androidterm/c/c;->g:I

    const/16 v2, 0x120

    invoke-direct {p0, p1, v0, v2}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/c/c;->g:I

    const-string p1, "color"

    iget v0, p0, Ljackpal/androidterm/c/c;->h:I

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v2}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/c/c;->h:I

    const-string p1, "utf8_by_default"

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->i:Z

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljackpal/androidterm/c/c;->i:Z

    const-string p1, "backaction"

    iget v0, p0, Ljackpal/androidterm/c/c;->j:I

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/c/c;->j:I

    const-string p1, "controlkey"

    iget v0, p0, Ljackpal/androidterm/c/c;->k:I

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v2}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/c/c;->k:I

    const-string p1, "fnkey"

    iget v0, p0, Ljackpal/androidterm/c/c;->l:I

    invoke-direct {p0, p1, v0, v2}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/c/c;->l:I

    const-string p1, "ime"

    iget v0, p0, Ljackpal/androidterm/c/c;->m:I

    invoke-direct {p0, p1, v0, v1}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/c/c;->m:I

    const-string p1, "shell"

    iget-object v0, p0, Ljackpal/androidterm/c/c;->n:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljackpal/androidterm/c/c;->n:Ljava/lang/String;

    const-string p1, "initialcommand"

    iget-object v0, p0, Ljackpal/androidterm/c/c;->p:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljackpal/androidterm/c/c;->p:Ljava/lang/String;

    const-string p1, "termtype"

    iget-object v0, p0, Ljackpal/androidterm/c/c;->q:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljackpal/androidterm/c/c;->q:Ljava/lang/String;

    const-string p1, "close_window_on_process_exit"

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->r:Z

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljackpal/androidterm/c/c;->r:Z

    const-string p1, "verify_path"

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->s:Z

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljackpal/androidterm/c/c;->s:Z

    const-string p1, "do_path_extensions"

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->t:Z

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljackpal/androidterm/c/c;->t:Z

    const-string p1, "allow_prepend_path"

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->u:Z

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljackpal/androidterm/c/c;->u:Z

    const-string p1, "home_path"

    iget-object v0, p0, Ljackpal/androidterm/c/c;->v:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljackpal/androidterm/c/c;->v:Ljava/lang/String;

    const-string p1, "alt_sends_esc"

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->y:Z

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljackpal/androidterm/c/c;->y:Z

    const-string p1, "mouse_tracking"

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->z:Z

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljackpal/androidterm/c/c;->z:Z

    const-string p1, "use_keyboard_shortcuts"

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->A:Z

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/c/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljackpal/androidterm/c/c;->A:Z

    const/4 p1, 0x0

    iput-object p1, p0, Ljackpal/androidterm/c/c;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/c/c;->w:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .registers 2

    iget v0, p0, Ljackpal/androidterm/c/c;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/c/c;->c:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/c/c;->x:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/c/c;->d:I

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/c/c;->g:I

    return v0
.end method

.method public final e()[I
    .registers 3

    sget-object v0, Ljackpal/androidterm/c/c;->B:[[I

    iget v1, p0, Ljackpal/androidterm/c/c;->h:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->i:Z

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/c/c;->j:I

    return v0
.end method

.method public final h()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->y:Z

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->z:Z

    return v0
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->A:Z

    return v0
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/c/c;->j:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x9

    return v0

    :pswitch_1
    const/16 v0, 0x1b

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/c/c;->k:I

    return v0
.end method

.method public final m()I
    .registers 2

    iget v0, p0, Ljackpal/androidterm/c/c;->l:I

    return v0
.end method

.method public final n()I
    .registers 3

    sget-object v0, Ljackpal/androidterm/c/c;->C:[I

    iget v1, p0, Ljackpal/androidterm/c/c;->k:I

    aget v0, v0, v1

    return v0
.end method

.method public final o()I
    .registers 3

    sget-object v0, Ljackpal/androidterm/c/c;->D:[I

    iget v1, p0, Ljackpal/androidterm/c/c;->l:I

    aget v0, v0, v1

    return v0
.end method

.method public final p()Z
    .registers 2

    iget v0, p0, Ljackpal/androidterm/c/c;->m:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/c/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/c/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/c/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/c/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->r:Z

    return v0
.end method

.method public final v()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->s:Z

    return v0
.end method

.method public final w()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->t:Z

    return v0
.end method

.method public final x()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/c/c;->u:Z

    return v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/c/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/c/c;->x:Ljava/lang/String;

    return-object v0
.end method
