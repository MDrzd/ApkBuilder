.class public final Lcom/a/a/a;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/SeekBar;

.field private d:Landroid/widget/SeekBar;

.field private e:Landroid/widget/SeekBar;

.field private f:Landroid/widget/SeekBar;

.field private g:Landroid/widget/EditText;

.field private h:Lcom/a/a/e;

.field private i:I

.field private j:I

.field private k:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/a/a/a;->b:Landroid/view/View;

    iput-object p1, p0, Lcom/a/a/a;->c:Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/a/a/a;->d:Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/a/a/a;->e:Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/a/a/a;->f:Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/a/a/a;->g:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/a/a/a;->h:Lcom/a/a/e;

    new-instance p1, Lcom/a/a/c;

    invoke-direct {p1, p0}, Lcom/a/a/c;-><init>(Lcom/a/a/a;)V

    iput-object p1, p0, Lcom/a/a/a;->a:Landroid/os/Handler;

    new-instance p1, Lcom/a/a/d;

    invoke-direct {p1, p0}, Lcom/a/a/d;-><init>(Lcom/a/a/a;)V

    iput-object p1, p0, Lcom/a/a/a;->k:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/a/a/a;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :goto_0
    const v0, 0x7f0a0056

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0801ba

    invoke-virtual {p0, p1}, Lcom/a/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/a;->b:Landroid/view/View;

    const p1, 0x7f080092

    invoke-virtual {p0, p1}, Lcom/a/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/a/a/a;->g:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/a/a/a;->g:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p1, Lcom/a/a/b;

    invoke-direct {p1, p0}, Lcom/a/a/b;-><init>(Lcom/a/a/a;)V

    iget-object v0, p0, Lcom/a/a/a;->g:Landroid/widget/EditText;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance p1, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x8

    invoke-direct {p1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const p1, 0x7f080172

    invoke-virtual {p0, p1}, Lcom/a/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/a/a/a;->c:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/a/a/a;->c:Landroid/widget/SeekBar;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/a/a/a;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/a/a/a;->k:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f0800e8

    invoke-virtual {p0, p1}, Lcom/a/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/a/a/a;->e:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/a/a/a;->e:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/a/a/a;->e:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/a/a/a;->k:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f08003c

    invoke-virtual {p0, p1}, Lcom/a/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/a/a/a;->d:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/a/a/a;->d:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/a/a/a;->d:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/a/a/a;->k:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f080029

    invoke-virtual {p0, p1}, Lcom/a/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/a/a/a;->f:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/a/a/a;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/a/a/a;->f:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/a/a/a;->k:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/a/a/a;)I
    .registers 1

    iget p0, p0, Lcom/a/a/a;->i:I

    return p0
.end method

.method static synthetic a(Lcom/a/a/a;I)V
    .registers 3

    iput p1, p0, Lcom/a/a/a;->j:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/a/a/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/a/a/a;->g:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method static synthetic b(Lcom/a/a/a;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/a/a/a;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/a/a/a;)Lcom/a/a/e;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 5

    iget-object v0, p0, Lcom/a/a/a;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/a;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/a/a/a;->e:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/a/a/a;->d:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/a/a/a;->c:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/a/a/a;->e:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/a/a/a;->d:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/a/a/a;->f:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    :try_start_0
    iget-object p1, p0, Lcom/a/a/a;->g:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    iget v2, p0, Lcom/a/a/a;->j:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x6

    if-gt p1, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, -0x1000000

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/a/a/a;->i:I

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/a/a/a;->a(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "superState"

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "color"

    invoke-virtual {p0}, Lcom/a/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
